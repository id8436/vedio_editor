package org.apache.http.impl.client;

import java.io.IOException;
import java.net.Socket;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.auth.Credentials;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.params.HttpClientParamConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.entity.BufferedHttpEntityHC4;
import org.apache.http.impl.DefaultConnectionReuseStrategyHC4;
import org.apache.http.impl.auth.BasicSchemeFactoryHC4;
import org.apache.http.impl.auth.DigestSchemeFactoryHC4;
import org.apache.http.impl.auth.HttpAuthenticator;
import org.apache.http.impl.auth.NTLMSchemeFactory;
import org.apache.http.impl.conn.ManagedHttpClientConnectionFactory;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParamConfig;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContextHC4;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpCoreContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestTargetHostHC4;
import org.apache.http.protocol.RequestUserAgentHC4;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtilsHC4;

/* JADX INFO: loaded from: classes.dex */
public class ProxyClient {
    private final AuthSchemeRegistry authSchemeRegistry;
    private final HttpAuthenticator authenticator;
    private final HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> connFactory;
    private final ConnectionConfig connectionConfig;
    private final HttpProcessor httpProcessor;
    private final AuthStateHC4 proxyAuthState;
    private final ProxyAuthenticationStrategy proxyAuthStrategy;
    private final RequestConfig requestConfig;
    private final HttpRequestExecutor requestExec;
    private final ConnectionReuseStrategy reuseStrategy;

    public ProxyClient(HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory, ConnectionConfig connectionConfig, RequestConfig requestConfig) {
        this.connFactory = httpConnectionFactory == null ? ManagedHttpClientConnectionFactory.INSTANCE : httpConnectionFactory;
        this.connectionConfig = connectionConfig == null ? ConnectionConfig.DEFAULT : connectionConfig;
        this.requestConfig = requestConfig == null ? RequestConfig.DEFAULT : requestConfig;
        this.httpProcessor = new ImmutableHttpProcessor(new RequestTargetHostHC4(), new RequestClientConnControl(), new RequestUserAgentHC4());
        this.requestExec = new HttpRequestExecutor();
        this.proxyAuthStrategy = new ProxyAuthenticationStrategy();
        this.authenticator = new HttpAuthenticator();
        this.proxyAuthState = new AuthStateHC4();
        this.authSchemeRegistry = new AuthSchemeRegistry();
        this.authSchemeRegistry.register(AuthSchemes.BASIC, new BasicSchemeFactoryHC4());
        this.authSchemeRegistry.register(AuthSchemes.DIGEST, new DigestSchemeFactoryHC4());
        this.authSchemeRegistry.register(AuthSchemes.NTLM, new NTLMSchemeFactory());
        this.reuseStrategy = new DefaultConnectionReuseStrategyHC4();
    }

    @Deprecated
    public ProxyClient(HttpParams httpParams) {
        this(null, HttpParamConfig.getConnectionConfig(httpParams), HttpClientParamConfig.getRequestConfig(httpParams));
    }

    public ProxyClient(RequestConfig requestConfig) {
        this(null, null, requestConfig);
    }

    public ProxyClient() {
        this(null, null, null);
    }

    @Deprecated
    public HttpParams getParams() {
        return new BasicHttpParams();
    }

    @Deprecated
    public AuthSchemeRegistry getAuthSchemeRegistry() {
        return this.authSchemeRegistry;
    }

    public Socket tunnel(HttpHost httpHost, HttpHost httpHost2, Credentials credentials) throws HttpException, IOException {
        HttpResponse httpResponseExecute;
        Args.notNull(httpHost, "Proxy host");
        Args.notNull(httpHost2, "Target host");
        Args.notNull(credentials, "Credentials");
        HttpHost httpHost3 = httpHost2.getPort() <= 0 ? new HttpHost(httpHost2.getHostName(), 80, httpHost2.getSchemeName()) : httpHost2;
        HttpRoute httpRoute = new HttpRoute(httpHost3, this.requestConfig.getLocalAddress(), httpHost, false, RouteInfo.TunnelType.TUNNELLED, RouteInfo.LayerType.PLAIN);
        ManagedHttpClientConnection managedHttpClientConnection = (ManagedHttpClientConnection) this.connFactory.create(httpRoute, this.connectionConfig);
        HttpContext basicHttpContextHC4 = new BasicHttpContextHC4();
        BasicHttpRequest basicHttpRequest = new BasicHttpRequest("CONNECT", httpHost3.toHostString(), HttpVersion.HTTP_1_1);
        BasicCredentialsProviderHC4 basicCredentialsProviderHC4 = new BasicCredentialsProviderHC4();
        basicCredentialsProviderHC4.setCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort()), credentials);
        basicHttpContextHC4.setAttribute(HttpCoreContext.HTTP_TARGET_HOST, httpHost2);
        basicHttpContextHC4.setAttribute(HttpCoreContext.HTTP_CONNECTION, managedHttpClientConnection);
        basicHttpContextHC4.setAttribute(HttpCoreContext.HTTP_REQUEST, basicHttpRequest);
        basicHttpContextHC4.setAttribute(HttpClientContext.HTTP_ROUTE, httpRoute);
        basicHttpContextHC4.setAttribute(HttpClientContext.PROXY_AUTH_STATE, this.proxyAuthState);
        basicHttpContextHC4.setAttribute(HttpClientContext.CREDS_PROVIDER, basicCredentialsProviderHC4);
        basicHttpContextHC4.setAttribute(HttpClientContext.AUTHSCHEME_REGISTRY, this.authSchemeRegistry);
        basicHttpContextHC4.setAttribute(HttpClientContext.REQUEST_CONFIG, this.requestConfig);
        this.requestExec.preProcess(basicHttpRequest, this.httpProcessor, basicHttpContextHC4);
        while (true) {
            if (!managedHttpClientConnection.isOpen()) {
                managedHttpClientConnection.bind(new Socket(httpHost.getHostName(), httpHost.getPort()));
            }
            this.authenticator.generateAuthResponse(basicHttpRequest, this.proxyAuthState, basicHttpContextHC4);
            httpResponseExecute = this.requestExec.execute(basicHttpRequest, managedHttpClientConnection, basicHttpContextHC4);
            if (httpResponseExecute.getStatusLine().getStatusCode() < 200) {
                throw new HttpException("Unexpected response to CONNECT request: " + httpResponseExecute.getStatusLine());
            }
            if (!this.authenticator.isAuthenticationRequested(httpHost, httpResponseExecute, this.proxyAuthStrategy, this.proxyAuthState, basicHttpContextHC4) || !this.authenticator.handleAuthChallenge(httpHost, httpResponseExecute, this.proxyAuthStrategy, this.proxyAuthState, basicHttpContextHC4)) {
                break;
            }
            if (this.reuseStrategy.keepAlive(httpResponseExecute, basicHttpContextHC4)) {
                EntityUtilsHC4.consume(httpResponseExecute.getEntity());
            } else {
                managedHttpClientConnection.close();
            }
            basicHttpRequest.removeHeaders("Proxy-Authorization");
        }
        if (httpResponseExecute.getStatusLine().getStatusCode() > 299) {
            HttpEntity entity = httpResponseExecute.getEntity();
            if (entity != null) {
                httpResponseExecute.setEntity(new BufferedHttpEntityHC4(entity));
            }
            managedHttpClientConnection.close();
            throw new org.apache.http.impl.execchain.TunnelRefusedException("CONNECT refused by proxy: " + httpResponseExecute.getStatusLine(), httpResponseExecute);
        }
        return managedHttpClientConnection.getSocket();
    }
}
