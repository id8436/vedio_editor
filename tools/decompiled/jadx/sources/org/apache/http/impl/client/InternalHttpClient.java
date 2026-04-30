package org.apache.http.impl.client;

import android.util.Log;
import java.io.Closeable;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.impl.execchain.ClientExecChain;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

/* JADX INFO: loaded from: classes3.dex */
@ThreadSafe
class InternalHttpClient extends CloseableHttpClient {
    private static final String TAG = "HttpClient";
    private final Lookup<AuthSchemeProvider> authSchemeRegistry;
    private final List<Closeable> closeables;
    private final HttpClientConnectionManager connManager;
    private final Lookup<CookieSpecProvider> cookieSpecRegistry;
    private final CookieStore cookieStore;
    private final CredentialsProvider credentialsProvider;
    private final RequestConfig defaultConfig;
    private final ClientExecChain execChain;
    private final HttpRoutePlanner routePlanner;

    public InternalHttpClient(ClientExecChain clientExecChain, HttpClientConnectionManager httpClientConnectionManager, HttpRoutePlanner httpRoutePlanner, Lookup<CookieSpecProvider> lookup, Lookup<AuthSchemeProvider> lookup2, CookieStore cookieStore, CredentialsProvider credentialsProvider, RequestConfig requestConfig, List<Closeable> list) {
        Args.notNull(clientExecChain, "HTTP client exec chain");
        Args.notNull(httpClientConnectionManager, "HTTP connection manager");
        Args.notNull(httpRoutePlanner, "HTTP route planner");
        this.execChain = clientExecChain;
        this.connManager = httpClientConnectionManager;
        this.routePlanner = httpRoutePlanner;
        this.cookieSpecRegistry = lookup;
        this.authSchemeRegistry = lookup2;
        this.cookieStore = cookieStore;
        this.credentialsProvider = credentialsProvider;
        this.defaultConfig = requestConfig;
        this.closeables = list;
    }

    private HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        HttpHost httpHost2 = httpHost == null ? (HttpHost) httpRequest.getParams().getParameter("http.default-host") : httpHost;
        Asserts.notNull(httpHost2, "Target host");
        return this.routePlanner.determineRoute(httpHost2, httpRequest, httpContext);
    }

    private void setupContext(HttpClientContext httpClientContext) {
        if (httpClientContext.getAttribute(HttpClientContext.TARGET_AUTH_STATE) == null) {
            httpClientContext.setAttribute(HttpClientContext.TARGET_AUTH_STATE, new AuthStateHC4());
        }
        if (httpClientContext.getAttribute(HttpClientContext.PROXY_AUTH_STATE) == null) {
            httpClientContext.setAttribute(HttpClientContext.PROXY_AUTH_STATE, new AuthStateHC4());
        }
        if (httpClientContext.getAttribute(HttpClientContext.AUTHSCHEME_REGISTRY) == null) {
            httpClientContext.setAttribute(HttpClientContext.AUTHSCHEME_REGISTRY, this.authSchemeRegistry);
        }
        if (httpClientContext.getAttribute(HttpClientContext.COOKIESPEC_REGISTRY) == null) {
            httpClientContext.setAttribute(HttpClientContext.COOKIESPEC_REGISTRY, this.cookieSpecRegistry);
        }
        if (httpClientContext.getAttribute(HttpClientContext.COOKIE_STORE) == null) {
            httpClientContext.setAttribute(HttpClientContext.COOKIE_STORE, this.cookieStore);
        }
        if (httpClientContext.getAttribute(HttpClientContext.CREDS_PROVIDER) == null) {
            httpClientContext.setAttribute(HttpClientContext.CREDS_PROVIDER, this.credentialsProvider);
        }
        if (httpClientContext.getAttribute(HttpClientContext.REQUEST_CONFIG) == null) {
            httpClientContext.setAttribute(HttpClientContext.REQUEST_CONFIG, this.defaultConfig);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0066  */
    @Override // org.apache.http.impl.client.CloseableHttpClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected org.apache.http.client.methods.CloseableHttpResponse doExecute(org.apache.http.HttpHost r8, org.apache.http.HttpRequest r9, org.apache.http.protocol.HttpContext r10) throws java.io.IOException {
        /*
            r7 = this;
            r3 = 0
            java.lang.String r1 = "HTTP request"
            org.apache.http.util.Args.notNull(r9, r1)
            boolean r1 = r9 instanceof org.apache.http.client.methods.HttpExecutionAware
            if (r1 == 0) goto L68
            r1 = r9
            org.apache.http.client.methods.HttpExecutionAware r1 = (org.apache.http.client.methods.HttpExecutionAware) r1
            r4 = r1
        Lf:
            org.apache.http.client.methods.HttpRequestWrapper r5 = org.apache.http.client.methods.HttpRequestWrapper.wrap(r9)     // Catch: org.apache.http.HttpException -> L5a
            if (r10 == 0) goto L54
        L15:
            org.apache.http.client.protocol.HttpClientContext r6 = org.apache.http.client.protocol.HttpClientContext.adapt(r10)     // Catch: org.apache.http.HttpException -> L5a
            boolean r1 = r9 instanceof org.apache.http.client.methods.Configurable     // Catch: org.apache.http.HttpException -> L5a
            if (r1 == 0) goto L25
            r0 = r9
            org.apache.http.client.methods.Configurable r0 = (org.apache.http.client.methods.Configurable) r0     // Catch: org.apache.http.HttpException -> L5a
            r1 = r0
            org.apache.http.client.config.RequestConfig r3 = r1.getConfig()     // Catch: org.apache.http.HttpException -> L5a
        L25:
            if (r3 != 0) goto L66
            org.apache.http.params.HttpParams r2 = r9.getParams()     // Catch: org.apache.http.HttpException -> L5a
            boolean r1 = r2 instanceof org.apache.http.params.HttpParamsNames     // Catch: org.apache.http.HttpException -> L5a
            if (r1 == 0) goto L61
            r0 = r2
            org.apache.http.params.HttpParamsNames r0 = (org.apache.http.params.HttpParamsNames) r0     // Catch: org.apache.http.HttpException -> L5a
            r1 = r0
            java.util.Set r1 = r1.getNames()     // Catch: org.apache.http.HttpException -> L5a
            boolean r1 = r1.isEmpty()     // Catch: org.apache.http.HttpException -> L5a
            if (r1 != 0) goto L66
            org.apache.http.client.config.RequestConfig r1 = org.apache.http.client.params.HttpClientParamConfig.getRequestConfig(r2)     // Catch: org.apache.http.HttpException -> L5a
        L41:
            if (r1 == 0) goto L46
            r6.setRequestConfig(r1)     // Catch: org.apache.http.HttpException -> L5a
        L46:
            r7.setupContext(r6)     // Catch: org.apache.http.HttpException -> L5a
            org.apache.http.conn.routing.HttpRoute r1 = r7.determineRoute(r8, r5, r6)     // Catch: org.apache.http.HttpException -> L5a
            org.apache.http.impl.execchain.ClientExecChain r2 = r7.execChain     // Catch: org.apache.http.HttpException -> L5a
            org.apache.http.client.methods.CloseableHttpResponse r1 = r2.execute(r1, r5, r6, r4)     // Catch: org.apache.http.HttpException -> L5a
            return r1
        L54:
            org.apache.http.protocol.BasicHttpContextHC4 r10 = new org.apache.http.protocol.BasicHttpContextHC4     // Catch: org.apache.http.HttpException -> L5a
            r10.<init>()     // Catch: org.apache.http.HttpException -> L5a
            goto L15
        L5a:
            r1 = move-exception
            org.apache.http.client.ClientProtocolException r2 = new org.apache.http.client.ClientProtocolException
            r2.<init>(r1)
            throw r2
        L61:
            org.apache.http.client.config.RequestConfig r1 = org.apache.http.client.params.HttpClientParamConfig.getRequestConfig(r2)     // Catch: org.apache.http.HttpException -> L5a
            goto L41
        L66:
            r1 = r3
            goto L41
        L68:
            r4 = r3
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.client.InternalHttpClient.doExecute(org.apache.http.HttpHost, org.apache.http.HttpRequest, org.apache.http.protocol.HttpContext):org.apache.http.client.methods.CloseableHttpResponse");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.connManager.shutdown();
        if (this.closeables != null) {
            Iterator<Closeable> it = this.closeables.iterator();
            while (it.hasNext()) {
                try {
                    it.next().close();
                } catch (IOException e2) {
                    Log.e(TAG, e2.getMessage(), e2);
                }
            }
        }
    }

    @Override // org.apache.http.client.HttpClient
    public HttpParams getParams() {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.http.client.HttpClient
    public ClientConnectionManager getConnectionManager() {
        return new ClientConnectionManager() { // from class: org.apache.http.impl.client.InternalHttpClient.1
            @Override // org.apache.http.conn.ClientConnectionManager
            public void shutdown() {
                InternalHttpClient.this.connManager.shutdown();
            }

            @Override // org.apache.http.conn.ClientConnectionManager
            public ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
                throw new UnsupportedOperationException();
            }

            @Override // org.apache.http.conn.ClientConnectionManager
            public void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
                throw new UnsupportedOperationException();
            }

            @Override // org.apache.http.conn.ClientConnectionManager
            public SchemeRegistry getSchemeRegistry() {
                throw new UnsupportedOperationException();
            }

            @Override // org.apache.http.conn.ClientConnectionManager
            public void closeIdleConnections(long j, TimeUnit timeUnit) {
                InternalHttpClient.this.connManager.closeIdleConnections(j, timeUnit);
            }

            @Override // org.apache.http.conn.ClientConnectionManager
            public void closeExpiredConnections() {
                InternalHttpClient.this.connManager.closeExpiredConnections();
            }
        };
    }
}
