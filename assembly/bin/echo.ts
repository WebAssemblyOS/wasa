import { Console, Environ, Descriptor } from "..";
import { errno } from "bindings/wasi_unstable";

//@ts-ignore
@global
export function main(args: string[]): errno {
  let console = Descriptor.Stdout();
//   let array: Array<u8> = [0x48,0x65,0x6c,0x6c,0x6f,0x20,0x57,0x6f,0x72,0x6c,0x64]
//   console.writeArray(array);
//   console.writeStringLn("Hellaunoesauhso World!");
    console.writeString("Hello World");
  //   let newLine: bool = true;
  //   let _args: string[] = new Array<string>();
  //   let start: i32 = 1;
  //   if (args[1] == "-n") {
  //     start = 2;
  //     newLine = false;
  //   }
  //   for (let i = start; i < args.length; i++) {
  //     if (args[i] == "$PATH") {
  //       let env = new Environ();
  //       let res = env.get("$PATH");
  //       if (res != null) {
  //         _args.push(res!);
  //       }
  //     } else {
  //       _args.push(args[i]);
  //     }
  //   }
  //   console.write(_args.join(" "), true);
  return errno.SUCCESS;
}
