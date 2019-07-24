import { clock_time_get, clockid } from "bindings/wasi";

export class Date {
  /**
   * Return the current timestamp, as a number of milliseconds since the epoch
   */
  static now(): f64 {
    let time_ptr = changetype<usize>(new ArrayBuffer(8));
    clock_time_get(clockid.REALTIME, 1000, time_ptr);
    let unix_ts = load<u64>(time_ptr);

    return (unix_ts as f64) / 1000.0;
  }
}
