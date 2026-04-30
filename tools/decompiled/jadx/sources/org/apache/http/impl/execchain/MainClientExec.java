package org.apache.http.impl.execchain;

import android.util.Log;
import java.io.IOException;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthStateHC4;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRouteDirector;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.entity.BufferedHttpEntityHC4;
import org.apache.http.impl.auth.HttpAuthenticator;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestTargetHostHC4;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtilsHC4;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class MainClientExec implements ClientExecChain {
    private static final String TAG = "HttpClient";
    private final HttpAuthenticator authenticator;
    private final HttpClientConnectionManager connManager;
    private final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final AuthenticationStrategy proxyAuthStrategy;
    private final HttpProcessor proxyHttpProcessor;
    private final HttpRequestExecutor requestExecutor;
    private final ConnectionReuseStrategy reuseStrategy;
    private final HttpRouteDirector routeDirector;
    private final AuthenticationStrategy targetAuthStrategy;
    private final UserTokenHandler userTokenHandler;

    public MainClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        Args.notNull(authenticationStrategy, "Target authentication strategy");
        Args.notNull(authenticationStrategy2, "Proxy authentication strategy");
        Args.notNull(userTokenHandler, "User token handler");
        this.authenticator = new HttpAuthenticator();
        this.proxyHttpProcessor = new ImmutableHttpProcessor(new RequestTargetHostHC4(), new RequestClientConnControl());
        this.routeDirector = new BasicRouteDirector();
        this.requestExecutor = httpRequestExecutor;
        this.connManager = httpClientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
        this.targetAuthStrategy = authenticationStrategy;
        this.proxyAuthStrategy = authenticationStrategy2;
        this.userTokenHandler = userTokenHandler;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01d9 A[Catch: ConnectionShutdownException -> 0x00eb, HttpException -> 0x012d, IOException -> 0x0183, RuntimeException -> 0x033c, TryCatch #4 {IOException -> 0x0183, RuntimeException -> 0x033c, HttpException -> 0x012d, ConnectionShutdownException -> 0x00eb, blocks: (B:38:0x00d2, B:42:0x00dc, B:44:0x00e2, B:45:0x00ea, B:59:0x011e, B:61:0x0124, B:62:0x012c, B:66:0x0132, B:68:0x0138, B:70:0x0142, B:72:0x0166, B:85:0x0189, B:87:0x0193, B:88:0x019d, B:90:0x01a3, B:92:0x01b7, B:93:0x01ba, B:95:0x01c0, B:163:0x03a2, B:97:0x01c6, B:73:0x0169, B:75:0x016f, B:77:0x0174, B:79:0x017a, B:80:0x0182, B:99:0x01cf, B:101:0x01d9, B:102:0x01f7, B:104:0x0202, B:106:0x020c, B:107:0x022a, B:108:0x0235, B:110:0x0240, B:112:0x0246, B:114:0x0250, B:115:0x026e, B:116:0x0279, B:118:0x0291, B:122:0x02ab, B:123:0x02cc, B:124:0x02e6, B:125:0x02ee, B:127:0x02fc, B:129:0x0306, B:130:0x0309, B:132:0x0316, B:133:0x031e, B:135:0x0327, B:136:0x032f, B:143:0x0341, B:145:0x034c, B:147:0x0352, B:149:0x035c, B:151:0x0366, B:152:0x036f, B:153:0x0372, B:155:0x037a, B:157:0x0380, B:159:0x038a, B:161:0x0394, B:162:0x039d, B:138:0x0338), top: B:172:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0202 A[Catch: ConnectionShutdownException -> 0x00eb, HttpException -> 0x012d, IOException -> 0x0183, RuntimeException -> 0x033c, TryCatch #4 {IOException -> 0x0183, RuntimeException -> 0x033c, HttpException -> 0x012d, ConnectionShutdownException -> 0x00eb, blocks: (B:38:0x00d2, B:42:0x00dc, B:44:0x00e2, B:45:0x00ea, B:59:0x011e, B:61:0x0124, B:62:0x012c, B:66:0x0132, B:68:0x0138, B:70:0x0142, B:72:0x0166, B:85:0x0189, B:87:0x0193, B:88:0x019d, B:90:0x01a3, B:92:0x01b7, B:93:0x01ba, B:95:0x01c0, B:163:0x03a2, B:97:0x01c6, B:73:0x0169, B:75:0x016f, B:77:0x0174, B:79:0x017a, B:80:0x0182, B:99:0x01cf, B:101:0x01d9, B:102:0x01f7, B:104:0x0202, B:106:0x020c, B:107:0x022a, B:108:0x0235, B:110:0x0240, B:112:0x0246, B:114:0x0250, B:115:0x026e, B:116:0x0279, B:118:0x0291, B:122:0x02ab, B:123:0x02cc, B:124:0x02e6, B:125:0x02ee, B:127:0x02fc, B:129:0x0306, B:130:0x0309, B:132:0x0316, B:133:0x031e, B:135:0x0327, B:136:0x032f, B:143:0x0341, B:145:0x034c, B:147:0x0352, B:149:0x035c, B:151:0x0366, B:152:0x036f, B:153:0x0372, B:155:0x037a, B:157:0x0380, B:159:0x038a, B:161:0x0394, B:162:0x039d, B:138:0x0338), top: B:172:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0250 A[Catch: ConnectionShutdownException -> 0x00eb, HttpException -> 0x012d, IOException -> 0x0183, RuntimeException -> 0x033c, TryCatch #4 {IOException -> 0x0183, RuntimeException -> 0x033c, HttpException -> 0x012d, ConnectionShutdownException -> 0x00eb, blocks: (B:38:0x00d2, B:42:0x00dc, B:44:0x00e2, B:45:0x00ea, B:59:0x011e, B:61:0x0124, B:62:0x012c, B:66:0x0132, B:68:0x0138, B:70:0x0142, B:72:0x0166, B:85:0x0189, B:87:0x0193, B:88:0x019d, B:90:0x01a3, B:92:0x01b7, B:93:0x01ba, B:95:0x01c0, B:163:0x03a2, B:97:0x01c6, B:73:0x0169, B:75:0x016f, B:77:0x0174, B:79:0x017a, B:80:0x0182, B:99:0x01cf, B:101:0x01d9, B:102:0x01f7, B:104:0x0202, B:106:0x020c, B:107:0x022a, B:108:0x0235, B:110:0x0240, B:112:0x0246, B:114:0x0250, B:115:0x026e, B:116:0x0279, B:118:0x0291, B:122:0x02ab, B:123:0x02cc, B:124:0x02e6, B:125:0x02ee, B:127:0x02fc, B:129:0x0306, B:130:0x0309, B:132:0x0316, B:133:0x031e, B:135:0x0327, B:136:0x032f, B:143:0x0341, B:145:0x034c, B:147:0x0352, B:149:0x035c, B:151:0x0366, B:152:0x036f, B:153:0x0372, B:155:0x037a, B:157:0x0380, B:159:0x038a, B:161:0x0394, B:162:0x039d, B:138:0x0338), top: B:172:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0291 A[Catch: ConnectionShutdownException -> 0x00eb, HttpException -> 0x012d, IOException -> 0x0183, RuntimeException -> 0x033c, TryCatch #4 {IOException -> 0x0183, RuntimeException -> 0x033c, HttpException -> 0x012d, ConnectionShutdownException -> 0x00eb, blocks: (B:38:0x00d2, B:42:0x00dc, B:44:0x00e2, B:45:0x00ea, B:59:0x011e, B:61:0x0124, B:62:0x012c, B:66:0x0132, B:68:0x0138, B:70:0x0142, B:72:0x0166, B:85:0x0189, B:87:0x0193, B:88:0x019d, B:90:0x01a3, B:92:0x01b7, B:93:0x01ba, B:95:0x01c0, B:163:0x03a2, B:97:0x01c6, B:73:0x0169, B:75:0x016f, B:77:0x0174, B:79:0x017a, B:80:0x0182, B:99:0x01cf, B:101:0x01d9, B:102:0x01f7, B:104:0x0202, B:106:0x020c, B:107:0x022a, B:108:0x0235, B:110:0x0240, B:112:0x0246, B:114:0x0250, B:115:0x026e, B:116:0x0279, B:118:0x0291, B:122:0x02ab, B:123:0x02cc, B:124:0x02e6, B:125:0x02ee, B:127:0x02fc, B:129:0x0306, B:130:0x0309, B:132:0x0316, B:133:0x031e, B:135:0x0327, B:136:0x032f, B:143:0x0341, B:145:0x034c, B:147:0x0352, B:149:0x035c, B:151:0x0366, B:152:0x036f, B:153:0x0372, B:155:0x037a, B:157:0x0380, B:159:0x038a, B:161:0x0394, B:162:0x039d, B:138:0x0338), top: B:172:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02fc A[Catch: ConnectionShutdownException -> 0x00eb, HttpException -> 0x012d, IOException -> 0x0183, RuntimeException -> 0x033c, TryCatch #4 {IOException -> 0x0183, RuntimeException -> 0x033c, HttpException -> 0x012d, ConnectionShutdownException -> 0x00eb, blocks: (B:38:0x00d2, B:42:0x00dc, B:44:0x00e2, B:45:0x00ea, B:59:0x011e, B:61:0x0124, B:62:0x012c, B:66:0x0132, B:68:0x0138, B:70:0x0142, B:72:0x0166, B:85:0x0189, B:87:0x0193, B:88:0x019d, B:90:0x01a3, B:92:0x01b7, B:93:0x01ba, B:95:0x01c0, B:163:0x03a2, B:97:0x01c6, B:73:0x0169, B:75:0x016f, B:77:0x0174, B:79:0x017a, B:80:0x0182, B:99:0x01cf, B:101:0x01d9, B:102:0x01f7, B:104:0x0202, B:106:0x020c, B:107:0x022a, B:108:0x0235, B:110:0x0240, B:112:0x0246, B:114:0x0250, B:115:0x026e, B:116:0x0279, B:118:0x0291, B:122:0x02ab, B:123:0x02cc, B:124:0x02e6, B:125:0x02ee, B:127:0x02fc, B:129:0x0306, B:130:0x0309, B:132:0x0316, B:133:0x031e, B:135:0x0327, B:136:0x032f, B:143:0x0341, B:145:0x034c, B:147:0x0352, B:149:0x035c, B:151:0x0366, B:152:0x036f, B:153:0x0372, B:155:0x037a, B:157:0x0380, B:159:0x038a, B:161:0x0394, B:162:0x039d, B:138:0x0338), top: B:172:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0338 A[Catch: ConnectionShutdownException -> 0x00eb, HttpException -> 0x012d, IOException -> 0x0183, RuntimeException -> 0x033c, TRY_LEAVE, TryCatch #4 {IOException -> 0x0183, RuntimeException -> 0x033c, HttpException -> 0x012d, ConnectionShutdownException -> 0x00eb, blocks: (B:38:0x00d2, B:42:0x00dc, B:44:0x00e2, B:45:0x00ea, B:59:0x011e, B:61:0x0124, B:62:0x012c, B:66:0x0132, B:68:0x0138, B:70:0x0142, B:72:0x0166, B:85:0x0189, B:87:0x0193, B:88:0x019d, B:90:0x01a3, B:92:0x01b7, B:93:0x01ba, B:95:0x01c0, B:163:0x03a2, B:97:0x01c6, B:73:0x0169, B:75:0x016f, B:77:0x0174, B:79:0x017a, B:80:0x0182, B:99:0x01cf, B:101:0x01d9, B:102:0x01f7, B:104:0x0202, B:106:0x020c, B:107:0x022a, B:108:0x0235, B:110:0x0240, B:112:0x0246, B:114:0x0250, B:115:0x026e, B:116:0x0279, B:118:0x0291, B:122:0x02ab, B:123:0x02cc, B:124:0x02e6, B:125:0x02ee, B:127:0x02fc, B:129:0x0306, B:130:0x0309, B:132:0x0316, B:133:0x031e, B:135:0x0327, B:136:0x032f, B:143:0x0341, B:145:0x034c, B:147:0x0352, B:149:0x035c, B:151:0x0366, B:152:0x036f, B:153:0x0372, B:155:0x037a, B:157:0x0380, B:159:0x038a, B:161:0x0394, B:162:0x039d, B:138:0x0338), top: B:172:0x00d2 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x01a1 A[EDGE_INSN: B:176:0x01a1->B:89:0x01a1 BREAK  A[LOOP:0: B:40:0x00d9->B:136:0x032f], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x016f A[Catch: ConnectionShutdownException -> 0x00eb, HttpException -> 0x012d, IOException -> 0x0183, RuntimeException -> 0x033c, TryCatch #4 {IOException -> 0x0183, RuntimeException -> 0x033c, HttpException -> 0x012d, ConnectionShutdownException -> 0x00eb, blocks: (B:38:0x00d2, B:42:0x00dc, B:44:0x00e2, B:45:0x00ea, B:59:0x011e, B:61:0x0124, B:62:0x012c, B:66:0x0132, B:68:0x0138, B:70:0x0142, B:72:0x0166, B:85:0x0189, B:87:0x0193, B:88:0x019d, B:90:0x01a3, B:92:0x01b7, B:93:0x01ba, B:95:0x01c0, B:163:0x03a2, B:97:0x01c6, B:73:0x0169, B:75:0x016f, B:77:0x0174, B:79:0x017a, B:80:0x0182, B:99:0x01cf, B:101:0x01d9, B:102:0x01f7, B:104:0x0202, B:106:0x020c, B:107:0x022a, B:108:0x0235, B:110:0x0240, B:112:0x0246, B:114:0x0250, B:115:0x026e, B:116:0x0279, B:118:0x0291, B:122:0x02ab, B:123:0x02cc, B:124:0x02e6, B:125:0x02ee, B:127:0x02fc, B:129:0x0306, B:130:0x0309, B:132:0x0316, B:133:0x031e, B:135:0x0327, B:136:0x032f, B:143:0x0341, B:145:0x034c, B:147:0x0352, B:149:0x035c, B:151:0x0366, B:152:0x036f, B:153:0x0372, B:155:0x037a, B:157:0x0380, B:159:0x038a, B:161:0x0394, B:162:0x039d, B:138:0x0338), top: B:172:0x00d2 }] */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.http.client.methods.CloseableHttpResponse execute(org.apache.http.conn.routing.HttpRoute r19, org.apache.http.client.methods.HttpRequestWrapper r20, org.apache.http.client.protocol.HttpClientContext r21, org.apache.http.client.methods.HttpExecutionAware r22) throws org.apache.http.HttpException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 945
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.execchain.MainClientExec.execute(org.apache.http.conn.routing.HttpRoute, org.apache.http.client.methods.HttpRequestWrapper, org.apache.http.client.protocol.HttpClientContext, org.apache.http.client.methods.HttpExecutionAware):org.apache.http.client.methods.CloseableHttpResponse");
    }

    void establishRoute(AuthStateHC4 authStateHC4, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        int iNextStep;
        int connectTimeout = httpClientContext.getRequestConfig().getConnectTimeout();
        RouteTracker routeTracker = new RouteTracker(httpRoute);
        do {
            HttpRoute route = routeTracker.toRoute();
            iNextStep = this.routeDirector.nextStep(httpRoute, route);
            switch (iNextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    this.connManager.routeComplete(httpClientConnection, httpRoute, httpClientContext);
                    break;
                case 1:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectTarget(httpRoute.isSecure());
                    break;
                case 2:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectProxy(httpRoute.getProxyHost(), false);
                    break;
                case 3:
                    boolean zCreateTunnelToTarget = createTunnelToTarget(authStateHC4, httpClientConnection, httpRoute, httpRequest, httpClientContext);
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Tunnel to target created.");
                    }
                    routeTracker.tunnelTarget(zCreateTunnelToTarget);
                    break;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    boolean zCreateTunnelToProxy = createTunnelToProxy(httpRoute, hopCount, httpClientContext);
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Tunnel to proxy created.");
                    }
                    routeTracker.tunnelProxy(httpRoute.getHopTarget(hopCount), zCreateTunnelToProxy);
                    break;
                case 5:
                    this.connManager.upgrade(httpClientConnection, httpRoute, httpClientContext);
                    routeTracker.layerProtocol(httpRoute.isSecure());
                    break;
                default:
                    throw new IllegalStateException("Unknown step indicator " + iNextStep + " from RouteDirector.");
            }
        } while (iNextStep > 0);
    }

    private boolean createTunnelToTarget(AuthStateHC4 authStateHC4, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        HttpResponse httpResponseExecute;
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        int connectTimeout = requestConfig.getConnectTimeout();
        HttpHost targetHost = httpRoute.getTargetHost();
        HttpHost proxyHost = httpRoute.getProxyHost();
        BasicHttpRequest basicHttpRequest = new BasicHttpRequest("CONNECT", targetHost.toHostString(), httpRequest.getProtocolVersion());
        this.requestExecutor.preProcess(basicHttpRequest, this.proxyHttpProcessor, httpClientContext);
        while (true) {
            if (!httpClientConnection.isOpen()) {
                this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
            }
            basicHttpRequest.removeHeaders("Proxy-Authorization");
            this.authenticator.generateAuthResponse(basicHttpRequest, authStateHC4, httpClientContext);
            httpResponseExecute = this.requestExecutor.execute(basicHttpRequest, httpClientConnection, httpClientContext);
            if (httpResponseExecute.getStatusLine().getStatusCode() < 200) {
                throw new HttpException("Unexpected response to CONNECT request: " + httpResponseExecute.getStatusLine());
            }
            if (requestConfig.isAuthenticationEnabled()) {
                if (!this.authenticator.isAuthenticationRequested(proxyHost, httpResponseExecute, this.proxyAuthStrategy, authStateHC4, httpClientContext) || !this.authenticator.handleAuthChallenge(proxyHost, httpResponseExecute, this.proxyAuthStrategy, authStateHC4, httpClientContext)) {
                    break;
                }
                if (this.reuseStrategy.keepAlive(httpResponseExecute, httpClientContext)) {
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Connection kept alive");
                    }
                    EntityUtilsHC4.consume(httpResponseExecute.getEntity());
                } else {
                    httpClientConnection.close();
                }
            }
        }
        if (httpResponseExecute.getStatusLine().getStatusCode() <= 299) {
            return false;
        }
        HttpEntity entity = httpResponseExecute.getEntity();
        if (entity != null) {
            httpResponseExecute.setEntity(new BufferedHttpEntityHC4(entity));
        }
        httpClientConnection.close();
        throw new TunnelRefusedException("CONNECT refused by proxy: " + httpResponseExecute.getStatusLine(), httpResponseExecute);
    }

    private boolean createTunnelToProxy(HttpRoute httpRoute, int i, HttpClientContext httpClientContext) throws HttpException {
        throw new HttpException("Proxy chains are not supported.");
    }

    private boolean needAuthentication(AuthStateHC4 authStateHC4, AuthStateHC4 authStateHC42, HttpRoute httpRoute, HttpResponse httpResponse, HttpClientContext httpClientContext) {
        if (httpClientContext.getRequestConfig().isAuthenticationEnabled()) {
            HttpHost targetHost = httpClientContext.getTargetHost();
            if (targetHost == null) {
                targetHost = httpRoute.getTargetHost();
            }
            HttpHost httpHost = targetHost.getPort() < 0 ? new HttpHost(targetHost.getHostName(), httpRoute.getTargetHost().getPort(), targetHost.getSchemeName()) : targetHost;
            boolean zIsAuthenticationRequested = this.authenticator.isAuthenticationRequested(httpHost, httpResponse, this.targetAuthStrategy, authStateHC4, httpClientContext);
            HttpHost proxyHost = httpRoute.getProxyHost();
            if (proxyHost == null) {
                proxyHost = httpRoute.getTargetHost();
            }
            boolean zIsAuthenticationRequested2 = this.authenticator.isAuthenticationRequested(proxyHost, httpResponse, this.proxyAuthStrategy, authStateHC42, httpClientContext);
            if (zIsAuthenticationRequested) {
                return this.authenticator.handleAuthChallenge(httpHost, httpResponse, this.targetAuthStrategy, authStateHC4, httpClientContext);
            }
            if (zIsAuthenticationRequested2) {
                return this.authenticator.handleAuthChallenge(proxyHost, httpResponse, this.proxyAuthStrategy, authStateHC42, httpClientContext);
            }
        }
        return false;
    }
}
