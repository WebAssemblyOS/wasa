/// <reference path="../node_modules/assemblyscript/std/assembly/builtins.ts" />

import { random_get, errno } from "bindings/wasi";

export class Random {
  /**
   * Fill a buffer with random data
   * @param buffer An array buffer
   */
  static randomFill(buffer: ArrayBuffer): void {
    let len = buffer.byteLength;
    let ptr = changetype<usize>(buffer);
    while (len > 0) {
      let chunk = min(len, 256);
      if (random_get(ptr, chunk) !== errno.SUCCESS) {
        //@ts-ignore
        abort();
      }
      len -= chunk;
      ptr += chunk;
    }
  }

  /**
   * Return an array of random bytes
   * @param len length
   */
  static randomBytes(len: usize): Uint8Array {
    let array = new Uint8Array(len);
    this.randomFill(array.buffer);
    return array;
  }
}
