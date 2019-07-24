import { CommandLine } from "../cl";
import "../wasi";
import "../wasa";


export function _start(): void {
  let commandline = new CommandLine();
  //@ts-ignore
  let res = main([]);
  //   if (res != errno.SUCCESS) {
  //     Process.exit(res);
  //   }
  //   Process.exit(0);
}
