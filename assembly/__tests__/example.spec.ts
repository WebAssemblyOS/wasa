import {Array} from "array";

describe("Array Buffer", () => {
  describe("encoded strings", () => {
    it("should have the same byteLength", () => {
      let hello = "hello world";
      let buf = String.UTF8.encode(hello);
      let buf_len: usize = String.UTF8.byteLength(hello);
      expect<i32>(buf.byteLength).toBe(buf_len);
    });

    it("should encode correctly", () => {
      //@ts-ignore
      let array: Array<u8> = [0x48,0x65,0x6c,0x6c,0x6f,0x20,0x57,0x6f,0x72,0x6c,0x64]
      let hello = "Hello World"
      let buf = String.UTF8.encode(hello)
      expect<ArrayBuffer>(buf).toStrictEqual(array.buffer);
      let array2 = new Array<u8>(buf.byteLength);
      memory.copy(changetype<usize>(array2.buffer), changetype<usize>(buf), buf.byteLength);
      expect<Array<u8>>(array).toStrictEqual(array2);
    })
  });
});
