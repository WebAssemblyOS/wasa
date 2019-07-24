import { args_sizes_get, args_get, errno } from "bindings/wasi";
import { UTF8Buffer } from "./utils";

//@ts-ignore
@global
export class CommandLine {
  private args: UTF8Buffer;
  constructor() {
    this.args = new UTF8Buffer(args_sizes_get, args_get);
    if (this.args.failed) {
      //@ts-ignore
      abort("error was " + this.args.err.toString());
    }
  }

  static init(): CommandLine {
    return new CommandLine();
  }

  /**
   * Return all the command-line arguments
   */
  all(): Array<string> {
    return this.args.toArray();
  }

  /**
   * Return the i-th command-ine argument
   * @param i index
   */
  get(i: usize): string | null {
    return this.args.get(i);
  }
}
