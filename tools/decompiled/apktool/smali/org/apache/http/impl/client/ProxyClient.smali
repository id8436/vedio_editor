.class public Lorg/apache/http/impl/client/ProxyClient;
.super Ljava/lang/Object;
.source "ProxyClient.java"


# instance fields
.field private final authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

.field private final authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

.field private final connFactory:Lorg/apache/http/conn/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/conn/HttpConnectionFactory",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionConfig:Lorg/apache/http/config/ConnectionConfig;

.field private final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

.field private final proxyAuthStrategy:Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

.field private final requestConfig:Lorg/apache/http/client/config/RequestConfig;

.field private final requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/http/impl/client/ProxyClient;-><init>(Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/client/config/RequestConfig;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/config/RequestConfig;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0, v0, p1}, Lorg/apache/http/impl/client/ProxyClient;-><init>(Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/client/config/RequestConfig;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/client/config/RequestConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/HttpConnectionFactory",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/http/config/ConnectionConfig;",
            "Lorg/apache/http/client/config/RequestConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/client/ProxyClient;->connFactory:Lorg/apache/http/conn/HttpConnectionFactory;

    .line 105
    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lorg/apache/http/impl/client/ProxyClient;->connectionConfig:Lorg/apache/http/config/ConnectionConfig;

    .line 106
    if-eqz p3, :cond_2

    :goto_2
    iput-object p3, p0, Lorg/apache/http/impl/client/ProxyClient;->requestConfig:Lorg/apache/http/client/config/RequestConfig;

    .line 107
    new-instance v0, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/HttpRequestInterceptor;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/protocol/RequestTargetHostHC4;

    invoke-direct {v3}, Lorg/apache/http/protocol/RequestTargetHostHC4;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v3}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/protocol/RequestUserAgentHC4;

    invoke-direct {v3}, Lorg/apache/http/protocol/RequestUserAgentHC4;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 109
    new-instance v0, Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 110
    new-instance v0, Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthStrategy:Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

    .line 111
    new-instance v0, Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    .line 112
    new-instance v0, Lorg/apache/http/auth/AuthStateHC4;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthStateHC4;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

    .line 113
    new-instance v0, Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthSchemeRegistry;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    .line 114
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    const-string/jumbo v1, "Basic"

    new-instance v2, Lorg/apache/http/impl/auth/BasicSchemeFactoryHC4;

    invoke-direct {v2}, Lorg/apache/http/impl/auth/BasicSchemeFactoryHC4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 115
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    const-string/jumbo v1, "Digest"

    new-instance v2, Lorg/apache/http/impl/auth/DigestSchemeFactoryHC4;

    invoke-direct {v2}, Lorg/apache/http/impl/auth/DigestSchemeFactoryHC4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 116
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    const-string/jumbo v1, "NTLM"

    new-instance v2, Lorg/apache/http/impl/auth/NTLMSchemeFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/auth/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 117
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 118
    return-void

    .line 104
    :cond_0
    sget-object p1, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;

    goto :goto_0

    .line 105
    :cond_1
    sget-object p2, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    goto :goto_1

    .line 106
    :cond_2
    sget-object p3, Lorg/apache/http/client/config/RequestConfig;->DEFAULT:Lorg/apache/http/client/config/RequestConfig;

    goto :goto_2
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p1}, Lorg/apache/http/params/HttpParamConfig;->getConnectionConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/ConnectionConfig;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/http/client/params/HttpClientParamConfig;->getRequestConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/config/RequestConfig;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/impl/client/ProxyClient;-><init>(Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/config/ConnectionConfig;Lorg/apache/http/client/config/RequestConfig;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getAuthSchemeRegistry()Lorg/apache/http/auth/AuthSchemeRegistry;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    return-object v0
.end method

.method public tunnel(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Lorg/apache/http/auth/Credentials;)Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 161
    const-string/jumbo v0, "Proxy host"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v0, "Target host"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v0, "Credentials"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    if-gtz v0, :cond_6

    .line 166
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x50

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    :goto_0
    new-instance v0, Lorg/apache/http/conn/routing/HttpRoute;

    iget-object v2, p0, Lorg/apache/http/impl/client/ProxyClient;->requestConfig:Lorg/apache/http/client/config/RequestConfig;

    invoke-virtual {v2}, Lorg/apache/http/client/config/RequestConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v4, 0x0

    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    .line 173
    iget-object v2, p0, Lorg/apache/http/impl/client/ProxyClient;->connFactory:Lorg/apache/http/conn/HttpConnectionFactory;

    iget-object v3, p0, Lorg/apache/http/impl/client/ProxyClient;->connectionConfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-interface {v2, v0, v3}, Lorg/apache/http/conn/HttpConnectionFactory;->create(Ljava/lang/Object;Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/HttpConnection;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/apache/http/conn/ManagedHttpClientConnection;

    .line 175
    new-instance v5, Lorg/apache/http/protocol/BasicHttpContextHC4;

    invoke-direct {v5}, Lorg/apache/http/protocol/BasicHttpContextHC4;-><init>()V

    .line 178
    new-instance v7, Lorg/apache/http/message/BasicHttpRequest;

    const-string/jumbo v2, "CONNECT"

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-direct {v7, v2, v1, v3}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 181
    new-instance v1, Lorg/apache/http/impl/client/BasicCredentialsProviderHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/client/BasicCredentialsProviderHC4;-><init>()V

    .line 182
    new-instance v2, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p3}, Lorg/apache/http/impl/client/BasicCredentialsProviderHC4;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 185
    const-string/jumbo v2, "http.target_host"

    invoke-interface {v5, v2, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-string/jumbo v2, "http.connection"

    invoke-interface {v5, v2, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string/jumbo v2, "http.request"

    invoke-interface {v5, v2, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-string/jumbo v2, "http.route"

    invoke-interface {v5, v2, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string/jumbo v0, "http.auth.proxy-scope"

    iget-object v2, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

    invoke-interface {v5, v0, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const-string/jumbo v0, "http.auth.credentials-provider"

    invoke-interface {v5, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string/jumbo v0, "http.authscheme-registry"

    iget-object v1, p0, Lorg/apache/http/impl/client/ProxyClient;->authSchemeRegistry:Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-interface {v5, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const-string/jumbo v0, "http.request-config"

    iget-object v1, p0, Lorg/apache/http/impl/client/ProxyClient;->requestConfig:Lorg/apache/http/client/config/RequestConfig;

    invoke-interface {v5, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lorg/apache/http/impl/client/ProxyClient;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v0, v7, v1, v5}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 197
    :goto_1
    invoke-interface {v6}, Lorg/apache/http/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 199
    invoke-interface {v6, v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v1, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

    invoke-virtual {v0, v7, v1, v5}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V

    .line 204
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {v0, v7, v6, v5}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 206
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 207
    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    .line 208
    new-instance v0, Lorg/apache/http/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected response to CONNECT request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthStrategy:Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

    iget-object v4, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthStrategy:Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

    iget-object v4, p0, Lorg/apache/http/impl/client/ProxyClient;->proxyAuthState:Lorg/apache/http/auth/AuthStateHC4;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lorg/apache/http/impl/client/ProxyClient;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v0, v2, v5}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    .line 224
    :goto_2
    const-string/jumbo v0, "Proxy-Authorization"

    invoke-interface {v7, v0}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_2
    invoke-interface {v6}, Lorg/apache/http/conn/ManagedHttpClientConnection;->close()V

    goto :goto_2

    .line 233
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 235
    const/16 v1, 0x12b

    if-le v0, v1, :cond_5

    .line 238
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_4

    .line 240
    new-instance v1, Lorg/apache/http/entity/BufferedHttpEntityHC4;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/BufferedHttpEntityHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 243
    :cond_4
    invoke-interface {v6}, Lorg/apache/http/conn/ManagedHttpClientConnection;->close()V

    .line 244
    new-instance v0, Lorg/apache/http/impl/execchain/TunnelRefusedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CONNECT refused by proxy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/execchain/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw v0

    .line 247
    :cond_5
    invoke-interface {v6}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_6
    move-object v1, p2

    goto/16 :goto_0
.end method
