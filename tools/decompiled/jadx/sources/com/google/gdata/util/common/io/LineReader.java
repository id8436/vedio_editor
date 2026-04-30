package com.google.gdata.util.common.io;

import com.google.common.collect.Lists;
import com.google.gdata.util.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.Queue;

/* JADX INFO: loaded from: classes3.dex */
public final class LineReader {
    private final Readable readable;
    private final Reader reader;
    private final char[] buf = new char[4096];
    private final CharBuffer cbuf = CharBuffer.wrap(this.buf);
    private final Queue<String> lines = Lists.newLinkedList();
    private final LineBuffer lineBuf = new LineBuffer() { // from class: com.google.gdata.util.common.io.LineReader.1
        @Override // com.google.gdata.util.common.io.LineBuffer
        protected void handleLine(String str, String str2) {
            LineReader.this.lines.add(str);
        }
    };

    public LineReader(Readable readable) {
        Preconditions.checkNotNull(readable);
        this.readable = readable;
        this.reader = readable instanceof Reader ? (Reader) readable : null;
    }

    public String readLine() throws IOException {
        while (true) {
            if (this.lines.peek() != null) {
                break;
            }
            this.cbuf.clear();
            int i = this.reader != null ? this.reader.read(this.buf, 0, this.buf.length) : this.readable.read(this.cbuf);
            if (i == -1) {
                this.lineBuf.finish();
                break;
            }
            this.lineBuf.add(this.buf, 0, i);
        }
        return this.lines.poll();
    }
}
