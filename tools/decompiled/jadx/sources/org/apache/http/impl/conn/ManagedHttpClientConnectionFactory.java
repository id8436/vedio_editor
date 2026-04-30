package org.apache.http.impl.conn;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.io.DefaultHttpRequestWriterFactory;
import org.apache.http.io.HttpMessageParserFactory;
import org.apache.http.io.HttpMessageWriterFactory;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class ManagedHttpClientConnectionFactory implements HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> {
    private static final AtomicLong COUNTER = new AtomicLong();
    public static final ManagedHttpClientConnectionFactory INSTANCE = new ManagedHttpClientConnectionFactory();
    private static final String TAG = "HttpClient";
    private final HttpMessageWriterFactory<HttpRequest> requestWriterFactory;
    private final HttpMessageParserFactory<HttpResponse> responseParserFactory;

    public ManagedHttpClientConnectionFactory(HttpMessageWriterFactory<HttpRequest> httpMessageWriterFactory, HttpMessageParserFactory<HttpResponse> httpMessageParserFactory) {
        this.requestWriterFactory = httpMessageWriterFactory == null ? DefaultHttpRequestWriterFactory.INSTANCE : httpMessageWriterFactory;
        this.responseParserFactory = httpMessageParserFactory == null ? DefaultHttpResponseParserFactory.INSTANCE : httpMessageParserFactory;
    }

    public ManagedHttpClientConnectionFactory(HttpMessageParserFactory<HttpResponse> httpMessageParserFactory) {
        this(null, httpMessageParserFactory);
    }

    public ManagedHttpClientConnectionFactory() {
        this(null, null);
    }

    @Override // org.apache.http.conn.HttpConnectionFactory
    public ManagedHttpClientConnection create(HttpRoute httpRoute, ConnectionConfig connectionConfig) {
        CharsetEncoder charsetEncoderNewEncoder;
        CharsetDecoder charsetDecoderNewDecoder;
        if (connectionConfig == null) {
            connectionConfig = ConnectionConfig.DEFAULT;
        }
        Charset charset = connectionConfig.getCharset();
        CodingErrorAction malformedInputAction = connectionConfig.getMalformedInputAction() != null ? connectionConfig.getMalformedInputAction() : CodingErrorAction.REPORT;
        CodingErrorAction unmappableInputAction = connectionConfig.getUnmappableInputAction() != null ? connectionConfig.getUnmappableInputAction() : CodingErrorAction.REPORT;
        if (charset != null) {
            charsetDecoderNewDecoder = charset.newDecoder();
            charsetDecoderNewDecoder.onMalformedInput(malformedInputAction);
            charsetDecoderNewDecoder.onUnmappableCharacter(unmappableInputAction);
            charsetEncoderNewEncoder = charset.newEncoder();
            charsetEncoderNewEncoder.onMalformedInput(malformedInputAction);
            charsetEncoderNewEncoder.onUnmappableCharacter(unmappableInputAction);
        } else {
            charsetEncoderNewEncoder = null;
            charsetDecoderNewDecoder = null;
        }
        return new LoggingManagedHttpClientConnection("http-outgoing-" + Long.toString(COUNTER.getAndIncrement()), connectionConfig.getBufferSize(), connectionConfig.getFragmentSizeHint(), charsetDecoderNewDecoder, charsetEncoderNewEncoder, connectionConfig.getMessageConstraints(), null, null, this.requestWriterFactory, this.responseParserFactory);
    }
}
