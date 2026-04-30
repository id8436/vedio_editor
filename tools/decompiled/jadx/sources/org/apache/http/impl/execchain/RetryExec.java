package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class RetryExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final ClientExecChain requestExecutor;
    private final HttpRequestRetryHandler retryHandler;

    public RetryExec(ClientExecChain clientExecChain, HttpRequestRetryHandler httpRequestRetryHandler) {
        Args.notNull(clientExecChain, "HTTP request executor");
        Args.notNull(httpRequestRetryHandler, "HTTP request retry handler");
        this.requestExecutor = clientExecChain;
        this.retryHandler = httpRequestRetryHandler;
    }

    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws HttpException, IOException {
        int i;
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        Header[] allHeaders = httpRequestWrapper.getAllHeaders();
        int i2 = 1;
        while (true) {
            try {
                i = i2;
                return this.requestExecutor.execute(httpRoute, httpRequestWrapper, httpClientContext, httpExecutionAware);
            } catch (IOException e2) {
                if (httpExecutionAware != null && httpExecutionAware.isAborted()) {
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Request has been aborted");
                    }
                    throw e2;
                }
                if (this.retryHandler.retryRequest(e2, i, httpClientContext)) {
                    if (Log.isLoggable(TAG, 4)) {
                        Log.i(TAG, "I/O exception (" + e2.getClass().getName() + ") caught when processing request to " + httpRoute + ": " + e2.getMessage());
                    }
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, e2.getMessage(), e2);
                    }
                    if (!Proxies.isRepeatable(httpRequestWrapper)) {
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "Cannot retry non-repeatable request");
                        }
                        new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity").initCause(e2);
                    }
                    httpRequestWrapper.setHeaders(allHeaders);
                    if (Log.isLoggable(TAG, 4)) {
                        Log.i(TAG, "Retrying request to " + httpRoute);
                    }
                    i2 = i + 1;
                } else {
                    if (e2 instanceof NoHttpResponseException) {
                        NoHttpResponseException noHttpResponseException = new NoHttpResponseException(httpRoute.getTargetHost().toHostString() + " failed to respond");
                        noHttpResponseException.setStackTrace(e2.getStackTrace());
                        throw noHttpResponseException;
                    }
                    throw e2;
                }
            }
        }
    }
}
