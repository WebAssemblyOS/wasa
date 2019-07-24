import { clock_res_get, clockid } from "bindings/wasi";

export class Performance {
  static now(): f64 {
    let time_ptr = changetype<usize>(new ArrayBuffer(8));
    clock_res_get(clockid.MONOTONIC, time_ptr);
    let res_ts = load<u64>(time_ptr);

    return res_ts as f64;
  }
}
