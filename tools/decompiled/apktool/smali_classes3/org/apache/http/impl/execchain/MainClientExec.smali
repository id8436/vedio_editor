.class public Lorg/apache/http/impl/execchain/MainClientExec;
.super Ljava/lang/Object;
.source "MainClientExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

.field private final connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private final proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private final routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

.field private final targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)V
    .locals 4

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string/jumbo v0, "HTTP request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v0, "Client connection manager"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v0, "Target authentication strategy"

    invoke-static {p5, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v0, "Proxy authentication strategy"

    invoke-static {p6, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "User token handler"

    invoke-static {p7, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    .line 120
    new-instance v0, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/HttpRequestInterceptor;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/protocol/RequestTargetHostHC4;

    invoke-direct {v3}, Lorg/apache/http/protocol/RequestTargetHostHC4;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v3}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 122
    new-instance v0, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

    .line 123
    iput-object p1, p0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 124
    iput-object p2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 125
    iput-object p3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 126
    iput-object p4, p0, Lorg/apache/http/impl/execchain/MainClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 127
    iput-object p5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 128
    iput-object p6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 129
    iput-object p7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 130
    return-void
.end method

.method private createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Lorg/apache/http/HttpException;

    const-string/jumbo v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createTunnelToTarget(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 445
    invoke-virtual {p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v8

    .line 446
    invoke-virtual {v8}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v6

    .line 448
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 449
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 452
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v0

    .line 453
    new-instance v9, Lorg/apache/http/message/BasicHttpRequest;

    const-string/jumbo v2, "CONNECT"

    invoke-interface {p4}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-direct {v9, v2, v0, v3}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 455
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-virtual {v0, v9, v2, p5}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 458
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    iget-object v2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v6, :cond_2

    move v0, v6

    :goto_1
    invoke-interface {v2, p2, p3, v0, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 466
    :cond_1
    const-string/jumbo v0, "Proxy-Authorization"

    invoke-interface {v9, v0}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-virtual {v0, v9, p1, p5}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V

    .line 469
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {v0, v9, p2, p5}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 471
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 472
    const/16 v3, 0xc8

    if-ge v0, v3, :cond_3

    .line 473
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

    :cond_2
    move v0, v7

    .line 459
    goto :goto_1

    .line 477
    :cond_3
    invoke-virtual {v8}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 480
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 483
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v0, v2, p5}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 484
    const-string/jumbo v0, "HttpClient"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 485
    const-string/jumbo v0, "HttpClient"

    const-string/jumbo v3, "Connection kept alive"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_4
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 489
    invoke-static {v0}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 491
    :cond_5
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    goto/16 :goto_0

    .line 502
    :cond_6
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 504
    const/16 v1, 0x12b

    if-le v0, v1, :cond_8

    .line 507
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_7

    .line 509
    new-instance v1, Lorg/apache/http/entity/BufferedHttpEntityHC4;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/BufferedHttpEntityHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 512
    :cond_7
    invoke-interface {p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 513
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

    .line 521
    :cond_8
    return v7
.end method

.method private needAuthentication(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 8

    .prologue
    .line 552
    invoke-virtual {p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 554
    invoke-virtual {p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 555
    if-nez v0, :cond_0

    .line 556
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 558
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    if-gez v1, :cond_4

    .line 559
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 564
    :goto_0
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v2, p4

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    .line 567
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    .line 569
    if-nez v3, :cond_1

    .line 570
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    .line 572
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v4, p4

    move-object v6, p2

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    .line 575
    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v2, p4

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    .line 584
    :goto_1
    return v0

    .line 579
    :cond_2
    if-eqz v2, :cond_3

    .line 580
    iget-object v2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v4, p4

    move-object v6, p2

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    goto :goto_1

    .line 584
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method establishRoute(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    .line 362
    invoke-virtual {p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v1

    .line 364
    new-instance v3, Lorg/apache/http/conn/routing/RouteTracker;

    invoke-direct {v3, p3}, Lorg/apache/http/conn/routing/RouteTracker;-><init>(Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 367
    :cond_0
    invoke-virtual {v3}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 368
    iget-object v4, p0, Lorg/apache/http/impl/execchain/MainClientExec;->routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

    invoke-interface {v4, p3, v0}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v4

    .line 370
    packed-switch v4, :pswitch_data_0

    .line 423
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown step indicator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from RouteDirector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :pswitch_0
    iget-object v5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v1, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v5, p2, p3, v0, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 378
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/apache/http/conn/routing/RouteTracker;->connectTarget(Z)V

    .line 427
    :goto_1
    if-gtz v4, :cond_0

    .line 428
    return-void

    :cond_1
    move v0, v2

    .line 373
    goto :goto_0

    .line 381
    :pswitch_1
    iget-object v5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v1, :cond_2

    move v0, v1

    :goto_2
    invoke-interface {v5, p2, p3, v0, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 386
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 387
    invoke-virtual {v3, v0, v2}, Lorg/apache/http/conn/routing/RouteTracker;->connectProxy(Lorg/apache/http/HttpHost;Z)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 381
    goto :goto_2

    .line 390
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lorg/apache/http/impl/execchain/MainClientExec;->createTunnelToTarget(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v0

    .line 392
    const-string/jumbo v5, "HttpClient"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 393
    const-string/jumbo v5, "HttpClient"

    const-string/jumbo v6, "Tunnel to target created."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_3
    invoke-virtual {v3, v0}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelTarget(Z)V

    goto :goto_1

    .line 403
    :pswitch_3
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 404
    invoke-direct {p0, p3, v0, p5}, Lorg/apache/http/impl/execchain/MainClientExec;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v5

    .line 405
    const-string/jumbo v6, "HttpClient"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 406
    const-string/jumbo v6, "HttpClient"

    const-string/jumbo v7, "Tunnel to proxy created."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_4
    invoke-virtual {p3, v0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelProxy(Lorg/apache/http/HttpHost;Z)V

    goto :goto_1

    .line 412
    :pswitch_4
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v0, p2, p3, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->upgrade(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    .line 413
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v0

    invoke-virtual {v3, v0}, Lorg/apache/http/conn/routing/RouteTracker;->layerProtocol(Z)V

    goto :goto_1

    .line 417
    :pswitch_5
    new-instance v1, Lorg/apache/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to establish route: planned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :pswitch_6
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v0, p2, p3, p5}, Lorg/apache/http/conn/HttpClientConnectionManager;->routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    goto/16 :goto_1

    .line 370
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 137
    const-string/jumbo v2, "HTTP route"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v2, "HTTP request"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v2, "HTTP context"

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v2

    .line 142
    if-nez v2, :cond_25

    .line 143
    new-instance v2, Lorg/apache/http/auth/AuthStateHC4;

    invoke-direct {v2}, Lorg/apache/http/auth/AuthStateHC4;-><init>()V

    .line 144
    const-string/jumbo v3, "http.auth.target-scope"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v11, v2

    .line 146
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v3

    .line 147
    if-nez v3, :cond_0

    .line 148
    new-instance v3, Lorg/apache/http/auth/AuthStateHC4;

    invoke-direct {v3}, Lorg/apache/http/auth/AuthStateHC4;-><init>()V

    .line 149
    const-string/jumbo v2, "http.auth.proxy-scope"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_0
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_1

    move-object/from16 v2, p2

    .line 153
    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-static {v2}, Lorg/apache/http/impl/execchain/Proxies;->enhanceEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 156
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v12

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v12}, Lorg/apache/http/conn/HttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;

    move-result-object v2

    .line 159
    if-eqz p4, :cond_3

    .line 160
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    invoke-interface {v2}, Lorg/apache/http/conn/ConnectionRequest;->cancel()Z

    .line 162
    new-instance v2, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v3, "Request aborted"

    invoke-direct {v2, v3}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_2
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    .line 168
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v14

    .line 172
    :try_start_0
    invoke-virtual {v14}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v4

    .line 173
    if-lez v4, :cond_8

    int-to-long v4, v4

    :goto_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v6}, Lorg/apache/http/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 185
    const-string/jumbo v2, "http.connection"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v14}, Lorg/apache/http/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    const-string/jumbo v2, "HttpClient"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    const-string/jumbo v2, "HttpClient"

    const-string/jumbo v5, "Stale connection check"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_4
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isStale()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 194
    const-string/jumbo v2, "HttpClient"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    const-string/jumbo v2, "HttpClient"

    const-string/jumbo v5, "Stale connection detected"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_5
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 202
    :cond_6
    new-instance v15, Lorg/apache/http/impl/execchain/ConnectionHolder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-direct {v15, v2, v4}, Lorg/apache/http/impl/execchain/ConnectionHolder;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V

    .line 204
    if-eqz p4, :cond_7

    .line 205
    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    .line 209
    :cond_7
    const/4 v2, 0x1

    move v13, v2

    .line 211
    :goto_2
    const/4 v2, 0x1

    if-le v13, v2, :cond_9

    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/execchain/Proxies;->isRepeatable(Lorg/apache/http/HttpRequest;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 212
    new-instance v2, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string/jumbo v3, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v2, v3}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 336
    :catch_0
    move-exception v2

    .line 337
    new-instance v3, Ljava/io/InterruptedIOException;

    const-string/jumbo v4, "Connection has been shut down"

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v3, v2}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 340
    throw v3

    .line 173
    :cond_8
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 174
    :catch_1
    move-exception v2

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 176
    new-instance v3, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v4, "Request aborted"

    invoke-direct {v3, v4, v2}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 177
    :catch_2
    move-exception v2

    .line 178
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 179
    if-nez v3, :cond_24

    .line 182
    :goto_3
    new-instance v3, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v4, "Request execution failed"

    invoke-direct {v3, v4, v2}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 216
    :cond_9
    if-eqz p4, :cond_a

    :try_start_2
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 217
    new-instance v2, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v3, "Request aborted"

    invoke-direct {v2, v3}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    .line 341
    :catch_3
    move-exception v2

    .line 342
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 343
    throw v2

    .line 220
    :cond_a
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_c

    .line 221
    const-string/jumbo v2, "HttpClient"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 222
    const-string/jumbo v2, "HttpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Opening connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_b
    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 225
    :try_start_4
    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/execchain/MainClientExec;->establishRoute(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    :try_end_4
    .catch Lorg/apache/http/impl/execchain/TunnelRefusedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 234
    :cond_c
    :try_start_5
    invoke-virtual {v14}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result v2

    .line 235
    if-ltz v2, :cond_d

    .line 236
    invoke-interface {v4, v2}, Lorg/apache/http/HttpClientConnection;->setSocketTimeout(I)V

    .line 239
    :cond_d
    if-eqz p4, :cond_12

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 240
    new-instance v2, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v3, "Request aborted"

    invoke-direct {v2, v3}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 344
    :catch_4
    move-exception v2

    .line 345
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 346
    throw v2

    .line 226
    :catch_5
    move-exception v2

    .line 227
    :try_start_6
    const-string/jumbo v3, "HttpClient"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 228
    const-string/jumbo v3, "HttpClient"

    invoke-virtual {v2}, Lorg/apache/http/impl/execchain/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_e
    invoke-virtual {v2}, Lorg/apache/http/impl/execchain/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 319
    :cond_f
    if-nez v12, :cond_23

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v2

    .line 321
    const-string/jumbo v3, "http.user-token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    :goto_4
    if-eqz v2, :cond_10

    .line 324
    invoke-virtual {v15, v2}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setState(Ljava/lang/Object;)V

    .line 328
    :cond_10
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 329
    if-eqz v2, :cond_11

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v2

    if-nez v2, :cond_22

    .line 331
    :cond_11
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 332
    const/4 v2, 0x0

    invoke-static {v9, v2}, Lorg/apache/http/impl/execchain/Proxies;->enhanceResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v2

    .line 334
    :goto_5
    return-object v2

    .line 243
    :cond_12
    const-string/jumbo v2, "HttpClient"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 244
    const-string/jumbo v2, "HttpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Executing request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_13
    const-string/jumbo v2, "Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 248
    const-string/jumbo v2, "HttpClient"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 249
    const-string/jumbo v2, "HttpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Target auth state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v11, v1}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V

    .line 253
    :cond_15
    const-string/jumbo v2, "Proxy-Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v2

    if-nez v2, :cond_17

    .line 254
    const-string/jumbo v2, "HttpClient"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 255
    const-string/jumbo v2, "HttpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Proxy auth state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v3, v1}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V

    .line 260
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v4, v1}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v0, p3

    invoke-interface {v2, v9, v0}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/execchain/MainClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v0, p3

    invoke-interface {v2, v9, v0}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v6

    .line 266
    const-string/jumbo v2, "HttpClient"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 268
    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-lez v2, :cond_1c

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    :goto_6
    const-string/jumbo v5, "HttpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Connection can be kept alive "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_18
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v6, v7, v2}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 276
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markReusable()V

    :goto_7
    move-object/from16 v5, p0

    move-object v6, v11

    move-object v7, v3

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    .line 281
    invoke-direct/range {v5 .. v10}, Lorg/apache/http/impl/execchain/MainClientExec;->needAuthentication(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 284
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 285
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 286
    invoke-static {v2}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    .line 307
    :cond_19
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v2

    .line 308
    const-string/jumbo v5, "Authorization"

    invoke-interface {v2, v5}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 309
    const-string/jumbo v5, "Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/apache/http/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 311
    :cond_1a
    const-string/jumbo v5, "Proxy-Authorization"

    invoke-interface {v2, v5}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 312
    const-string/jumbo v2, "Proxy-Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 209
    :cond_1b
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_2

    .line 271
    :cond_1c
    const-string/jumbo v2, "indefinitely"

    goto :goto_6

    .line 278
    :cond_1d
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markNonReusable()V
    :try_end_6
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    .line 347
    :catch_6
    move-exception v2

    .line 348
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 349
    throw v2

    .line 288
    :cond_1e
    :try_start_7
    invoke-interface {v4}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 289
    invoke-virtual {v3}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v2

    sget-object v5, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v2, v5, :cond_20

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v3}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 292
    const-string/jumbo v2, "HttpClient"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 293
    const-string/jumbo v2, "HttpClient"

    const-string/jumbo v5, "Resetting proxy auth state"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1f
    invoke-virtual {v3}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 297
    :cond_20
    invoke-virtual {v11}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v2

    sget-object v5, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v2, v5, :cond_19

    invoke-virtual {v11}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v11}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 300
    const-string/jumbo v2, "HttpClient"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 301
    const-string/jumbo v2, "HttpClient"

    const-string/jumbo v5, "Resetting target auth state"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_21
    invoke-virtual {v11}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    goto/16 :goto_8

    .line 334
    :cond_22
    invoke-static {v9, v15}, Lorg/apache/http/impl/execchain/Proxies;->enhanceResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    :try_end_7
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v2

    goto/16 :goto_5

    :cond_23
    move-object v2, v12

    goto/16 :goto_4

    :cond_24
    move-object v2, v3

    goto/16 :goto_3

    :cond_25
    move-object v11, v2

    goto/16 :goto_0
.end method
