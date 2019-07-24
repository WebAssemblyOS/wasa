import { filetype, filesize } from "../wasi_types";

/**
 * Portable information about a file
 */
export class FileStat {
  file_type: filetype;
  file_size: filesize;
  access_time: f64;
  modification_time: f64;
  creation_time: f64;

  constructor(st_buf: usize) {
    this.file_type = load<u8>(st_buf + 16);
    this.file_size = load<u64>(st_buf + 24);
    this.access_time = (load<u64>(st_buf + 32) as f64) / 1e9;
    this.modification_time = (load<u64>(st_buf + 40) as f64) / 1e9;
    this.creation_time = (load<u64>(st_buf + 48) as f64) / 1e9;
  }
}
