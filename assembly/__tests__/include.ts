import { errno, fd, ptr, struct, iovec } from "../wasi_types";
import { Array } from "array"

@global
export class File {
    offset: usize;
    data: Array<u8>;

    constructor(size: usize = 1028, offset: usize = 0){
        this.offset = <usize> Math.min(offset, size);
        this.data = new Array<u8>(size);
    }

    write(data: usize, length: usize): usize {
        if (this.offset == this.data.length) {
            this.data.length += length;
        }
        memory.copy(this.data.dataStart + this.offset, data, length);
        this.offset += length;
        return length;
    }
}

let fs = new Map<fd, File>();

/** Write to a file descriptor. */
//@ts-ignore
@global
export function fd_write(
    /** Input: The file descriptor to which to write data. */
    fd: fd,
    /** Input: List of scatter/gather vectors from which to retrieve data. */
    iovs: ptr<struct<iovec>>,
    /** Input: List of scatter/gather vectors from which to retrieve data. */
    iovs_len: usize,
    /** Output: The number of bytes written. */
    nwritten: ptr<usize>
  ): errno{
    if (!fs.has(fd)){
        fs.set(fd, new File());
    }
    let file = fs.get(fd);
    let bytesWritten: usize = 0;
    for (let i: usize = 0; i < iovs_len; i++) {
        let iov = changetype<iovec>(iovs + (i * offsetof<iovec>()));
        bytesWritten += file.write(iov.buf, iov.buf_len)
    }
    store<usize>(nwritten, bytesWritten)
    return errno.SUCCESS
  }
//@ts-ignore
@global
export function getfs(): Map<fd, File> {
    return fs;
}