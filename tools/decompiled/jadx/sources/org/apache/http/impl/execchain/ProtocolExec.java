package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.URIUtilsHC4;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.client.BasicCredentialsProviderHC4;
import org.apache.http.protocol.HttpCoreContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class ProtocolExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final HttpProcessor httpProcessor;
    private final ClientExecChain requestExecutor;

    public ProtocolExec(ClientExecChain clientExecChain, HttpProcessor httpProcessor) {
        Args.notNull(clientExecChain, "HTTP client request executor");
        Args.notNull(httpProcessor, "HTTP protocol processor");
        this.requestExecutor = clientExecChain;
        this.httpProcessor = httpProcessor;
    }

    void rewriteRequestURI(HttpRequestWrapper httpRequestWrapper, HttpRoute httpRoute) throws ProtocolException {
        URI uriRewriteURI;
        try {
            URI uri = httpRequestWrapper.getURI();
            if (uri != null) {
                if (httpRoute.getProxyHost() != null && !httpRoute.isTunnelled()) {
                    if (!uri.isAbsolute()) {
                        uriRewriteURI = URIUtilsHC4.rewriteURI(uri, httpRoute.getTargetHost(), true);
                    } else {
                        uriRewriteURI = URIUtilsHC4.rewriteURI(uri);
                    }
                } else if (uri.isAbsolute()) {
                    uriRewriteURI = URIUtilsHC4.rewriteURI(uri, null, true);
                } else {
                    uriRewriteURI = URIUtilsHC4.rewriteURI(uri);
                }
                httpRequestWrapper.setURI(uriRewriteURI);
            }
        } catch (URISyntaxException e2) {
            throw new ProtocolException("Invalid URI: " + httpRequestWrapper.getRequestLine().getUri(), e2);
        }
    }

    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws HttpException, IOException {
        URI uriCreate;
        String userInfo;
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        HttpRequest original = httpRequestWrapper.getOriginal();
        if (original instanceof HttpUriRequest) {
            uriCreate = ((HttpUriRequest) original).getURI();
        } else {
            String uri = original.getRequestLine().getUri();
            try {
                uriCreate = URI.create(uri);
            } catch (IllegalArgumentException e2) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Unable to parse '" + uri + "' as a valid URI; request URI and Host header may be inconsistent", e2);
                }
                uriCreate = null;
            }
        }
        httpRequestWrapper.setURI(uriCreate);
        rewriteRequestURI(httpRequestWrapper, httpRoute);
        HttpHost httpHost = (HttpHost) httpRequestWrapper.getParams().getParameter("http.virtual-host");
        if (httpHost != null && httpHost.getPort() == -1) {
            int port = httpRoute.getTargetHost().getPort();
            if (port != -1) {
                httpHost = new HttpHost(httpHost.getHostName(), port, httpHost.getSchemeName());
            }
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Using virtual host" + httpHost);
            }
        }
        if (httpHost == null) {
            httpHost = (uriCreate == null || !uriCreate.isAbsolute() || uriCreate.getHost() == null) ? null : new HttpHost(uriCreate.getHost(), uriCreate.getPort(), uriCreate.getScheme());
        }
        HttpHost targetHost = httpHost == null ? httpRoute.getTargetHost() : httpHost;
        if (uriCreate != null && (userInfo = uriCreate.getUserInfo()) != null) {
            CredentialsProvider credentialsProvider = httpClientContext.getCredentialsProvider();
            if (credentialsProvider == null) {
                credentialsProvider = new BasicCredentialsProviderHC4();
                httpClientContext.setCredentialsProvider(credentialsProvider);
            }
            credentialsProvider.setCredentials(new AuthScope(targetHost.getHostName(), targetHost.getPort()), new UsernamePasswordCredentials(userInfo));
        }
        httpClientContext.setAttribute(HttpCoreContext.HTTP_TARGET_HOST, targetHost);
        httpClientContext.setAttribute(HttpClientContext.HTTP_ROUTE, httpRoute);
        httpClientContext.setAttribute(HttpCoreContext.HTTP_REQUEST, httpRequestWrapper);
        this.httpProcessor.process(httpRequestWrapper, httpClientContext);
        CloseableHttpResponse closeableHttpResponseExecute = this.requestExecutor.execute(httpRoute, httpRequestWrapper, httpClientContext, httpExecutionAware);
        try {
            httpClientContext.setAttribute(HttpCoreContext.HTTP_RESPONSE, closeableHttpResponseExecute);
            this.httpProcessor.process(closeableHttpResponseExecute, httpClientContext);
            return closeableHttpResponseExecute;
        } catch (IOException e3) {
            closeableHttpResponseExecute.close();
            throw e3;
        } catch (RuntimeException e4) {
            closeableHttpResponseExecute.close();
            throw e4;
        } catch (HttpException e5) {
            closeableHttpResponseExecute.close();
            throw e5;
        }
    }
}
