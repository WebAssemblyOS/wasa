import { Descriptor } from "./fs";

@global
export class Console {
  stdout: Descriptor = Descriptor.Stdout();
  stdin: Descriptor = Descriptor.Stdin();
  stderr: Descriptor = Descriptor.Stderr();
  /**
   * Write a string to the console
   * @param s string
   * @param newline `false` to avoid inserting a newline after the string
   */
  write(s: string, newline: bool = true): void {
    this.stdout.writeString(s, newline);
  }

  /**
   * Read an UTF8 string from the console, convert it to a native string
   */
  readAll(): string | null {
    return Descriptor.Stdin().readString();
  }

  /**
   * Alias for `Console.write()`
   */
  log(s: string): void {
    this.write(s);
  }

  /**
   * Write an error to the console
   * @param s string
   * @param newline `false` to avoid inserting a newline after the string
   */
  error(s: string, newline: bool = true): void {
    this.stderr.writeString(s, newline);
  }

  static init(): Console {
    return new Console();
  }
}
