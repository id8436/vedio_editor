package com.dropbox.core.http;

import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.http.OkHttpUtil;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.Callback;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import e.i;
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
public class OkHttpRequestor extends HttpRequestor {
    private final OkHttpClient client;

    public static OkHttpClient defaultOkHttpClient() {
        OkHttpClient okHttpClient = new OkHttpClient();
        okHttpClient.setConnectTimeout(DEFAULT_CONNECT_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
        okHttpClient.setReadTimeout(DEFAULT_READ_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
        okHttpClient.setWriteTimeout(DEFAULT_READ_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
        okHttpClient.setSslSocketFactory(SSLConfig.getSSLSocketFactory());
        return okHttpClient;
    }

    public OkHttpRequestor(OkHttpClient okHttpClient) {
        if (okHttpClient == null) {
            throw new NullPointerException("client");
        }
        OkHttpUtil.assertNotSameThreadExecutor(okHttpClient.getDispatcher().getExecutorService());
        this.client = okHttpClient.clone();
    }

    public OkHttpClient getClient() {
        return this.client;
    }

    protected void configureRequest(Request.Builder builder) {
    }

    protected Response interceptResponse(Response response) {
        return response;
    }

    @Override // com.dropbox.core.http.HttpRequestor
    public HttpRequestor.Response doGet(String str, Iterable<HttpRequestor.Header> iterable) throws IOException {
        Request.Builder builderUrl = new Request.Builder().get().url(str);
        toOkHttpHeaders(iterable, builderUrl);
        configureRequest(builderUrl);
        Response responseInterceptResponse = interceptResponse(this.client.newCall(builderUrl.build()).execute());
        return new HttpRequestor.Response(responseInterceptResponse.code(), responseInterceptResponse.body().byteStream(), fromOkHttpHeaders(responseInterceptResponse.headers()));
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
        Request.Builder builderUrl = new Request.Builder().url(str);
        toOkHttpHeaders(iterable, builderUrl);
        return new BufferedUploader(str2, builderUrl);
    }

    private static void toOkHttpHeaders(Iterable<HttpRequestor.Header> iterable, Request.Builder builder) {
        for (HttpRequestor.Header header : iterable) {
            builder.addHeader(header.getKey(), header.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, List<String>> fromOkHttpHeaders(Headers headers) {
        HashMap map = new HashMap(headers.size());
        for (String str : headers.names()) {
            map.put(str, headers.values(str));
        }
        return map;
    }

    class BufferedUploader extends HttpRequestor.Uploader {
        private final String method;
        private final Request.Builder request;
        private RequestBody body = null;
        private Call call = null;
        private AsyncCallback callback = null;
        private boolean closed = false;
        private boolean cancelled = false;

        public BufferedUploader(String str, Request.Builder builder) {
            this.method = str;
            this.request = builder;
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
            this.callback = new AsyncCallback();
            this.call = OkHttpRequestor.this.client.newCall(this.request.build());
            this.call.enqueue(this.callback);
            return pipedRequestBody.getOutputStream();
        }

        private void setBody(RequestBody requestBody) {
            assertNoBody();
            this.body = requestBody;
            this.request.method(this.method, requestBody);
            OkHttpRequestor.this.configureRequest(this.request);
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void upload(File file) {
            setBody(RequestBody.create((MediaType) null, file));
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void upload(byte[] bArr) {
            setBody(RequestBody.create((MediaType) null, bArr));
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void close() {
            if (this.body != null && (this.body instanceof Closeable)) {
                try {
                    this.body.close();
                } catch (IOException e2) {
                }
            }
            this.closed = true;
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public void abort() {
            if (this.call != null) {
                this.call.cancel();
            }
            this.cancelled = true;
            close();
        }

        @Override // com.dropbox.core.http.HttpRequestor.Uploader
        public HttpRequestor.Response finish() throws IOException {
            Response response;
            if (this.cancelled) {
                throw new IllegalStateException("Already aborted");
            }
            if (this.body == null) {
                upload(new byte[0]);
            }
            if (this.callback == null) {
                this.call = OkHttpRequestor.this.client.newCall(this.request.build());
                response = this.call.execute();
            } else {
                try {
                    getBody().close();
                } catch (IOException e2) {
                }
                response = this.callback.getResponse();
            }
            Response responseInterceptResponse = OkHttpRequestor.this.interceptResponse(response);
            return new HttpRequestor.Response(responseInterceptResponse.code(), responseInterceptResponse.body().byteStream(), OkHttpRequestor.fromOkHttpHeaders(responseInterceptResponse.headers()));
        }
    }

    public final class AsyncCallback implements Callback {
        private IOException error;
        private Response response;

        private AsyncCallback() {
            this.error = null;
            this.response = null;
        }

        public synchronized Response getResponse() throws IOException {
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

        public synchronized void onFailure(Request request, IOException iOException) {
            this.error = iOException;
            notifyAll();
        }

        public synchronized void onResponse(Response response) throws IOException {
            this.response = response;
            notifyAll();
        }
    }

    class PipedRequestBody extends RequestBody implements Closeable {
        private final OkHttpUtil.PipedStream stream = new OkHttpUtil.PipedStream();

        public OutputStream getOutputStream() {
            return this.stream.getOutputStream();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.stream.close();
        }

        public MediaType contentType() {
            return null;
        }

        public long contentLength() {
            return -1L;
        }

        public void writeTo(i iVar) throws IOException {
            this.stream.writeTo(iVar);
            close();
        }
    }
}
