package org.apache.http.impl.io;

import java.io.IOException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public class DefaultHttpResponseWriter extends AbstractMessageWriterHC4 {
    public DefaultHttpResponseWriter(SessionOutputBuffer sessionOutputBuffer, LineFormatter lineFormatter) {
        super(sessionOutputBuffer, lineFormatter);
    }

    public DefaultHttpResponseWriter(SessionOutputBuffer sessionOutputBuffer) {
        super(sessionOutputBuffer, null);
    }

    @Override // org.apache.http.impl.io.AbstractMessageWriterHC4
    protected void writeHeadLine(HttpMessage httpMessage) throws IOException {
        this.lineFormatter.formatStatusLine(this.lineBuf, ((HttpResponse) httpMessage).getStatusLine());
        this.sessionBuffer.writeLine(this.lineBuf);
    }
}
