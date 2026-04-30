package org.apache.http.impl.execchain;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.client.utils.URIUtilsHC4;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestContentHC4;
import org.apache.http.protocol.RequestTargetHostHC4;
import org.apache.http.protocol.RequestUserAgentHC4;
import org.apache.http.util.Args;
import org.apache.http.util.VersionInfoHC4;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class MinimalClientExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final HttpClientConnectionManager connManager;
    private final HttpProcessor httpProcessor;
    private final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final HttpRequestExecutor requestExecutor;
    private final ConnectionReuseStrategy reuseStrategy;

    public MinimalClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy) {
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        this.httpProcessor = new ImmutableHttpProcessor(new RequestContentHC4(), new RequestTargetHostHC4(), new RequestClientConnControl(), new RequestUserAgentHC4(VersionInfoHC4.getUserAgent("Apache-HttpClient", "org.apache.http.client", getClass())));
        this.requestExecutor = httpRequestExecutor;
        this.connManager = httpClientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
    }

    static void rewriteRequestURI(HttpRequestWrapper httpRequestWrapper, HttpRoute httpRoute) throws ProtocolException {
        URI uriRewriteURI;
        try {
            URI uri = httpRequestWrapper.getURI();
            if (uri != null) {
                if (uri.isAbsolute()) {
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

    /* JADX WARN: Removed duplicated region for block: B:71:0x014b  */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.http.client.methods.CloseableHttpResponse execute(org.apache.http.conn.routing.HttpRoute r7, org.apache.http.client.methods.HttpRequestWrapper r8, org.apache.http.client.protocol.HttpClientContext r9, org.apache.http.client.methods.HttpExecutionAware r10) throws org.apache.http.HttpException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.execchain.MinimalClientExec.execute(org.apache.http.conn.routing.HttpRoute, org.apache.http.client.methods.HttpRequestWrapper, org.apache.http.client.protocol.HttpClientContext, org.apache.http.client.methods.HttpExecutionAware):org.apache.http.client.methods.CloseableHttpResponse");
    }
}
