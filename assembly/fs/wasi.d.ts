// see: https://wasi.dev

/* tslint:disable:max-line-length */

// helper types to be more explicit
declare type char = u8;
declare type ptr<T> = usize; // all pointers are usize'd
declare type struct<T> = T; // structs are references already in AS

/** Read command-line argument data. */
declare function args_get(
  /** Input: Pointer to a buffer to write the argument pointers. */
  argv: ptr<ptr<char>>,
  /** Input: Pointer to a buffer to write the argument string data. */
  argv_buf: ptr<char>
): errno;

/** Return command-line argument data sizes. */
declare function args_sizes_get(
  /** Output: Number of arguments. */
  argc: ptr<usize>,
  /** Output: Size of the argument string data. */
  argv_buf_size: ptr<usize>
): errno;

/** Return the resolution of a clock. */
declare function clock_res_get(
  /** Input: The clock for which to return the resolution. */
  clock: clockid,
  /** Output: The resolution of the clock. */
  resolution: ptr<timestamp>
): errno;

/** Return the time value of a clock. */
declare function clock_time_get(
  /** Input: Cock for which to return the time. */
  clock: clockid,
  /** Input: Maximum lag (exclusive) that the returned time value may have, compared to its actual value. */
  precision: timestamp,
  /** Output: Time value of the clock. */
  time: ptr<timestamp>
): errno;

/** Read environment variable data. */
declare function environ_get(
  /** Input: Pointer to a buffer to write the environment variable pointers. */
  environ: ptr<usize>,
  /** Input: Pointer to a buffer to write the environment variable string data. */
  environ_buf: usize
): errno;

/** Return command-line argument data sizes. */
declare function environ_sizes_get(
  /** Output: The number of environment variables. */
  environ_count: ptr<usize>,
  /** Output: The size of the environment variable string data. */
  environ_buf_size: ptr<usize>
): errno;

/** Provide file advisory information on a file descriptor. */
declare function fd_advise(
  /** Input: The file descriptor for the file for which to provide file advisory information. */
  fd: fd,
  /** Input: The offset within the file to which the advisory applies. */
  offset: filesize,
  /** Input: The length of the region to which the advisory applies. */
  len: filesize,
  /** Input: The advice. */
  advice: advice
): errno;

/** Provide file advisory information on a file descriptor. */
declare function fd_allocate(
  /** Input: The file descriptor for the file in which to allocate space. */
  fd: fd,
  /** Input: The offset at which to start the allocation. */
  offset: filesize,
  /** Input: The length of the area that is allocated. */
  len: filesize
): errno;

/** Close a file descriptor. */
declare function fd_close(
  /** Input: The file descriptor to close. */
  fd: fd
): errno;

/** Synchronize the data of a file to disk. */
declare function fd_datasync(
  /** Input: The file descriptor of the file to synchronize to disk. */
  fd: fd
): errno;

/** Get the attributes of a file descriptor. */
declare function fd_fdstat_get(
  /** Input: The file descriptor to inspect. */
  fd: fd,
  /** Input: The buffer where the file descriptor's attributes are stored. */
  buf: struct<fdstat>
): errno;

/** Adjust the flags associated with a file descriptor. */
declare function fd_fdstat_set_flags(
  /** Input: The file descriptor to operate on. */
  fd: fd,
  /** Input: The desired values of the file descriptor flags. */
  flags: fdflags
): errno;

/** Adjust the rights associated with a file descriptor. */
declare function fd_fdstat_set_rights(
  /** Input: The file descriptor to operate on. */
  fd: fd,
  /** Input: The desired rights of the file descriptor. */
  fs_rights_base: rights,
  /** Input: The desired rights of the file descriptor. */
  fs_rights_inheriting: rights
): errno;

/** Return the attributes of an open file. */
declare function fd_filestat_get(
  /** Input: The file descriptor to inspect. */
  fd: fd,
  /** Input: The buffer where the file's attributes are stored. */
  buf: struct<filestat>
): errno;

/** Adjust the size of an open file. If this increases the file's size, the extra bytes are filled with zeros. */
declare function fd_filestat_set_size(
  /** Input: A file descriptor for the file to adjust. */
  fd: fd,
  /** Input: The desired file size. */
  size: filesize
): errno;

/** Adjust the timestamps of an open file or directory. */
declare function fd_filestat_set_times(
  /** Input: The file descriptor to operate on. */
  fd: fd,
  /** Input: The desired values of the data access timestamp. */
  st_atim: timestamp,
  /** Input: The desired values of the data modification timestamp. */
  st_mtim: timestamp,
  /** Input: A bitmask indicating which timestamps to adjust. */
  fstflags: fstflags
): errno;

/** Read from a file descriptor, without using and updating the file descriptor's offset. */
declare function fd_pread(
  /** Input: The file descriptor from which to read data. */
  fd: fd,
  /** Input: List of scatter/gather vectors in which to store data. */
  iovs: ptr<struct<iovec>>,
  /** Input: Length of the list of scatter/gather vectors in which to store data. */
  iovs_len: usize,
  /** Input: The offset within the file at which to read. */
  offset: filesize,
  /** Output: The number of bytes read. */
  nread: ptr<usize>
): errno;

/** Return a description of the given preopened file descriptor. */
declare function fd_prestat_get(
  /** Input: The file descriptor about which to retrieve information. */
  fd: fd,
  /** Input: The buffer where the description is stored. */
  buf: struct<prestat>
): errno;

/** Return a description of the given preopened file descriptor. */
declare function fd_prestat_dir_name(
  /** Input: The file descriptor about which to retrieve information. */
  fd: fd,
  /** Input: Buffer into which to write the preopened directory name. */
  path: ptr<char>,
  /** Input: Length of the buffer into which to write the preopened directory name. */
  path_len: usize
): errno;

/** Write to a file descriptor, without using and updating the file descriptor's offset. */
declare function fd_pwrite(
  /** Input: The file descriptor to which to write data. */
  fd: fd,
  /** Input: List of scatter/gather vectors from which to retrieve data. */
  iovs: ptr<struct<iovec>>,
  /** Input: Length of the list of scatter/gather vectors from which to retrieve data. */
  iovs_len: usize,
  /** Input: The offset within the file at which to write. */
  offset: filesize,
  /** Output: The number of bytes written. */
  nwritten: ptr<usize>
): errno;

/** Read from a file descriptor. */
declare function fd_read(
  /** Input: The file descriptor from which to read data. */
  fd: fd,
  /** Input: List of scatter/gather vectors to which to store data. */
  iovs: ptr<struct<iovec>>,
  /** Input: Length of the list of scatter/gather vectors to which to store data. */
  iovs_len: usize,
  /** Output: The number of bytes read. */
  nread: ptr<usize>
): errno;

/** Read directory entries from a directory. */
declare function fd_readdir(
  /** Input: Directory from which to read the directory entries. */
  fd: fd,
  /** Input: Buffer where directory entries are stored. */
  buf: ptr<struct<dirent>>,
  /** Input: Length of the buffer where directory entries are stored. */
  buf_len: usize,
  /** Input: Location within the directory to start reading. */
  cookie: dircookie,
  /** Output: Number of bytes stored in the read buffer. If less than the size of the read buffer, the end of the directory has been reached. */
  buf_used: ptr<usize>
): errno;

/** Atomically replace a file descriptor by renumbering another file descriptor. */
declare function fd_renumber(
  /** Input: The file descriptor to renumber. */
  from: fd,
  /** Input: The file descriptor to overwrite. */
  to: fd
): errno;

/** Move the offset of a file descriptor. */
declare function fd_seek(
  /** Input: The file descriptor to operate on. */
  fd: fd,
  /** Input: The number of bytes to move. */
  offset: filedelta,
  /** Input: The base from which the offset is relative. */
  whence: whence,
  /** Output: The new offset of the file descriptor, relative to the start of the file. */
  newoffset: ptr<filesize>
): errno;

/** Synchronize the data and metadata of a file to disk. */
declare function fd_sync(
  /** Input: The file descriptor of the file containing the data and metadata to synchronize to disk. */
  fd: fd
): errno;

/** Return the current offset of a file descriptor. */
declare function fd_tell(
  /** Input: The file descriptor to inspect. */
  fd: fd,
  /** Output: The current offset of the file descriptor, relative to the start of the file. */
  newoffset: ptr<filesize>
): errno;

/** Write to a file descriptor. */
declare function fd_write(
  /** Input: The file descriptor to which to write data. */
  fd: fd,
  /** Input: List of scatter/gather vectors from which to retrieve data. */
  iovs: ptr<struct<iovec>>,
  /** Input: List of scatter/gather vectors from which to retrieve data. */
  iovs_len: usize,
  /** Output: The number of bytes written. */
  nwritten: ptr<usize>
): errno;

/* Create a directory. */
declare function path_create_directory(
  /** Input: The working directory at which the resolution of the path starts. */
  fd: fd,
  /** Input: The path at which to create the directory. */
  path: ptr<char>,
  /** Input: The path at which to create the directory. */
  path_len: usize
): errno;

/** Return the attributes of a file or directory. */
declare function path_filestat_get(
  /** Input: The working directory at which the resolution of the path starts. */
  fd: fd,
  /** Input: Flags determining the method of how the path is resolved. */
  flags: lookupflags,
  /** Input: The path of the file or directory to inspect. */
  path: ptr<char>,
  /** Input: The path of the file or directory to inspect. */
  path_len: usize,
  /** Input: The buffer where the file's attributes are stored. */
  buf: struct<filestat>
): errno;

/** Adjust the timestamps of a file or directory. */
declare function path_filestat_set_times(
  /** Input: The working directory at which the resolution of the path starts. */
  fd: fd,
  /** Input: Flags determining the method of how the path is resolved. */
  flags: lookupflags,
  /** Input: The path of the file or directory to operate on. */
  path: ptr<char>,
  /** Input: The path of the file or directory to operate on. */
  path_len: usize,
  /** Input: The desired values of the data access timestamp. */
  st_atim: timestamp,
  /** Input: The desired values of the data modification timestamp. */
  st_mtim: timestamp,
  /** Input: A bitmask indicating which timestamps to adjust. */
  fstflags: fstflags
): errno;

/** Create a hard link. */
declare function path_link(
  /** Input: The working directory at which the resolution of the old path starts. */
  old_fd: fd,
  /** Input: Flags determining the method of how the path is resolved. */
  old_flags: lookupflags,
  /** Input: The source path from which to link. */
  old_path: ptr<char>,
  /** Input: The source path from which to link. */
  old_path_len: usize,
  /** Input: The working directory at which the resolution of the new path starts. */
  new_fd: fd,
  /** Input: The destination path at which to create the hard link. */
  new_path: ptr<char>,
  /** Input: The length of the destination path at which to create the hard link. */
  new_path_len: usize
): errno;

/** Open a file or directory. */
declare function path_open(
  /** Input: The working directory at which the resolution of the path starts. */
  dirfd: fd,
  /** Input: Flags determining the method of how the path is resolved. */
  dirflags: lookupflags,
  /** Input: The path of the file or directory to open. */
  path: ptr<char>,
  /** Input: The length of the path of the file or directory to open. */
  path_len: usize,
  /** Input: The method by which to open the file. */
  oflags: oflags,
  /** Input: The initial base rights that apply to operations using the file descriptor itself. */
  fs_rights_base: rights,
  /** Input: The initial inheriting rights that apply to file descriptors derived from it. */
  fs_rights_inheriting: rights,
  /** Input: The initial flags of the file descriptor. */
  fs_flags: fdflags,
  /** Output: The file descriptor of the file that has been opened. */
  fd: ptr<fd>
): errno;

/** Read the contents of a symbolic link. */
declare function path_readlink(
  /** Input: The working directory at which the resolution of the path starts. */
  fd: fd,
  /** Input: The path of the symbolic link from which to read. */
  path: ptr<char>,
  /** Input: The length of the path of the symbolic link from which to read. */
  path_len: usize,
  /** Input: The buffer to which to write the contents of the symbolic link. */
  buf: ptr<char>,
  /** Input: The length of the buffer to which to write the contents of the symbolic link. */
  buf_len: usize,
  /** Output: The number of bytes placed in the buffer. */
  buf_used: ptr<usize>
): errno;

/** Remove a directory. */
declare function path_remove_directory(
  /** Input: The working directory at which the resolution of the path starts. */
  fd: fd,
  /** Input: The path to a directory to remove. */
  path: ptr<char>,
  /** Input: The length of the path to a directory to remove. */
  path_len: usize
): errno;

/** Rename a file or directory. */
declare function path_rename(
  /** Input: The working directory at which the resolution of the old path starts. */
  old_fd: fd,
  /** Input: The source path of the file or directory to rename. */
  old_path: ptr<char>,
  /** Input: The length of the source path of the file or directory to rename. */
  old_path_len: usize,
  /** Input: The working directory at which the resolution of the new path starts. */
  new_fd: fd,
  /** Input: The destination path to which to rename the file or directory. */
  new_path: ptr<char>,
  /** Input: The length of the destination path to which to rename the file or directory. */
  new_path_len: usize
): errno;

/** Create a symbolic link. */
declare function path_symlink(
  /** Input: The contents of the symbolic link. */
  old_path: ptr<char>,
  /** Input: The length of the contents of the symbolic link. */
  old_path_len: usize,
  /** Input: The working directory at which the resolution of the path starts. */
  fd: fd,
  /** Input: The destination path at which to create the symbolic link. */
  new_path: ptr<char>,
  /** Input: The length of the destination path at which to create the symbolic link. */
  new_path_len: usize
): errno;

/** Unlink a file. */
declare function path_unlink_file(
  /** Input: The working directory at which the resolution of the path starts. */
  fd: fd,
  /** Input: The path to a file to unlink. */
  path: ptr<char>,
  /** Input: The length of the path to a file to unlink. */
  path_len: usize
): errno;

/** Concurrently poll for the occurrence of a set of events. */
declare function poll_oneoff(
  /** Input: The events to which to subscribe. */
  in_: ptr<struct<subscription>>,
  /** Input: The events that have occurred. */
  out: ptr<struct<event>>,
  /** Input: Both the number of subscriptions and events. */
  nsubscriptions: usize,
  /** Output: The number of events stored. */
  nevents: ptr<usize>
): errno;

/** Terminate the process normally. An exit code of 0 indicates successful termination of the program. The meanings of other values is dependent on the environment. */
declare function proc_exit(
  /** Input: The exit code returned by the process. */
  rval: u32
): void;

/** Send a signal to the process of the calling thread. */
declare function proc_raise(
  /** Input: The signal condition to trigger. */
  sig: signal
): errno;

/** Write high-quality random data into a buffer. */
declare function random_get(
  /** Input: The buffer to fill with random data. */
  buf: usize,
  /** Input: The length of the buffer to fill with random data. */
  buf_len: usize
): errno;

/** Temporarily yield execution of the calling thread. */
declare function sched_yield(): errno;

/** Receive a message from a socket. */
declare function sock_recv(
  /** Input: The socket on which to receive data. */
  sock: fd,
  /** Input: List of scatter/gather vectors to which to store data. */
  ri_data: ptr<struct<iovec>>,
  /** Input: The length of the list of scatter/gather vectors to which to store data. */
  ri_data_len: usize,
  /** Input: Message flags. */
  ri_flags: riflags,
  /** Output: Number of bytes stored in `ri_data`. */
  ro_datalen: ptr<usize>,
  /** Output: Message flags. */
  ro_flags: ptr<roflags>
): errno;

/** Send a message on a socket. */
declare function sock_send(
  /** Input: The socket on which to send data. */
  sock: fd,
  /** Input: List of scatter/gather vectors to which to retrieve data */
  si_data: ptr<struct<iovec>>,
  /** Input: The length of the list of scatter/gather vectors to which to retrieve data */
  si_data_len: usize,
  /** Input: Message flags. */
  si_flags: siflags,
  /** Output: Number of bytes transmitted. */
  so_datalen: ptr<usize>
): errno;

/** Shut down socket send and receive channels. */
declare function sock_shutdown(
  /** Input: The socket on which to shutdown channels. */
  sock: fd,
  /** Input: Which channels on the socket to shut down. */
  how: sdflags
): errno;

// === Types ======================================================================================

/** File or memory access pattern advisory information. */
declare namespace advice {
  /** The application has no advice to give on its behavior with respect to the specified data. */
  const NORMAL: advice;
  /** The application expects to access the specified data sequentially from lower offsets to higher offsets. */
  const SEQUENTIAL : advice;
  /** The application expects to access the specified data in a random order. */
  const RANDOM: advice;
  /** The application expects to access the specified data in the near future. */
  const WILLNEED: advice;
  /** The application expects that it will not access the specified data in the near future. */
  const DONTNEED: advice;
  /** The application expects to access the specified data once and then not reuse it thereafter. */
  const NOREUSE: advice;
}
declare type advice = u8;

/** Identifiers for clocks. */
declare namespace clockid {
  /** The clock measuring real time. Time value zero corresponds with 1970-01-01T00:00:00Z. */
  const REALTIME: clockid;
  /** The store-wide monotonic clock. Absolute value has no meaning. */
  const MONOTONIC: clockid;
  /** The CPU-time clock associated with the current process. */
  const PROCESS_CPUTIME_ID: clockid;
  /** The CPU-time clock associated with the current thread. */
  const THREAD_CPUTIME_ID: clockid;
}
declare type clockid = u32;

/** Identifier for a device containing a file system. Can be used in combination with `inode` to uniquely identify a file or directory in the filesystem. */
declare type device = u64;

/** A reference to the offset of a directory entry. */
declare type dircookie = u64;

/** A directory entry. */
declare class dirent {
  /** The offset of the next directory entry stored in this directory. */
  next: dircookie;
  /** The serial number of the file referred to by this directory entry. */
  ino: inode;
  /** The length of the name of the directory entry. */
  namlen: u32;
  /** The type of the file referred to by this directory entry. */
  type: filetype;
  private __padding0: u16;
}

/** Error codes returned by functions. */
declare namespace errno {
  /** No error occurred. System call completed successfully. */
  const SUCCESS: errno;
  /** Argument list too long. */
  const TOOBIG: errno;
  /** Permission denied. */
  const ACCES: errno;
  /** Address in use. */
  const ADDRINUSE: errno;
  /** Address not available. */
  const ADDRNOTAVAIL: errno;
  /** Address family not supported. */
  const AFNOSUPPORT: errno;
  /** Resource unavailable, or operation would block. */
  const AGAIN: errno;
  /** Connection already in progress. */
  const ALREADY: errno;
  /** Bad file descriptor. */
  const BADF: errno;
  /** Bad message. */
  const BADMSG: errno;
  /** Device or resource busy. */
  const BUSY: errno;
  /** Operation canceled. */
  const CANCELED: errno;
  /** No child processes. */
  const CHILD: errno;
  /** Connection aborted. */
  const CONNABORTED: errno;
  /** Connection refused. */
  const CONNREFUSED: errno;
  /** Connection reset. */
  const CONNRESET: errno;
  /** Resource deadlock would occur. */
  const DEADLK: errno;
  /** Destination address required. */
  const DESTADDRREQ: errno;
  /** Mathematics argument out of domain of function. */
  const DOM: errno;
  /** Reserved. */
  const DQUOT: errno;
  /** File exists. */
  const EXIST: errno;
  /** Bad address. */
  const FAULT: errno;
  /** File too large. */
  const FBIG: errno;
  /** Host is unreachable. */
  const HOSTUNREACH: errno;
  /** Identifier removed. */
  const IDRM: errno;
  /** Illegal byte sequence. */
  const ILSEQ: errno;
  /** Operation in progress. */
  const INPROGRESS: errno;
  /** Interrupted function. */
  const INTR: errno;
  /** Invalid argument. */
  const INVAL: errno;
  /** I/O error. */
  const IO: errno;
  /** Socket is connected. */
  const ISCONN: errno;
  /** Is a directory. */
  const ISDIR: errno;
  /** Too many levels of symbolic links. */
  const LOOP: errno;
  /** File descriptor value too large. */
  const MFILE: errno;
  /** Too many links. */
  const MLINK: errno;
  /** Message too large. */
  const MSGSIZE: errno;
  /** Reserved. */
  const MULTIHOP: errno;
  /** Filename too long. */
  const NAMETOOLONG: errno;
  /** Network is down. */
  const NETDOWN: errno;
  /** Connection aborted by network. */
  const NETRESET: errno;
  /** Network unreachable. */
  const NETUNREACH: errno;
  /** Too many files open in system. */
  const NFILE: errno;
  /** No buffer space available. */
  const NOBUFS: errno;
  /** No such device. */
  const NODEV: errno;
  /** No such file or directory. */
  const NOENT: errno;
  /** Executable file format error. */
  const NOEXEC: errno;
  /** No locks available. */
  const NOLCK: errno;
  /** Reserved. */
  const NOLINK: errno;
  /** Not enough space. */
  const NOMEM: errno;
  /** No message of the desired type. */
  const NOMSG: errno;
  /** Protocol not available. */
  const NOPROTOOPT: errno;
  /** No space left on device. */
  const NOSPC: errno;
  /** Function not supported. */
  const NOSYS: errno;
  /** The socket is not connected. */
  const NOTCONN: errno;
  /** Not a directory or a symbolic link to a directory. */
  const NOTDIR: errno;
  /** Directory not empty. */
  const NOTEMPTY: errno;
  /** State not recoverable. */
  const NOTRECOVERABLE: errno;
  /** Not a socket. */
  const NOTSOCK: errno;
  /** Not supported, or operation not supported on socket. */
  const NOTSUP: errno;
  /** Inappropriate I/O control operation. */
  const NOTTY: errno;
  /** No such device or address. */
  const NXIO: errno;
  /** Value too large to be stored in data type. */
  const OVERFLOW: errno;
  /** Previous owner died. */
  const OWNERDEAD: errno;
  /** Operation not permitted. */
  const PERM: errno;
  /** Broken pipe. */
  const PIPE: errno;
  /** Protocol error. */
  const PROTO: errno;
  /** Protocol not supported. */
  const PROTONOSUPPORT: errno;
  /** Protocol wrong type for socket. */
  const PROTOTYPE: errno;
  /** Result too large. */
  const RANGE: errno;
  /** Read-only file system. */
  const ROFS: errno;
  /** Invalid seek. */
  const SPIPE: errno;
  /** No such process. */
  const SRCH: errno;
  /** Reserved. */
  const STALE: errno;
  /** Connection timed out. */
  const TIMEDOUT: errno;
  /** Text file busy. */
  const TXTBSY: errno;
  /** Cross-device link. */
  const XDEV: errno;
  /** Extension: Capabilities insufficient. */
  const NOTCAPABLE: errno;
}
declare type errno = u16;

/** An event that occurred. */
declare abstract class event {
  /** User-provided value that got attached to `subscription#userdata`. */
  userdata: userdata;
  /** If non-zero, an error that occurred while processing the subscription request. */
  error: errno;
  /* The type of the event that occurred. */
  type: eventtype;
  private __padding0: u16;
}

/** An event that occurred when type is `eventtype.FD_READ` or `eventtype.FD_WRITE`. */
declare class rwevent extends event {
  /* The number of bytes available for reading or writing. */
  nbytes: filesize;
  /* The state of the file descriptor. */
  flags: eventrwflags;
  private __padding1: u32;
}

/** The state of the file descriptor subscribed to with `eventtype.FD_READ` or `eventtype.FD_WRITE`. */
declare namespace eventrwflags {
  /** The peer of this socket has closed or disconnected. */
  const HANGUP: eventrwflags;
}
declare type eventrwflags = u16;

/** Type of a subscription to an event or its occurrence. */
declare namespace eventtype {
  /** The time value of clock has reached the timestamp. */
  const CLOCK: eventtype;
  /** File descriptor has data available for reading. */
  const FD_READ: eventtype;
  /** File descriptor has capacity available for writing */
  const FD_WRITE: eventtype;
}
declare type eventtype = u8;

/** Exit code generated by a process when exiting. */
declare type exitcode = u32;

/** A file descriptor number. */
declare type fd = u32;

/** File descriptor flags. */
declare namespace fdflags {
  /** Append mode: Data written to the file is always appended to the file's end. */
  const APPEND: fdflags;
  /** Write according to synchronized I/O data integrity completion. Only the data stored in the file is synchronized. */
  const DSYNC: fdflags;
  /** Non-blocking mode. */
  const NONBLOCK: fdflags;
  /** Synchronized read I/O operations. */
  const RSYNC: fdflags;
  /** Write according to synchronized I/O file integrity completion. */
  const SYNC: fdflags;
}
declare type fdflags = u16;

/** File descriptor attributes. */
declare class fdstat {
  /** File type. */
  filetype: filetype;
  /** File descriptor flags. */
  flags: fdflags;
  /** Rights that apply to this file descriptor. */
  rights_base: rights;
  /** Maximum set of rights that may be installed on new file descriptors that are created through this file descriptor, e.g., through `path_open`. */
  rights_inheriting: rights;
}

/** Relative offset within a file. */
declare type filedelta = i64;

/** Non-negative file size or length of a region within a file. */
declare type filesize = u64;

/** File attributes. */
declare class filestat {
  /** Device ID of device containing the file. */
  dev: device;
  /** File serial number. */
  ino: inode;
  /** File type. */
  filetype: filetype;
  /** Number of hard links to the file. */
  nlink: linkcount;
  /** For regular files, the file size in bytes. For symbolic links, the length in bytes of the pathname contained in the symbolic link. */
  size: filesize;
  /** Last data access timestamp. */
  atim: timestamp;
  /** Last data modification timestamp. */
  mtim: timestamp;
  /** Last file status change timestamp. */
  ctim: timestamp;
}

/** The type of a file descriptor or file. */
declare namespace filetype {
  /** The type of the file descriptor or file is unknown or is different from any of the other types specified. */
  const UNKNOWN: filetype;
  /** The file descriptor or file refers to a block device inode. */
  const BLOCK_DEVICE: filetype;
  /** The file descriptor or file refers to a character device inode. */
  const CHARACTER_DEVICE: filetype;
  /** The file descriptor or file refers to a directory inode. */
  const DIRECTORY: filetype;
  /** The file descriptor or file refers to a regular file inode. */
  const REGULAR_FILE: filetype;
  /** The file descriptor or file refers to a datagram socket. */
  const SOCKET_DGRAM: filetype;
  /** The file descriptor or file refers to a byte-stream socket. */
  const SOCKET_STREAM: filetype;
  /** The file refers to a symbolic link inode. */
  const SYMBOLIC_LINK: filetype;
}
declare type filetype = u8;

/** Which file time attributes to adjust. */
declare namespace fstflags {
  /** Adjust the last data access timestamp to the value stored in `filestat#st_atim`. */
  const SET_ATIM: fstflags;
  /** Adjust the last data access timestamp to the time of clock `clockid.REALTIME`. */
  const SET_ATIM_NOW: fstflags;
  /** Adjust the last data modification timestamp to the value stored in `filestat#st_mtim`. */
  const SET_MTIM: fstflags;
  /** Adjust the last data modification timestamp to the time of clock `clockid.REALTIME`. */
  const SET_MTIM_NOW: fstflags;
}
declare type fstflags = u16;

/** File serial number that is unique within its file system. */
declare type inode = u64;

/** A region of memory for scatter/gather reads. */
declare class iovec {
  /** The address of the buffer to be filled. */
  buf: usize;
  /** The length of the buffer to be filled. */
  buf_len: usize;
}

/** Number of hard links to an inode. */
declare type linkcount = u32;

/** Flags determining the method of how paths are resolved. */
declare namespace lookupflags {
  /** As long as the resolved path corresponds to a symbolic link, it is expanded. */
    const SYMLINK_FOLLOW: lookupflags;
}
declare type lookupflags = u32;

/** Open flags. */
declare namespace oflags {
  /** Create file if it does not exist. */
    const CREAT: oflags;
  /** Fail if not a directory. */
  const DIRECTORY: oflags;
  /** Fail if file already exists. */
  const EXCL: oflags;
  /** Truncate file to size 0. */
  const TRUNC: oflags;
}
declare type oflags = u16;

// TODO: undocumented
declare namespace preopentype {
  const DIR: preopentype;
}
declare type preopentype = u8;

// TODO: undocumented
declare abstract class prestat {
  type: preopentype;
}

// TODO: undocumented
declare class dirprestat extends prestat {
  name_len: usize;
}

/** Flags provided to `sock_recv`. */
declare namespace riflags {
  /** Returns the message without removing it from the socket's receive queue. */
  const PEEK: riflags;
  /** On byte-stream sockets, block until the full amount of data can be returned. */
  const WAITALL: riflags;
}
declare type riflags = u16;

/** File descriptor rights, determining which actions may be performed. */
declare namespace rights {
  /** The right to invoke `fd_datasync`. */
  const FD_DATASYNC: rights;
  /** The right to invoke `fd_read` and `sock_recv`. */
  const FD_READ: rights;
  /** The right to invoke `fd_seek`. This flag implies `rights.FD_TELL`. */
  const FD_SEEK: rights;
  /** The right to invoke `fd_fdstat_set_flags`. */
  const FD_FDSTAT_SET_FLAGS: rights;
  /** The right to invoke `fd_sync`. */
  const FD_SYNC: rights;
  /** The right to invoke `fd_seek` in such a way that the file offset remains unaltered (i.e., `whence.CUR` with offset zero), or to invoke `fd_tell`). */
  const FD_TELL: rights;
  /** The right to invoke `fd_write` and `sock_send`. If `rights.FD_SEEK` is set, includes the right to invoke `fd_pwrite`. */
  const FD_WRITE: rights;
  /** The right to invoke `fd_advise`. */
  const FD_ADVISE: rights;
  /** The right to invoke `fd_allocate`. */
  const FD_ALLOCATE: rights;
  /** The right to invoke `path_create_directory`. */
  const PATH_CREATE_DIRECTORY: rights;
  /** If `rights.PATH_OPEN` is set, the right to invoke `path_open` with `oflags.CREAT`. */
  const PATH_CREATE_FILE: rights;
  /** The right to invoke `path_link` with the file descriptor as the source directory. */
  const PATH_LINK_SOURCE: rights;
  /** The right to invoke `path_link` with the file descriptor as the target directory. */
  const PATH_LINK_TARGET: rights;
  /** The right to invoke `path_open`. */
  const PATH_OPEN: rights;
  /** The right to invoke `fd_readdir`. */
  const FD_READDIR: rights;
  /** The right to invoke `path_readlink`. */
  const PATH_READLINK: rights;
  /** The right to invoke `path_rename` with the file descriptor as the source directory. */
  const PATH_RENAME_SOURCE: rights;
  /** The right to invoke `path_rename` with the file descriptor as the target directory. */
  const PATH_RENAME_TARGET: rights;
  /** The right to invoke `path_filestat_get`. */
  const PATH_FILESTAT_GET: rights;
  /** The right to change a file's size (there is no `path_filestat_set_size`). If `rights.PATH_OPEN` is set, includes the right to invoke `path_open` with `oflags.TRUNC`. */
  const PATH_FILESTAT_SET_SIZE: rights;
  /** The right to invoke `path_filestat_set_times`. */
  const PATH_FILESTAT_SET_TIMES: rights;
  /** The right to invoke `fd_filestat_get`. */
  const FD_FILESTAT_GET: rights;
  /** The right to invoke `fd_filestat_set_size`. */
  const FD_FILESTAT_SET_SIZE: rights;
  /** The right to invoke `fd_filestat_set_times`. */
  const FD_FILESTAT_SET_TIMES: rights;
  /** The right to invoke `path_symlink`. */
  const RIGHT_PATH_SYMLINK: rights;
  /** The right to invoke `path_remove_directory`. */
  const PATH_REMOVE_DIRECTORY: rights;
  /** The right to invoke `path_unlink_file`. */
  const PATH_UNLINK_FILE: rights;
  /** If `rights.FD_READ` is set, includes the right to invoke `poll_oneoff` to subscribe to `eventtype.FD_READ`. If `rights.FD_WRITE` is set, includes the right to invoke `poll_oneoff` to subscribe to `eventtype.FD_WRITE`. */
  const POLL_FD_READWRITE: rights;
  /** The right to invoke `sock_shutdown`. */
  const SOCK_SHUTDOWN: rights;
}
declare type rights = u64;

/** Flags returned by `sock_recv`. */
declare namespace roflags {
  /** Message data has been truncated. */
  const DATA_TRUNCATED: roflags;
}
declare type roflags = u16;

/** Which channels on a socket to shut down. */
declare namespace sdflags {
  /** Disables further receive operations. */
  const RD: sdflags;
  /** Disables further send operations. */
  const WR: sdflags;
}
declare type sdflags = u8;

/** Flags provided to `sock_send`. */
declare namespace siflags {
  // As there are currently no flags defined, it must be set to zero.
}
declare type siflags = u16;

/** Signal condition. */
declare namespace signal {
  /** Hangup. */
  const HUP: signal;
  /** Terminate interrupt signal. */
  const INT: signal;
  /** Terminal quit signal. */
  const QUIT: signal;
  /** Illegal instruction. */
  const ILL: signal;
  /** Trace/breakpoint trap. */
  const TRAP: signal;
  /** Process abort signal. */
  const ABRT: signal;
  /** Access to an undefined portion of a memory object. */
  const BUS: signal;
  /** Erroneous arithmetic operation. */
  const FPE: signal;
  /** Kill. */
  const KILL: signal;
  /** User-defined signal 1. */
  const USR1: signal;
  /** Invalid memory reference. */
  const SEGV: signal;
  /** User-defined signal 2. */
  const USR2: signal;
  /** Write on a pipe with no one to read it. */
  const PIPE: signal;
  /** Alarm clock. */
  const ALRM: signal;
  /** Termination signal. */
  const TERM: signal;
  /** Child process terminated, stopped, or continued. */
  const CHLD: signal;
  /** Continue executing, if stopped. */
  const CONT: signal;
  /** Stop executing. */
  const STOP: signal;
  /** Terminal stop signal. */
  const TSTP: signal;
  /** Background process attempting read. */
  const TTIN: signal;
  /** Background process attempting write. */
  const TTOU: signal;
  /** High bandwidth data is available at a socket. */
  const URG: signal;
  /** CPU time limit exceeded. */
  const XCPU: signal;
  /** File size limit exceeded. */
  const XFSZ: signal;
  /** Virtual timer expired. */
  const VTALRM: signal;
  const PROF: signal;
  const WINCH: signal;
  const POLL: signal;
  const PWR: signal;
  /** Bad system call. */
  const SYS: signal;
}
declare type signal = u8;

/** Flags determining how to interpret the timestamp provided in `subscription_t::u.clock.timeout. */
declare namespace subclockflags {
  /** If set, treat the timestamp provided in `clocksubscription` as an absolute timestamp. */
  const ABSTIME: subclockflags;
}
declare type subclockflags = u16;

/** Subscription to an event. */
declare abstract class subscription {
  /** User-provided value that is attached to the subscription. */
  userdata: userdata;
  /** The type of the event to which to subscribe. */
  type: eventtype;
  private __padding0: u32;
}

/* Subscription to an event of type `eventtype.CLOCK`.**/
declare class clocksubscription extends subscription {
  /** The user-defined unique identifier of the clock. */
  identifier: userdata;
  /** The clock against which to compare the timestamp. */
  clock_id: clockid;
  /** The absolute or relative timestamp. */
  timeout: timestamp;
  /** The amount of time that the implementation may wait additionally to coalesce with other events. */
  precision: timestamp;
  /** Flags specifying whether the timeout is absolute or relative. */
  flags: subclockflags;
  private __padding1: u32;
}

/* Subscription to an event of type `eventtype.FD_READ` or `eventtype.FD_WRITE`.**/
declare class fdsubscription extends subscription {
  /** The file descriptor on which to wait for it to become ready for reading or writing. */
  fd: fd;
}

/** Timestamp in nanoseconds. */
declare type timestamp = u64;

/** User-provided value that may be attached to objects that is retained when extracted from the implementation. */
declare type userdata = u64;

/** The position relative to which to set the offset of the file descriptor. */
declare namespace whence {
  /** Seek relative to current position. */
  const CUR: whence;
  /** Seek relative to end-of-file. */
  const END: whence;
  /** Seek relative to start-of-file. */
  const SET: whence;
}
declare type whence = u8;
