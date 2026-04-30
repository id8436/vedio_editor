package com.dropbox.core.http;

import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.http.OkHttpUtil;
import d.ag;
import d.an;
import d.ar;
import d.at;
import d.ay;
import d.az;
import d.bd;
import d.g;
import d.i;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class OkHttp3Requestor extends HttpRequestor {
    private final ar client;

    public static ar defaultOkHttpClient() {
        return defaultOkHttpClientBuilder().a();
    }

    public static at defaultOkHttpClientBuilder() {
        return new at().a(DEFAULT_CONNECT_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS).b(DEFAULT_READ_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS).c(DEFAULT_READ_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS).a(SSLConfig.getSSLSocketFactory(), SSLConfig.getTrustManager());
    }

    public OkHttp3Requestor(ar arVar) {
        if (arVar == null) {
            throw new NullPointerException("client");
        }
        OkHttpUtil.assertNotSameThreadExecutor(arVar.s().a());
        this.client = arVar;
    }

    public ar getClient() {
        return this.client;
    }

    protected void configureRequest(ay ayVar) {
    }

    protected bd interceptResponse(bd bdVar) {
        return bdVar;
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Response doGet(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        ay ayVarA = new ay().a().a(str);
        toOkHttpHeaders(iterable, ayVarA);
        configureRequest(ayVarA);
        bd bdVarInterceptResponse = interceptResponse(this.client.a(ayVarA.b()).a());
        return new HttpRequestor.Response(bdVarInterceptResponse.b(), bdVarInterceptResponse.f().c(), fromOkHttpHeaders(bdVarInterceptResponse.e()));
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Uploader startPost(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        return startUpload(str, iterable, "POST");
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Uploader startPut(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        return startUpload(str, iterable, "PUT");
    }

    private BufferedUploader startUpload(String str, Iterable<HttpRequestor.Header> iterable, String str2) {
        ay ayVarA = new ay().a(str);
        toOkHttpHeaders(iterable, ayVarA);
        return new BufferedUploader(str2, ayVarA);
    }

    private static void toOkHttpHeaders(Iterable<HttpRequestor.Header> iterable, ay ayVar) {
        for (HttpRequestor.Header header : iterable) {
            ayVar.b(header.getKey(), header.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, List<String>> fromOkHttpHeaders(ag agVar) {
        HashMap map = new HashMap(agVar.a());
        for (String str : agVar.b()) {
            map.put(str, agVar.b(str));
        }
        return map;
    }

    class BufferedUploader extends HttpRequestor.Uploader {
        private final String method;
        private final ay request;
        private az body = null;
        private g call = null;
        private AsyncCallback callback = null;
        private boolean closed = false;
        private boolean cancelled = false;

        public BufferedUploader(String str, ay ayVar) {
            this.method = str;
            this.request = ayVar;
        }

        private void assertNoBody() {
            if (this.body != null) {
                throw new IllegalStateException("Request body already set.");
            }
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public OutputStream getBody() {
            if (this.body instanceof PipedRequestBody) {
                return ((PipedRequestBody) this.body).getOutputStream();
            }
            PipedRequestBody pipedRequestBody = new PipedRequestBody();
            setBody(pipedRequestBody);
            this.callback = new AsyncCallback(pipedRequestBody);
            this.call = OkHttp3Requestor.this.client.a(this.request.b());
            this.call.a(this.callback);
            return pipedRequestBody.getOutputStream();
        }

        private void setBody(az azVar) {
            assertNoBody();
            this.body = azVar;
            this.request.a(this.method, azVar);
            OkHttp3Requestor.this.configureRequest(this.request);
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void upload(File file) {
            setBody(az.create((an) null, file));
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void upload(byte[] bArr) {
            setBody(az.create((an) null, bArr));
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void close() {
            if (this.body != null && (this.body instanceof Closeable)) {
                try {
                    ((Closeable) this.body).close();
                } catch (IOException e2) {
                }
            }
            this.closed = true;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void abort() {
            if (this.call != null) {
                this.call.b();
            }
            this.cancelled = true;
            close();
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public HttpRequestor.Response finish() throws IOException {
            bd response;
            if (this.cancelled) {
                throw new IllegalStateException("Already aborted");
            }
            if (this.body == null) {
                upload(new byte[0]);
            }
            if (this.callback == null) {
                this.call = OkHttp3Requestor.this.client.a(this.request.b());
                response = this.call.a();
            } else {
                try {
                    getBody().close();
                } catch (IOException e2) {
                }
                response = this.callback.getResponse();
            }
            bd bdVarInterceptResponse = OkHttp3Requestor.this.interceptResponse(response);
            return new HttpRequestor.Response(bdVarInterceptResponse.b(), bdVarInterceptResponse.f().c(), OkHttp3Requestor.fromOkHttpHeaders(bdVarInterceptResponse.e()));
        }
    }

    public final class AsyncCallback implements i {
        private PipedRequestBody body;
        private IOException error;
        private bd response;

        private AsyncCallback(PipedRequestBody pipedRequestBody) {
            this.body = pipedRequestBody;
            this.error = null;
            this.response = null;
        }

        public synchronized bd getResponse() throws IOException {
            while (this.error == null && this.response == null) {
                try {
                    wait();
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException();
                }
            }
            if (this.error != null) {
                throw this.error;
            }
            return this.response;
        }

        @Override // d.i
        public synchronized void onFailure(g gVar, IOException iOException) {
            this.error = iOException;
            this.body.close();
            notifyAll();
        }

        @Override // d.i
        public synchronized void onResponse(g gVar, bd bdVar) throws IOException {
            this.response = bdVar;
            notifyAll();
        }
    }

    class PipedRequestBody extends az implements Closeable {
        private final OkHttpUtil.PipedStream stream = new OkHttpUtil.PipedStream();

        public OutputStream getOutputStream() {
            return this.stream.getOutputStream();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.stream.close();
        }

        @Override // d.az
        public an contentType() {
            return null;
        }

        @Override // d.az
        public long contentLength() {
            return -1L;
        }

        @Override // d.az
        public void writeTo(e.i iVar) throws IOException {
            this.stream.writeTo(iVar);
            close();
        }
    }
}
