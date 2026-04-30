package com.dropbox.core.http;

import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes.dex */
public class StandardHttpRequestor extends HttpRequestor {
    private final Config config;
    private static final Logger LOGGER = Logger.getLogger(StandardHttpRequestor.class.getCanonicalName());
    public static final StandardHttpRequestor INSTANCE = new StandardHttpRequestor(Config.DEFAULT_INSTANCE);
    private static volatile boolean certPinningWarningLogged = false;

    @Override // com.dropbox.core.http.HttpRequestor
    public /* bridge */ /* synthetic */ HttpRequestor.Uploader startPost(String str, Iterable iterable) throws IOException {
        return startPost(str, (Iterable<HttpRequestor.Header>) iterable);
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public /* bridge */ /* synthetic */ HttpRequestor.Uploader startPut(String str, Iterable iterable) throws IOException {
        return startPut(str, (Iterable<HttpRequestor.Header>) iterable);
    }

    public StandardHttpRequestor(Config config) {
        this.config = config;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HttpRequestor.Response toResponse(HttpURLConnection httpURLConnection) throws IOException {
        InputStream errorStream;
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode >= 400 || responseCode == -1) {
            errorStream = httpURLConnection.getErrorStream();
        } else {
            errorStream = httpURLConnection.getInputStream();
        }
        interceptResponse(httpURLConnection);
        return new HttpRequestor.Response(responseCode, errorStream, httpURLConnection.getHeaderFields());
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Response doGet(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        HttpURLConnection httpURLConnectionPrepRequest = prepRequest(str, iterable);
        httpURLConnectionPrepRequest.setRequestMethod("GET");
        httpURLConnectionPrepRequest.connect();
        return toResponse(httpURLConnectionPrepRequest);
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public Uploader startPost(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        HttpURLConnection httpURLConnectionPrepRequest = prepRequest(str, iterable);
        httpURLConnectionPrepRequest.setRequestMethod("POST");
        return new Uploader(httpURLConnectionPrepRequest);
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public Uploader startPut(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        HttpURLConnection httpURLConnectionPrepRequest = prepRequest(str, iterable);
        httpURLConnectionPrepRequest.setRequestMethod("PUT");
        return new Uploader(httpURLConnectionPrepRequest);
    }

    @Deprecated
    protected void configureConnection(HttpsURLConnection httpsURLConnection) throws IOException {
    }

    protected void configure(HttpURLConnection httpURLConnection) throws IOException {
    }

    protected void interceptResponse(HttpURLConnection httpURLConnection) throws IOException {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static OutputStream getOutputStream(HttpURLConnection httpURLConnection) throws IOException {
        httpURLConnection.setDoOutput(true);
        return httpURLConnection.getOutputStream();
    }

    /* JADX INFO: loaded from: classes2.dex */
    class Uploader extends HttpRequestor.Uploader {
        private HttpURLConnection conn;
        private final OutputStream out;

        public Uploader(HttpURLConnection httpURLConnection) throws IOException {
            this.conn = httpURLConnection;
            this.out = StandardHttpRequestor.getOutputStream(httpURLConnection);
            httpURLConnection.connect();
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public OutputStream getBody() {
            return this.out;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void abort() {
            if (this.conn == null) {
                throw new IllegalStateException("Can't abort().  Uploader already closed.");
            }
            this.conn.disconnect();
            this.conn = null;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void close() {
            if (this.conn != null) {
                if (this.conn.getDoOutput()) {
                    try {
                        IOUtil.closeQuietly(this.conn.getOutputStream());
                    } catch (IOException e2) {
                    }
                }
                this.conn = null;
            }
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public HttpRequestor.Response finish() throws IOException {
            if (this.conn != null) {
                try {
                    return StandardHttpRequestor.this.toResponse(this.conn);
                } finally {
                    this.conn = null;
                }
            }
            throw new IllegalStateException("Can't finish().  Uploader already closed.");
        }
    }

    private HttpURLConnection prepRequest(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection(this.config.getProxy());
        httpURLConnection.setConnectTimeout((int) this.config.getConnectTimeoutMillis());
        httpURLConnection.setReadTimeout((int) this.config.getReadTimeoutMillis());
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        if (httpURLConnection instanceof HttpsURLConnection) {
            SSLConfig.apply((HttpsURLConnection) httpURLConnection);
            configureConnection((HttpsURLConnection) httpURLConnection);
        } else {
            logCertificatePinningWarning();
        }
        configure(httpURLConnection);
        for (HttpRequestor.Header header : iterable) {
            httpURLConnection.addRequestProperty(header.getKey(), header.getValue());
        }
        return httpURLConnection;
    }

    private static void logCertificatePinningWarning() {
        if (!certPinningWarningLogged) {
            certPinningWarningLogged = true;
            LOGGER.warning("Certificate pinning disabled for HTTPS connections. This is likely because your JRE does not return javax.net.ssl.HttpsURLConnection objects for https network connections. Be aware your app may be prone to man-in-the-middle attacks without proper SSL certificate validation. If you are using Google App Engine, please configure DbxRequestConfig to use GoogleAppEngineRequestor.");
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public final class Config {
        public static final Config DEFAULT_INSTANCE = builder().build();
        private final long connectTimeoutMillis;
        private final Proxy proxy;
        private final long readTimeoutMillis;

        private Config(Proxy proxy, long j, long j2) {
            this.proxy = proxy;
            this.connectTimeoutMillis = j;
            this.readTimeoutMillis = j2;
        }

        public Proxy getProxy() {
            return this.proxy;
        }

        public long getConnectTimeoutMillis() {
            return this.connectTimeoutMillis;
        }

        public long getReadTimeoutMillis() {
            return this.readTimeoutMillis;
        }

        public Builder copy() {
            return new Builder(this.proxy, this.connectTimeoutMillis, this.readTimeoutMillis);
        }

        public static Builder builder() {
            return new Builder();
        }

        public final class Builder {
            private long connectTimeoutMillis;
            private Proxy proxy;
            private long readTimeoutMillis;

            private Builder() {
                this(Proxy.NO_PROXY, HttpRequestor.DEFAULT_CONNECT_TIMEOUT_MILLIS, HttpRequestor.DEFAULT_READ_TIMEOUT_MILLIS);
            }

            private Builder(Proxy proxy, long j, long j2) {
                this.proxy = proxy;
                this.connectTimeoutMillis = j;
                this.readTimeoutMillis = j2;
            }

            public Builder withProxy(Proxy proxy) {
                if (proxy == null) {
                    throw new NullPointerException("proxy");
                }
                this.proxy = proxy;
                return this;
            }

            public Builder withNoConnectTimeout() {
                return withConnectTimeout(0L, TimeUnit.MILLISECONDS);
            }

            public Builder withConnectTimeout(long j, TimeUnit timeUnit) {
                this.connectTimeoutMillis = checkTimeoutMillis(j, timeUnit);
                return this;
            }

            public Builder withNoReadTimeout() {
                return withReadTimeout(0L, TimeUnit.MILLISECONDS);
            }

            public Builder withReadTimeout(long j, TimeUnit timeUnit) {
                this.readTimeoutMillis = checkTimeoutMillis(j, timeUnit);
                return this;
            }

            public Config build() {
                return new Config(this.proxy, this.connectTimeoutMillis, this.readTimeoutMillis);
            }

            private static long checkTimeoutMillis(long j, TimeUnit timeUnit) {
                if (timeUnit == null) {
                    throw new NullPointerException("unit");
                }
                if (j < 0) {
                    throw new IllegalArgumentException("timeout must be non-negative");
                }
                long millis = timeUnit.toMillis(j);
                if (2147483647L < millis) {
                    throw new IllegalArgumentException("timeout too large, must be less than: 2147483647");
                }
                return millis;
            }
        }
    }
}
