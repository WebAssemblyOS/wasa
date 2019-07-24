import { errno } from "bindings/wasi";

export class StringUtils {
  static readonly NUL: u8 = 0;
  static readonly EOT: u8 = 4;
  static readonly LF: u8 = 10;

  static isNewLine(ptr: usize): boolean {
    return load<u8>(ptr) == this.LF;
  }

  private static terminates(ptr: usize): bool {
    let char: u8 = load<u8>(ptr);
    return char == this.NUL || char == this.EOT;
  }

  static fromCString(cstring: usize, max: usize = 4096): string | null {
    let size: usize = 0;
    while (!this.terminates(cstring + size) && size < max - 1) {
      size++;
    }
    if (size == 0) {
      return null;
    }
    return String.UTF8.decodeUnsafe(cstring, size);
  }

  static fromCStringTilNewLine(cstring: usize, max: usize): string | null {
    let size: usize = 0;
    while (!this.terminates(cstring + size) && size < max - 1) {
      if (this.isNewLine(cstring + size)) {
        break;
      }
      size++;
    }
    if (size == 0) {
      return null;
    }
    return String.UTF8.decodeUnsafe(cstring, size + 1);
  }
}

@unmanaged
export class Shape {
  count: usize;
  size: usize;

  get count_ptr(): usize {
    return changetype<usize>(this);
  }

  get size_ptr(): usize {
    return changetype<usize>(this) + offsetof<Shape>("size");
  }
}

type wasi_get = (ptr: usize, ptr2: usize) => errno;

export class UTF8Buffer {
  _ptrs: Array<usize>;
  _data: ArrayBuffer;
  err: errno;

  constructor(sizes: wasi_get, get: wasi_get) {
    let shape = new Shape();
    this.err = sizes(shape.count_ptr, shape.size_ptr);
    if (this.failed) {
      return this;
    }
    this._ptrs = new Array<usize>(shape.count);
    this._data = new ArrayBuffer(shape.size);
    this.err = get(this.ptrs, this.data);
    if (this.failed) {
      return this;
    }
    __free(changetype<usize>(shape));
  }

  get count(): usize {
    return this._ptrs.length;
  }

  get size(): usize {
    return this._data.byteLength;
  }

  get ptrs(): usize {
    //@ts-ignore does exist
    return this._ptrs.dataStart;
  }

  get data(): usize {
    return changetype<usize>(this._data);
  }

  get failed(): boolean {
    return this.err != errno.SUCCESS;
  }

  get(i: usize): string | null {
    if (this.count <= i) {
      return null;
    }
    if (i < this.count - 1) {
      return String.UTF8.decodeUnsafe(
        this._ptrs[i],
        this._ptrs[i + 1] - this._ptrs[i],
        true
      );
    }
    return StringUtils.fromCString(this._ptrs[i]);
  }

  toArray(): Array<string> {
    let arr = new Array<string>(1000);
    for (let i: usize = 0; i < this.count; i++) {
      arr[i] = this.get(i) as string;
    }
    return arr;
  }
}
