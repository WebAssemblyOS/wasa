import { Console } from ".";
import { Process } from "./process";

/**
 * A WASA error
 */
export class WASAError extends Error {
  constructor(message: string = "") {
    super(message);
    this.name = "WASAError";
  }
}

//@ts-ignore
@global
export function wasi_abort(
  message: string | null = "",
  fileName: string | null = "",
  lineNumber: u32 = 0,
  columnNumber: u32 = 0
): void {
  // let console = Console.init();
  // console.error(message!);
  Process.exit(<usize>parseInt(message!));
}
