import { proc_exit } from "bindings/wasi";

export class Process {
  /**
   * Cleanly terminate the current process
   * @param status exit code
   */
  static exit(status: u32): void {
    proc_exit(status);
  }
}
