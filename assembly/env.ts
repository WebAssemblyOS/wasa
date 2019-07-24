import { UTF8Buffer } from "./utils";
import { environ_sizes_get, environ_get } from "bindings/wasi";

export class EnvironEntry {
  constructor(readonly key: string, readonly value: string) {}
}

export class Environ {
  env: UTF8Buffer;

  constructor() {
    this.env = new UTF8Buffer(environ_sizes_get, environ_get);

    if (this.env.failed) {
      //@ts-ignore
      abort(this.env.err.toString());
    }
  }

  /**
   *  Return all environment variables
   */
  all(): Array<EnvironEntry> {
    let arr = new Array<EnvironEntry>();
    environ_get;
    for (let i: usize = 0; i < this.env.count; i++) {
      let entry = this.env.get(i)!.split("=", 2);

      arr.push(new EnvironEntry(entry[0], entry[1]));
    }
    return arr;
  }

  /**
   * Return the value for an environment variable
   * @param key environment variable name
   */
  get(key: string): string | null {
    for (let i: usize = 0; i < this.env.count; i++) {
      let entry = this.env.get(i)!;
      let index = entry.indexOf("=");
      if (entry.substr(0, index) === key) {
        return entry.substr(index + 1);
      }
    }
    return null;
  }
}
