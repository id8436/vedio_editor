package org.apache.http.impl.io;

import java.io.IOException;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.BasicLineFormatterHC4;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public abstract class AbstractMessageWriterHC4 implements HttpMessageWriter {
    protected final CharArrayBuffer lineBuf;
    protected final LineFormatter lineFormatter;
    protected final SessionOutputBuffer sessionBuffer;

    protected abstract void writeHeadLine(HttpMessage httpMessage) throws IOException;

    @Deprecated
    public AbstractMessageWriterHC4(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter, HttpParams httpParams) {
        Args.notNull(sessionOutputBuffer, "Session input buffer");
        this.sessionBuffer = sessionOutputBuffer;
        this.lineBuf = new CharArrayBuffer(128);
        this.lineFormatter = lineFormatter == null ? BasicLineFormatterHC4.INSTANCE : lineFormatter;
    }

    public AbstractMessageWriterHC4(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter) {
        this.sessionBuffer = (SessionOutputBuffer) Args.notNull(sessionOutputBuffer, "Session input buffer");
        this.lineFormatter = lineFormatter == null ? BasicLineFormatterHC4.INSTANCE : lineFormatter;
        this.lineBuf = new CharArrayBuffer(128);
    }

    @Override // org.apache.http.io.HttpMessageWriter
    public void write(HttpMessage httpMessage) throws HttpException, IOException {
        Args.notNull(httpMessage, "HTTP message");
        writeHeadLine(httpMessage);
        HeaderIterator headerIterator = httpMessage.headerIterator();
        while (headerIterator.hasNext()) {
            this.sessionBuffer.writeLine(this.lineFormatter.formatHeader(this.lineBuf, headerIterator.nextHeader()));
        }
        this.lineBuf.clear();
        this.sessionBuffer.writeLine(this.lineBuf);
    }
}
