import { fd, errno, iovec } from "../wasi_types";
import { WASAError, FileStat } from "..";
import { ArrayBuffer } from "arraybuffer";
import { Array } from "array";
/**
 * A descriptor, that doesn't necessarily have to represent a file
 */
export class Descriptor {
  /**
   * An invalid file descriptor, that can represent an error
   */
  static Invalid(): Descriptor {
    return new Descriptor(-1);
  }

  /**
   * The standard input
   */
  static Stdin(): Descriptor {
    return new Descriptor(0);
  }

  /**
   * The standard output
   */
  static Stdout(): Descriptor {
    return new Descriptor(1);
  }

  /**
   * The standard error
   */
  static Stderr(): Descriptor {
    return new Descriptor(2);
  }

  /**
   * Build a new descriptor from a raw WASI file descriptor
   * @param rawfd a raw file descriptor
   */
  constructor(readonly rawfd: fd) {}

  /**
   * Hint at how the data accessible via the descriptor will be used
   * @offset offset
   * @len length
   * @advice `advice.{NORMAL, SEQUENTIAL, RANDOM, WILLNEED, DONTNEED, NOREUSE}`
   * @returns `true` on success, `false` on error
   */
  advise(offset: u64, len: u64, advice: advice): bool {
    return fd_advise(this.rawfd, offset, len, advice) === errno.SUCCESS;
  }

  /**
   * Preallocate data
   * @param offset where to start preallocating data in the file
   * @param len bytes to preallocate
   * @returns `true` on success, `false` on error
   */
  allocate(offset: u64, len: u64): bool {
    return fd_allocate(this.rawfd, offset, len) === errno.SUCCESS;
  }

  /**
   * Wait for the data to be written
   * @returns `true` on success, `false` on error
   */
  fdatasync(): bool {
    return fd_datasync(this.rawfd) === errno.SUCCESS;
  }

  /**
   * Wait for the data and metadata to be written
   * @returns `true` on success, `false` on error
   */
  fsync(): bool {
    return fd_sync(this.rawfd) === errno.SUCCESS;
  }

  /**
   * Return the file type
   */
  fileType(): filetype {
    let st_buf = changetype<usize>(new ArrayBuffer(24));
    if (
      fd_fdstat_get(this.rawfd, changetype<fdstat>(st_buf)) !== errno.SUCCESS
    ) {
      throw new WASAError("Unable to get the file type");
    }
    let file_type: u8 = load<u8>(st_buf);

    return file_type;
  }

  /**
   * Set WASI flags for that descriptor
   * @params flags: one or more of `fdflags.{APPEND, DSYNC, NONBLOCK, RSYNC, SYNC}`
   * @returns `true` on success, `false` on error
   */
  setFlags(flags: fdflags): bool {
    return fd_fdstat_set_flags(this.rawfd, flags) === errno.SUCCESS;
  }

  /**
   * Retrieve information about a descriptor
   * @returns a `FileStat` object`
   */
  stat(): FileStat {
    let st_buf = changetype<usize>(new ArrayBuffer(56));
    if (
      fd_filestat_get(this.rawfd, changetype<filestat>(st_buf)) !==
      errno.SUCCESS
    ) {
      throw new WASAError("Unable to get the file information");
    }
    return new FileStat(st_buf);
  }

  /**
   * Change the size of a file
   * @param size new size
   * @returns `true` on success, `false` on error
   */
  ftruncate(size: u64 = 0): bool {
    return fd_filestat_set_size(this.rawfd, size) === errno.SUCCESS;
  }

  /**
   * Update the access time
   * @ts timestamp in seconds
   * @returns `true` on success, `false` on error
   */
  fatime(ts: f64): bool {
    return (
      fd_filestat_set_times(
        this.rawfd,
        (ts * 1e9) as u64,
        0,
        fstflags.SET_ATIM
      ) === errno.SUCCESS
    );
  }

  /**
   * Update the modification time
   * @ts timestamp in seconds
   * @returns `true` on success, `false` on error
   */
  fmtime(ts: f64): bool {
    return (
      fd_filestat_set_times(
        this.rawfd,
        0,
        (ts * 1e9) as u64,
        fstflags.SET_MTIM
      ) === errno.SUCCESS
    );
  }

  /**
   * Update both the access and the modification times
   * @atime timestamp in seconds
   * @mtime timestamp in seconds
   * @returns `true` on success, `false` on error
   */
  futimes(atime: f64, mtime: f64): bool {
    return (
      fd_filestat_set_times(
        this.rawfd,
        (atime * 1e9) as u64,
        (mtime * 1e9) as u64,
        fstflags.SET_ATIM | fstflags.SET_ATIM
      ) === errno.SUCCESS
    );
  }

  /**
   * Update the timestamp of the object represented by the descriptor
   * @returns `true` on success, `false` on error
   */
  touch(): bool {
    return (
      fd_filestat_set_times(
        this.rawfd,
        0,
        0,
        fstflags.SET_ATIM_NOW | fstflags.SET_MTIM_NOW
      ) === errno.SUCCESS
    );
  }

  /**
   * Return the directory associated to that descriptor
   */
  dirName(): String {
    let path_max: usize = 4096;
    for (;;) {
      let path_buf = changetype<usize>(new ArrayBuffer(path_max));
      let ret = fd_prestat_dir_name(this.rawfd, path_buf, path_max);
      if (ret === errno.NAMETOOLONG) {
        path_max = path_max * 2;
        continue;
      }
      let path_len = 0;
      while (load<u8>(path_buf + path_len) !== 0) {
        path_len++;
      }
      return String.UTF8.decodeUnsafe(path_buf, path_len);
    }
  }

  /**
   * Close a file descriptor
   */
  close(): void {
    fd_close(this.rawfd);
  }

  /**
   * Write data to a file descriptor
   * @param data data
   */
  write(data: ArrayBuffer, length: i32 = 0): void {
    
    let iov = changetype<usize>(new ArrayBuffer(2 * sizeof<usize>()));
    store<u32>(iov, changetype<usize>(data));
    store<u32>(iov + sizeof<usize>(), data.byteLength);
    // (iov as iovec).buf = buf;
    // iov.buf_len = data.byteLength;
    let written_ptr = changetype<usize>(new ArrayBuffer(sizeof<usize>()));
    if (fd_write(this.rawfd, iov, 1, written_ptr) != errno.SUCCESS) {
      throw new Error("Writing failed");
    }
    let res  = load<usize>(written_ptr)
    let iovec = changetype<iovec>(iov);
    //@ts-ignore is toString
    let strBuf = String.UTF8.encode(" "+res.toString()+ "   !");
    iovec.buf = changetype<usize>(strBuf);
    iovec.buf_len = strBuf.byteLength
    fd_write(this.rawfd, iov, 1, written_ptr)
    // wasi_abort(res.toString());
  }

  /**
   * Write data to a file descriptor
   * @param data data
   */
  writeArray(data: Array<u8>): void {
    //@ts-ignore
    this.write(data.buffer, data.length);
  }

  /**
   * Write a string to a file descriptor, after encoding it to UTF8
   * @param s string
   * @param newline `true` to add a newline after the string
   */
  writeString(s: string, newline: bool = false): void {
    // let str = newline ? s + "\n" : s;
    let buf = String.UTF8.encode(s, newline);
    if (newline) {
      store<u8>(changetype<usize>(buf) + buf.byteLength - 1, 10);
    }
    let array = new Array<u8>(buf.byteLength);
    memory.copy(changetype<usize>(array.buffer), changetype<usize>(buf), buf.byteLength);
    this.writeArray(array);
    // this.write(buf, String.UTF8.byteLength(s) + (newline ? 1 : 0));
  }

  /**
   * Write a string to a file descriptor, after encoding it to UTF8, with a newline
   * @param s string
   */
  writeStringLn(s: string): void {
    this.writeString(s, true);
  }

  /**
   * Read data from a file descriptor
   * @param data existing array to push data to
   * @param chunk_size chunk size (default: 4096)
   */
  read(data: Array<u8> = new Array<u8>(), chunk_size: usize = 4096): Array<u8> | null {
    let data_partial_len = chunk_size;
    let data_partial = changetype<usize>(new ArrayBuffer(data_partial_len));
    let iov = changetype<usize>(new ArrayBuffer(2 * sizeof<usize>()));
    store<u32>(iov, data_partial);
    store<u32>(iov + sizeof<usize>(), data_partial_len);
    let read_ptr = changetype<usize>(new ArrayBuffer(sizeof<usize>()));
    fd_read(this.rawfd, iov, 1, read_ptr);
    let read = load<usize>(read_ptr);
    if (read > 0) {
      for (let i: usize = 0; i < read; i++) {
        data.push(load<u8>(data_partial + i));
      }
    }
    if (read <= 0) {
      return null;
    }
    return data;
  }

  /**
   * Read from a file descriptor until the end of the stream
   * @param data existing array to push data to
   * @param chunk_size chunk size (default: 4096)
   */
  readAll(data: Array<u8> = new Array<u8>(), chunk_size: usize = 4096): Array<u8> | null {
    let data_partial_len = chunk_size;
    let data_partial = changetype<usize>(new ArrayBuffer(data_partial_len));
    let iov = changetype<usize>(new ArrayBuffer(2 * sizeof<usize>()));
    store<u32>(iov, data_partial);
    store<u32>(iov + sizeof<usize>(), data_partial_len);
    let read_ptr = changetype<usize>(new ArrayBuffer(sizeof<usize>()));
    let read: usize = 0;
    for (;;) {
      if (fd_read(this.rawfd, iov, 1, read_ptr) !== errno.SUCCESS) {
        break;
      }
      read = load<usize>(read_ptr);
      if (read <= 0) {
        break;
      }
      for (let i: usize = 0; i < read; i++) {
        data.push(load<u8>(data_partial + i));
      }
    }
    if (read < 0) {
      return null;
    }
    return data;
  }

  /**
   * Read an UTF8 string from a file descriptor, convert it to a native string
   * @param chunk_size chunk size (default: 4096)
   */
  readString(chunk_size: usize = 4096): string | null {
    let s_utf8 = this.readAll();
    if (s_utf8 === null) {
      return null;
    }
    let s_utf8_len = s_utf8.length;
    let s_utf8_buf = changetype<usize>(new ArrayBuffer(s_utf8_len));
    for (let i = 0; i < s_utf8_len; i++) {
      store<u8>(s_utf8_buf + i, s_utf8[i]);
    }
    let s = String.UTF8.decodeUnsafe(s_utf8_buf, s_utf8.length);

    return s;
  }

  /**
   * Seek into a stream
   * @off offset
   * @w the position relative to which to set the offset of the file descriptor.
   */
  seek(off: u64, w: whence): bool {
    let fodder = changetype<usize>(new ArrayBuffer(8));
    let res = fd_seek(this.rawfd, off, w, fodder);

    return res === errno.SUCCESS;
  }

  /**
   * Return the current offset in the stream
   * @returns offset
   */
  tell(): u64 {
    let buf_off = changetype<usize>(new ArrayBuffer(8));
    let res = fd_tell(this.rawfd, buf_off);
    if (res !== errno.SUCCESS) {
      //@ts-ignore
      abort();
    }
    return load<u64>(buf_off);
  }
}
