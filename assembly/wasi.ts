import {fd, iovec, errno} from "./wasi_types";
import * as Wasi from "bindings/wasi_unstable"

// see: https://wasi.dev
/* tslint:disable:max-line-length */

// helper types to be more explicit
type char = u8;
type ptr<T> = usize; // all pointers are usize'd
type struct<T> = T;  // structs are references already in AS

//@ts-ignore decorators are valid here
@inline
@global
/** Read command-line argument data. */
export function args_get(
  /** Input: Pointer to a buffer to write the argument pointers. */
  argv: ptr<ptr<char>>,
  /** Input: Pointer to a buffer to write the argument string data. */
  argv_buf: ptr<char>
): errno {
    return Wasi.args_get(argv, argv_buf);
}

// /** Return command-line argument data sizes. */
// export declare function args_sizes_get(
//   /** Output: Number of arguments. */
//   argc: ptr<usize>,
//   /** Output: Size of the argument string data. */
//   argv_buf_size: ptr<usize>
// ): errno;

// /** Return the resolution of a clock. */
// export declare function clock_res_get(
//   /** Input: The clock for which to return the resolution. */
//   clock: clockid,
//   /** Output: The resolution of the clock. */
//   resolution: ptr<timestamp>
// ): errno;

// /** Return the time value of a clock. */
// export declare function clock_time_get(
//   /** Input: Cock for which to return the time. */
//   clock: clockid,
//   /** Input: Maximum lag (exclusive) that the returned time value may have, compared to its actual value. */
//   precision: timestamp,
//   /** Output: Time value of the clock. */
//   time: ptr<timestamp>
// ): errno;

// /** Read environment variable data. */
// export declare function environ_get(
//   /** Input: Pointer to a buffer to write the environment variable pointers. */
//   environ: ptr<usize>,
//   /** Input: Pointer to a buffer to write the environment variable string data. */
//   environ_buf: usize
// ): errno;

// /** Return command-line argument data sizes. */
// export declare function environ_sizes_get(
//   /** Output: The number of environment variables. */
//   environ_count: ptr<usize>,
//   /** Output: The size of the environment variable string data. */
//   environ_buf_size: ptr<usize>
// ): errno;

// /** Provide file advisory information on a file descriptor. */
// export declare function fd_advise(
//   /** Input: The file descriptor for the file for which to provide file advisory information. */
//   fd: fd,
//   /** Input: The offset within the file to which the advisory applies. */
//   offset: filesize,
//   /** Input: The length of the region to which the advisory applies. */
//   len: filesize,
//   /** Input: The advice. */
//   advice: advice
// ): errno;

// /** Provide file advisory information on a file descriptor. */
// export declare function fd_allocate(
//   /** Input: The file descriptor for the file in which to allocate space. */
//   fd: fd,
//   /** Input: The offset at which to start the allocation. */
//   offset: filesize,
//   /** Input: The length of the area that is allocated. */
//   len: filesize
// ): errno;

// /** Close a file descriptor. */
// export declare function fd_close(
//   /** Input: The file descriptor to close. */
//   fd: fd
// ): errno;

// /** Synchronize the data of a file to disk. */
// export declare function fd_datasync(
//   /** Input: The file descriptor of the file to synchronize to disk. */
//   fd: fd
// ): errno;

// /** Get the attributes of a file descriptor. */
// export declare function fd_fdstat_get(
//   /** Input: The file descriptor to inspect. */
//   fd: fd,
//   /** Input: The buffer where the file descriptor's attributes are stored. */
//   buf: struct<fdstat>
// ): errno;

// /** Adjust the flags associated with a file descriptor. */
// export declare function fd_fdstat_set_flags(
//   /** Input: The file descriptor to operate on. */
//   fd: fd,
//   /** Input: The desired values of the file descriptor flags. */
//   flags: fdflags
// ): errno;

// /** Adjust the rights associated with a file descriptor. */
// export declare function fd_fdstat_set_rights(
//   /** Input: The file descriptor to operate on. */
//   fd: fd,
//   /** Input: The desired rights of the file descriptor. */
//   fs_rights_base: rights,
//   /** Input: The desired rights of the file descriptor. */
//   fs_rights_inheriting: rights
// ): errno;

// /** Return the attributes of an open file. */
// export declare function fd_filestat_get(
//   /** Input: The file descriptor to inspect. */
//   fd: fd,
//   /** Input: The buffer where the file's attributes are stored. */
//   buf: struct<filestat>
// ): errno;

// /** Adjust the size of an open file. If this increases the file's size, the extra bytes are filled with zeros. */
// export declare function fd_filestat_set_size(
//   /** Input: A file descriptor for the file to adjust. */
//   fd: fd,
//   /** Input: The desired file size. */
//   size: filesize
// ): errno;

// /** Adjust the timestamps of an open file or directory. */
// export declare function fd_filestat_set_times(
//   /** Input: The file descriptor to operate on. */
//   fd: fd,
//   /** Input: The desired values of the data access timestamp. */
//   st_atim: timestamp,
//   /** Input: The desired values of the data modification timestamp. */
//   st_mtim: timestamp,
//   /** Input: A bitmask indicating which timestamps to adjust. */
//   fstflags: fstflags
// ): errno;

// /** Read from a file descriptor, without using and updating the file descriptor's offset. */
// export declare function fd_pread(
//   /** Input: The file descriptor from which to read data. */
//   fd: fd,
//   /** Input: List of scatter/gather vectors in which to store data. */
//   iovs: ptr<struct<iovec>>,
//   /** Input: Length of the list of scatter/gather vectors in which to store data. */
//   iovs_len: usize,
//   /** Input: The offset within the file at which to read. */
//   offset: filesize,
//   /** Output: The number of bytes read. */
//   nread: ptr<usize>
// ): errno;

// /** Return a description of the given preopened file descriptor. */
// export declare function fd_prestat_get(
//   /** Input: The file descriptor about which to retrieve information. */
//   fd: fd,
//   /** Input: The buffer where the description is stored. */
//   buf: struct<prestat>
// ): errno;

// /** Return a description of the given preopened file descriptor. */
// export declare function fd_prestat_dir_name(
//   /** Input: The file descriptor about which to retrieve information. */
//   fd: fd,
//   /** Input: Buffer into which to write the preopened directory name. */
//   path: ptr<char>,
//   /** Input: Length of the buffer into which to write the preopened directory name. */
//   path_len: usize
// ): errno;

// /** Write to a file descriptor, without using and updating the file descriptor's offset. */
// export declare function fd_pwrite(
//   /** Input: The file descriptor to which to write data. */
//   fd: fd,
//   /** Input: List of scatter/gather vectors from which to retrieve data. */
//   iovs: ptr<struct<iovec>>,
//   /** Input: Length of the list of scatter/gather vectors from which to retrieve data. */
//   iovs_len: usize,
//   /** Input: The offset within the file at which to write. */
//   offset: filesize,
//   /** Output: The number of bytes written. */
//   nwritten: ptr<usize>
// ): errno;

// /** Read from a file descriptor. */
// export declare function fd_read(
//   /** Input: The file descriptor from which to read data. */
//   fd: fd,
//   /** Input: List of scatter/gather vectors to which to store data. */
//   iovs: ptr<struct<iovec>>,
//   /** Input: Length of the list of scatter/gather vectors to which to store data. */
//   iovs_len: usize,
//   /** Output: The number of bytes read. */
//   nread: ptr<usize>
// ): errno;

// /** Read directory entries from a directory. */
// export declare function fd_readdir(
//   /** Input: Directory from which to read the directory entries. */
//   fd: fd,
//   /** Input: Buffer where directory entries are stored. */
//   buf: ptr<struct<dirent>>,
//   /** Input: Length of the buffer where directory entries are stored. */
//   buf_len: usize,
//   /** Input: Location within the directory to start reading. */
//   cookie: dircookie,
//   /** Output: Number of bytes stored in the read buffer. If less than the size of the read buffer, the end of the directory has been reached. */
//   buf_used: ptr<usize>
// ): errno;

// /** Atomically replace a file descriptor by renumbering another file descriptor. */
// export declare function fd_renumber(
//   /** Input: The file descriptor to renumber. */
//   from: fd,
//   /** Input: The file descriptor to overwrite. */
//   to: fd
// ): errno;

// /** Move the offset of a file descriptor. */
// export declare function fd_seek(
//   /** Input: The file descriptor to operate on. */
//   fd: fd,
//   /** Input: The number of bytes to move. */
//   offset: filedelta,
//   /** Input: The base from which the offset is relative. */
//   whence: whence,
//   /** Output: The new offset of the file descriptor, relative to the start of the file. */
//   newoffset: ptr<filesize>
// ): errno;

// /** Synchronize the data and metadata of a file to disk. */
// export declare function fd_sync(
//   /** Input: The file descriptor of the file containing the data and metadata to synchronize to disk. */
//   fd: fd
// ): errno;

// /** Return the current offset of a file descriptor. */
// export declare function fd_tell(
//   /** Input: The file descriptor to inspect. */
//   fd: fd,
//   /** Output: The current offset of the file descriptor, relative to the start of the file. */
//   newoffset: ptr<filesize>
// ): errno;

//@ts-ignore decorators are valid here
@inline
@global
/** Write to a file descriptor. */
export function fd_write(
  /** Input: The file descriptor to which to write data. */
  fd: fd,
  /** Input: List of scatter/gather vectors from which to retrieve data. */
  iovs: ptr<struct<iovec>>,
  /** Input: List of scatter/gather vectors from which to retrieve data. */
  iovs_len: usize,
  /** Output: The number of bytes written. */
  nwritten: ptr<usize>
): errno {
    return Wasi.fd_write(fd, iovs, iovs_len, nwritten);
}

// /* Create a directory. */
// export declare function path_create_directory(
//   /** Input: The working directory at which the resolution of the path starts. */
//   fd: fd,
//   /** Input: The path at which to create the directory. */
//   path: ptr<char>,
//   /** Input: The path at which to create the directory. */
//   path_len: usize
// ): errno;

// /** Return the attributes of a file or directory. */
// export declare function path_filestat_get(
//   /** Input: The working directory at which the resolution of the path starts. */
//   fd: fd,
//   /** Input: Flags determining the method of how the path is resolved. */
//   flags: lookupflags,
//   /** Input: The path of the file or directory to inspect. */
//   path: ptr<char>,
//   /** Input: The path of the file or directory to inspect. */
//   path_len: usize,
//   /** Input: The buffer where the file's attributes are stored. */
//   buf: struct<filestat>
// ): errno;

// /** Adjust the timestamps of a file or directory. */
// export declare function path_filestat_set_times(
//   /** Input: The working directory at which the resolution of the path starts. */
//   fd: fd,
//   /** Input: Flags determining the method of how the path is resolved. */
//   flags: lookupflags,
//   /** Input: The path of the file or directory to operate on. */
//   path: ptr<char>,
//   /** Input: The path of the file or directory to operate on. */
//   path_len: usize,
//   /** Input: The desired values of the data access timestamp. */
//   st_atim: timestamp,
//   /** Input: The desired values of the data modification timestamp. */
//   st_mtim: timestamp,
//   /** Input: A bitmask indicating which timestamps to adjust. */
//   fstflags: fstflags
// ): errno;

// /** Create a hard link. */
// export declare function path_link(
//   /** Input: The working directory at which the resolution of the old path starts. */
//   old_fd: fd,
//   /** Input: Flags determining the method of how the path is resolved. */
//   old_flags: lookupflags,
//   /** Input: The source path from which to link. */
//   old_path: ptr<char>,
//   /** Input: The source path from which to link. */
//   old_path_len: usize,
//   /** Input: The working directory at which the resolution of the new path starts. */
//   new_fd: fd,
//   /** Input: The destination path at which to create the hard link. */
//   new_path: ptr<char>,
//   /** Input: The length of the destination path at which to create the hard link. */
//   new_path_len: usize
// ): errno;

// /** Open a file or directory. */
// export declare function path_open(
//   /** Input: The working directory at which the resolution of the path starts. */
//   dirfd: fd,
//   /** Input: Flags determining the method of how the path is resolved. */
//   dirflags: lookupflags,
//   /** Input: The path of the file or directory to open. */
//   path: ptr<char>,
//   /** Input: The length of the path of the file or directory to open. */
//   path_len: usize,
//   /** Input: The method by which to open the file. */
//   oflags: oflags,
//   /** Input: The initial base rights that apply to operations using the file descriptor itself. */
//   fs_rights_base: rights,
//   /** Input: The initial inheriting rights that apply to file descriptors derived from it. */
//   fs_rights_inheriting: rights,
//   /** Input: The initial flags of the file descriptor. */
//   fs_flags: fdflags,
//   /** Output: The file descriptor of the file that has been opened. */
//   fd: ptr<fd>
// ): errno;

// /** Read the contents of a symbolic link. */
// export declare function path_readlink(
//   /** Input: The working directory at which the resolution of the path starts. */
//   fd: fd,
//   /** Input: The path of the symbolic link from which to read. */
//   path: ptr<char>,
//   /** Input: The length of the path of the symbolic link from which to read. */
//   path_len: usize,
//   /** Input: The buffer to which to write the contents of the symbolic link. */
//   buf: ptr<char>,
//   /** Input: The length of the buffer to which to write the contents of the symbolic link. */
//   buf_len: usize,
//   /** Output: The number of bytes placed in the buffer. */
//   buf_used: ptr<usize>
// ): errno;

// /** Remove a directory. */
// export declare function path_remove_directory(
//   /** Input: The working directory at which the resolution of the path starts. */
//   fd: fd,
//   /** Input: The path to a directory to remove. */
//   path: ptr<char>,
//   /** Input: The length of the path to a directory to remove. */
//   path_len: usize
// ): errno;

// /** Rename a file or directory. */
// export declare function path_rename(
//   /** Input: The working directory at which the resolution of the old path starts. */
//   old_fd: fd,
//   /** Input: The source path of the file or directory to rename. */
//   old_path: ptr<char>,
//   /** Input: The length of the source path of the file or directory to rename. */
//   old_path_len: usize,
//   /** Input: The working directory at which the resolution of the new path starts. */
//   new_fd: fd,
//   /** Input: The destination path to which to rename the file or directory. */
//   new_path: ptr<char>,
//   /** Input: The length of the destination path to which to rename the file or directory. */
//   new_path_len: usize
// ): errno;

// /** Create a symbolic link. */
// export declare function path_symlink(
//   /** Input: The contents of the symbolic link. */
//   old_path: ptr<char>,
//   /** Input: The length of the contents of the symbolic link. */
//   old_path_len: usize,
//   /** Input: The working directory at which the resolution of the path starts. */
//   fd: fd,
//   /** Input: The destination path at which to create the symbolic link. */
//   new_path: ptr<char>,
//   /** Input: The length of the destination path at which to create the symbolic link. */
//   new_path_len: usize
// ): errno;

// /** Unlink a file. */
// export declare function path_unlink_file(
//   /** Input: The working directory at which the resolution of the path starts. */
//   fd: fd,
//   /** Input: The path to a file to unlink. */
//   path: ptr<char>,
//   /** Input: The length of the path to a file to unlink. */
//   path_len: usize
// ): errno;

// /** Concurrently poll for the occurrence of a set of events. */
// export declare function poll_oneoff(
//   /** Input: The events to which to subscribe. */
//   in_: ptr<struct<subscription>>,
//   /** Input: The events that have occurred. */
//   out: ptr<struct<event>>,
//   /** Input: Both the number of subscriptions and events. */
//   nsubscriptions: usize,
//   /** Output: The number of events stored. */
//   nevents: ptr<usize>
// ): errno;

// /** Terminate the process normally. An exit code of 0 indicates successful termination of the program. The meanings of other values is dependent on the environment. */
// export declare function proc_exit(
//   /** Input: The exit code returned by the process. */
//   rval: u32
// ): void;

// /** Send a signal to the process of the calling thread. */
// export declare function proc_raise(
//   /** Input: The signal condition to trigger. */
//   sig: signal
// ): errno;

// /** Write high-quality random data into a buffer. */
// export declare function random_get(
//   /** Input: The buffer to fill with random data. */
//   buf: usize,
//   /** Input: The length of the buffer to fill with random data. */
//   buf_len: usize
// ): errno;

// /** Temporarily yield execution of the calling thread. */
// export declare function sched_yield(): errno;

// /** Receive a message from a socket. */
// export declare function sock_recv(
//   /** Input: The socket on which to receive data. */
//   sock: fd,
//   /** Input: List of scatter/gather vectors to which to store data. */
//   ri_data: ptr<struct<iovec>>,
//   /** Input: The length of the list of scatter/gather vectors to which to store data. */
//   ri_data_len: usize,
//   /** Input: Message flags. */
//   ri_flags: riflags,
//   /** Output: Number of bytes stored in `ri_data`. */
//   ro_datalen: ptr<usize>,
//   /** Output: Message flags. */
//   ro_flags: ptr<roflags>
// ): errno;

// /** Send a message on a socket. */
// export declare function sock_send(
//   /** Input: The socket on which to send data. */
//   sock: fd,
//   /** Input: List of scatter/gather vectors to which to retrieve data */
//   si_data: ptr<struct<iovec>>,
//   /** Input: The length of the list of scatter/gather vectors to which to retrieve data */
//   si_data_len: usize,
//   /** Input: Message flags. */
//   si_flags: siflags,
//   /** Output: Number of bytes transmitted. */
//   so_datalen: ptr<usize>
// ): errno;

// /** Shut down socket send and receive channels. */
// export declare function sock_shutdown(
//   /** Input: The socket on which to shutdown channels. */
//   sock: fd,
//   /** Input: Which channels on the socket to shut down. */
//   how: sdflags
// ): errno;
