package org.apache.http.impl.entity;

import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.HttpMessage;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.util.Args;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class StrictContentLengthStrategyHC4 implements ContentLengthStrategy {
    public static final StrictContentLengthStrategyHC4 INSTANCE = new StrictContentLengthStrategyHC4();
    private final int implicitLen;

    public StrictContentLengthStrategyHC4(int i) {
        this.implicitLen = i;
    }

    public StrictContentLengthStrategyHC4() {
        this(-1);
    }

    @Override // org.apache.http.entity.ContentLengthStrategy
    public long determineLength(HttpMessage httpMessage) throws HttpException {
        Args.notNull(httpMessage, "HTTP message");
        Header firstHeader = httpMessage.getFirstHeader("Transfer-Encoding");
        if (firstHeader != null) {
            String value = firstHeader.getValue();
            if (HttpHeaderValues.CHUNKED.equalsIgnoreCase(value)) {
                if (httpMessage.getProtocolVersion().lessEquals(HttpVersion.HTTP_1_0)) {
                    throw new ProtocolException("Chunked transfer encoding not allowed for " + httpMessage.getProtocolVersion());
                }
                return -2L;
            }
            if ("identity".equalsIgnoreCase(value)) {
                return -1L;
            }
            throw new ProtocolException("Unsupported transfer encoding: " + value);
        }
        Header firstHeader2 = httpMessage.getFirstHeader("Content-Length");
        if (firstHeader2 != null) {
            String value2 = firstHeader2.getValue();
            try {
                long j = Long.parseLong(value2);
                if (j < 0) {
                    throw new ProtocolException("Negative content length: " + value2);
                }
                return j;
            } catch (NumberFormatException e2) {
                throw new ProtocolException("Invalid content length: " + value2);
            }
        }
        return this.implicitLen;
    }
}
