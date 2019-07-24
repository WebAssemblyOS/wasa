
class MatrixA {
  a: f64 = 3.14
  b: f64;
}


@unmanaged
class MatrixB {
  a: f64;
  b: f64 = 2.71828
}

describe("Array Buffer", () => {
  describe("encoded strings", () => {
    it("should have the same byteLength", () => {
      let A = new MatrixA();
      let B = new MatrixB();
      let a = A.a;
      let b = B.b;
    });
    
  });
});
