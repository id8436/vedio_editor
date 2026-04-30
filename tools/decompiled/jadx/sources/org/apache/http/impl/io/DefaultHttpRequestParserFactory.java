package org.apache.http.impl.io;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestFactory;
import org.apache.http.annotation.Immutable;
import org.apache.http.config.MessageConstraints;
import org.apache.http.impl.DefaultHttpRequestFactoryHC4;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.BasicLineParserHC4;
import org.apache.http.message.LineParser;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class DefaultHttpRequestParserFactory implements HttpMessageParserFactory<HttpRequest> {
    public static final DefaultHttpRequestParserFactory INSTANCE = new DefaultHttpRequestParserFactory();
    private final LineParser lineParser;
    private final HttpRequestFactory requestFactory;

    public DefaultHttpRequestParserFactory(LineParser lineParser, HttpRequestFactory httpRequestFactory) {
        this.lineParser = lineParser == null ? BasicLineParserHC4.INSTANCE : lineParser;
        this.requestFactory = httpRequestFactory == null ? DefaultHttpRequestFactoryHC4.INSTANCE : httpRequestFactory;
    }

    public DefaultHttpRequestParserFactory() {
        this(null, null);
    }

    @Override // org.apache.http.io.HttpMessageParserFactory
    public HttpMessageParser create(SessionInputBuffer sessionInputBuffer, MessageConstraints messageConstraints) {
        return new DefaultHttpRequestParser(sessionInputBuffer, this.lineParser, this.requestFactory, messageConstraints);
    }
}
