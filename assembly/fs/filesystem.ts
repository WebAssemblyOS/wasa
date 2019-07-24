/// <reference path="../../node_modules/assemblyscript/std/assembly/rt/index.d.ts" />

import { Descriptor, FileStat, WASAError } from "..";

/**
 * A class to access a filesystem
 */
export class FileSystem {
  /**
   * Open a path
   * @path path
   * @flags r, r+, w, wx, w+ or xw+
   * @returns a descriptor
   */
  static open(path: string, flags: string = "r"): Descriptor | null {
    let dirfd = this.dirfdForPath(path);
    let fd_lookup_flags = lookupflags.SYMLINK_FOLLOW;
    let fd_oflags: u16 = 0;
    let fd_rights: u64 = 0;
    if (flags === "r") {
      fd_rights =
        rights.FD_READ |
        rights.FD_SEEK |
        rights.FD_TELL |
        rights.FD_FILESTAT_GET |
        rights.FD_READDIR;
    } else if (flags === "r+") {
      fd_rights =
        rights.FD_READ |
        rights.FD_SEEK |
        rights.FD_TELL |
        rights.FD_FILESTAT_GET |
        rights.FD_WRITE |
        rights.FD_SEEK |
        rights.FD_TELL |
        rights.FD_FILESTAT_GET |
        rights.PATH_CREATE_FILE;
    } else if (flags === "w") {
      fd_oflags = oflags.CREAT | oflags.TRUNC;
      fd_rights =
        rights.FD_WRITE |
        rights.FD_SEEK |
        rights.FD_TELL |
        rights.FD_FILESTAT_GET |
        rights.PATH_CREATE_FILE;
    } else if (flags === "wx") {
      fd_oflags = oflags.CREAT | oflags.TRUNC | oflags.EXCL;
      fd_rights =
        rights.FD_WRITE |
        rights.FD_SEEK |
        rights.FD_TELL |
        rights.FD_FILESTAT_GET |
        rights.PATH_CREATE_FILE;
    } else if (flags === "w+") {
      fd_oflags = oflags.CREAT | oflags.TRUNC;
      fd_rights =
        rights.FD_READ |
        rights.FD_SEEK |
        rights.FD_TELL |
        rights.FD_FILESTAT_GET |
        rights.FD_WRITE |
        rights.FD_SEEK |
        rights.FD_TELL |
        rights.FD_FILESTAT_GET |
        rights.PATH_CREATE_FILE;
    } else if (flags === "xw+") {
      fd_oflags = oflags.CREAT | oflags.TRUNC | oflags.EXCL;
      fd_rights =
        rights.FD_READ |
        rights.FD_SEEK |
        rights.FD_TELL |
        rights.FD_FILESTAT_GET |
        rights.FD_WRITE |
        rights.FD_SEEK |
        rights.FD_TELL |
        rights.FD_FILESTAT_GET |
        rights.PATH_CREATE_FILE;
    } else {
      return null;
    }
    let fd_rights_inherited = fd_rights;
    let fd_flags: fdflags = 0;
    let path_utf8_len: usize = String.UTF8.byteLength(path);
    let path_utf8 = changetype<usize>(String.UTF8.encode(path));
    let fd_buf = changetype<usize>(new ArrayBuffer(sizeof<u32>()));
    let res = path_open(
      dirfd as fd,
      fd_lookup_flags,
      path_utf8,
      path_utf8_len,
      fd_oflags,
      fd_rights,
      fd_rights_inherited,
      fd_flags,
      fd_buf
    );
    if (res !== errno.SUCCESS) {
      return null;
    }
    let fd = load<u32>(fd_buf);

    return new Descriptor(fd);
  }

  /**
   * Create a new directory
   * @path path
   * @returns `true` on success, `false` on failure
   */
  static mkdir(path: string): bool {
    let dirfd = this.dirfdForPath(path);
    let path_utf8_len: usize = String.UTF8.byteLength(path);
    let path_utf8 = changetype<usize>(String.UTF8.encode(path));
    let res = path_create_directory(dirfd, path_utf8, path_utf8_len);

    return res === errno.SUCCESS;
  }

  /**
   * Check if a file exists at a given path
   * @path path
   * @returns `true` on success, `false` on failure
   */
  static exists(path: string): bool {
    let dirfd = this.dirfdForPath(path);
    let path_utf8_len: usize = String.UTF8.byteLength(path);
    let path_utf8 = changetype<usize>(String.UTF8.encode(path));
    let fd_lookup_flags = lookupflags.SYMLINK_FOLLOW;
    let st_buf = changetype<usize>(new ArrayBuffer(56));
    let res = path_filestat_get(
      dirfd,
      fd_lookup_flags,
      path_utf8,
      path_utf8_len,
      changetype<filestat>(st_buf)
    );

    return res === errno.SUCCESS;
  }

  /**
   * Create a hard link
   * @old_path old path
   * @new_path new path
   * @returns `true` on success, `false` on failure
   */
  static link(old_path: string, new_path: string): bool {
    let old_dirfd = this.dirfdForPath(old_path);
    let old_path_utf8_len: usize = String.UTF8.byteLength(old_path);
    let old_path_utf8 = changetype<usize>(String.UTF8.encode(old_path));
    let new_dirfd = this.dirfdForPath(new_path);
    let new_path_utf8_len: usize = String.UTF8.byteLength(new_path);
    let new_path_utf8 = changetype<usize>(String.UTF8.encode(new_path));
    let fd_lookup_flags = lookupflags.SYMLINK_FOLLOW;
    let res = path_link(
      old_dirfd,
      fd_lookup_flags,
      old_path_utf8,
      old_path_utf8_len,
      new_dirfd,
      new_path_utf8,
      new_path_utf8_len
    );

    return res === errno.SUCCESS;
  }

  /**
   * Create a symbolic link
   * @old_path old path
   * @new_path new path
   * @returns `true` on success, `false` on failure
   */
  static symlink(old_path: string, new_path: string): bool {
    let old_path_utf8_len: usize = String.UTF8.byteLength(old_path);
    let old_path_utf8 = changetype<usize>(String.UTF8.encode(old_path));
    let new_dirfd = this.dirfdForPath(new_path);
    let new_path_utf8_len: usize = String.UTF8.byteLength(new_path);
    let new_path_utf8 = changetype<usize>(String.UTF8.encode(new_path));
    let res = path_symlink(
      old_path_utf8,
      old_path_utf8_len,
      new_dirfd,
      new_path_utf8,
      new_path_utf8_len
    );

    return res === errno.SUCCESS;
  }

  /**
   * Unlink a file
   * @path path
   * @returns `true` on success, `false` on failure
   */
  static unlink(path: string): bool {
    let dirfd = this.dirfdForPath(path);
    let path_utf8_len: usize = String.UTF8.byteLength(path);
    let path_utf8 = changetype<usize>(String.UTF8.encode(path));
    let res = path_unlink_file(dirfd, path_utf8, path_utf8_len);

    return res === errno.SUCCESS;
  }

  /**
   * Remove a directory
   * @path path
   * @returns `true` on success, `false` on failure
   */
  static rmdir(path: string): bool {
    let dirfd = this.dirfdForPath(path);
    let path_utf8_len: usize = String.UTF8.byteLength(path);
    let path_utf8 = changetype<usize>(String.UTF8.encode(path));
    let res = path_remove_directory(dirfd, path_utf8, path_utf8_len);

    return res === errno.SUCCESS;
  }

  /**
   * Retrieve information about a file
   * @path path
   * @returns a `FileStat` object
   */
  static stat(path: string): FileStat {
    let dirfd = this.dirfdForPath(path);
    let path_utf8_len: usize = String.UTF8.byteLength(path);
    let path_utf8 = changetype<usize>(String.UTF8.encode(path));
    let fd_lookup_flags = lookupflags.SYMLINK_FOLLOW;
    let st_buf = changetype<usize>(new ArrayBuffer(56));
    if (
      path_filestat_get(
        dirfd,
        fd_lookup_flags,
        path_utf8,
        path_utf8_len,
        changetype<filestat>(st_buf)
      ) !== errno.SUCCESS
    ) {
      throw new WASAError("Unable to get the file information");
    }
    return new FileStat(st_buf);
  }

  /**
   * Retrieve information about a file or a symbolic link
   * @path path
   * @returns a `FileStat` object
   */
  static lstat(path: string): FileStat {
    let dirfd = this.dirfdForPath(path);
    let path_utf8_len: usize = String.UTF8.byteLength(path);
    let path_utf8 = changetype<usize>(String.UTF8.encode(path));
    let fd_lookup_flags = 0;
    let st_buf = changetype<usize>(new ArrayBuffer(56));
    if (
      path_filestat_get(
        dirfd,
        fd_lookup_flags,
        path_utf8,
        path_utf8_len,
        changetype<filestat>(st_buf)
      ) !== errno.SUCCESS
    ) {
      throw new WASAError("Unable to get the file information");
    }
    return new FileStat(st_buf);
  }

  /**
   * Rename a file
   * @old_path old path
   * @new_path new path
   * @returns `true` on success, `false` on failure
   */
  static rename(old_path: string, new_path: string): bool {
    let old_dirfd = this.dirfdForPath(old_path);
    let old_path_utf8_len: usize = String.UTF8.byteLength(old_path);
    let old_path_utf8 = changetype<usize>(String.UTF8.encode(old_path));
    let new_dirfd = this.dirfdForPath(new_path);
    let new_path_utf8_len: usize = String.UTF8.byteLength(new_path);
    let new_path_utf8 = changetype<usize>(String.UTF8.encode(new_path));
    let res = path_rename(
      old_dirfd,
      old_path_utf8,
      old_path_utf8_len,
      new_dirfd,
      new_path_utf8,
      new_path_utf8_len
    );

    return res === errno.SUCCESS;
  }

  /**
   * Get the content of a directory
   * @param path the directory path
   * @returns An array of file names
   */
  static readdir(path: string): Array<string> | null {
    let fd = this.open(path, "r");
    if (fd === null) {
      return null;
    }
    let out = new Array<string>();
    let buf = null;
    let buf_size = 4096;
    let buf_used_p = changetype<usize>(new ArrayBuffer(4));
    let buf_used = 0;
    for (;;) {
      buf = __alloc(buf_size, 0);
      if (
        fd_readdir(fd.rawfd, buf, buf_size, 0 as dircookie, buf_used_p) !==
        errno.SUCCESS
      ) {
        fd.close();
      }
      buf_used = load<u32>(buf_used_p);
      if (buf_used < buf_size) {
        break;
      }
      buf_size <<= 1;
      __free(buf);
    }
    let offset = 0;
    while (offset < buf_used) {
      offset += 16;
      let name_len = load<u32>(buf + offset);
      offset += 8;
      if (offset + name_len > buf_used) {
        return null;
      }
      let name = String.UTF8.decodeUnsafe(buf + offset, name_len);
      out.push(name);
      offset += name_len;
    }
    __free(buf);
    fd.close();

    return out;
  }

  protected static dirfdForPath(path: string): fd {
    return 3;
  }
}
