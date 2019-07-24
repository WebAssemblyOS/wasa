import { getfs, File } from './include';
import { Descriptor } from '../fs/descriptor';



describe("fd_write", () => {
    it("should write a string", () => {
        let d = new Descriptor(0);
        d.writeString("Hello");
        let fs = getfs();
        let f = fs.get(0);
        expect<File>(f).not.toBeNull();
        expect<string>(String.UTF8.decode(f.data.buffer.slice(0, String.UTF8.byteLength("Hello")))).toStrictEqual("Hello");
    })
})