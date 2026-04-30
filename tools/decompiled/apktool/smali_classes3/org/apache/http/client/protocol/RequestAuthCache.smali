.class public Lorg/apache/http/client/protocol/RequestAuthCache;
.super Ljava/lang/Object;
.source "RequestAuthCache.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private doPreemptiveAuth(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/client/CredentialsProvider;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 121
    invoke-interface {p2}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "HttpClient"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string/jumbo v1, "HttpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Re-using cached \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    new-instance v1, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    sget-object v4, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-interface {p4, v1}, Lorg/apache/http/client/CredentialsProvider;->getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    const-string/jumbo v1, "BASIC"

    invoke-interface {p2}, Lorg/apache/http/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    sget-object v1, Lorg/apache/http/auth/AuthProtocolState;->CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p3, v1}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    .line 135
    :goto_0
    invoke-virtual {p3, p2, v0}, Lorg/apache/http/auth/AuthStateHC4;->update(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;)V

    .line 141
    :cond_1
    :goto_1
    return-void

    .line 133
    :cond_2
    sget-object v1, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    invoke-virtual {p3, v1}, Lorg/apache/http/auth/AuthStateHC4;->setState(Lorg/apache/http/auth/AuthProtocolState;)V

    goto :goto_0

    .line 137
    :cond_3
    const-string/jumbo v0, "HttpClient"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string/jumbo v0, "HttpClient"

    const-string/jumbo v1, "No credentials for preemptive authentication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 68
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v0, "HTTP context"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    invoke-static {p2}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lorg/apache/http/client/protocol/HttpClientContext;->getAuthCache()Lorg/apache/http/client/AuthCache;

    move-result-object v3

    .line 74
    if-nez v3, :cond_1

    .line 75
    const-string/jumbo v0, "HttpClient"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "HttpClient"

    const-string/jumbo v1, "Auth cache not set in the context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {v2}, Lorg/apache/http/client/protocol/HttpClientContext;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v4

    .line 82
    if-nez v4, :cond_2

    .line 83
    const-string/jumbo v0, "HttpClient"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v0, "HttpClient"

    const-string/jumbo v1, "Credentials provider not set in the context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v2}, Lorg/apache/http/client/protocol/HttpClientContext;->getHttpRoute()Lorg/apache/http/conn/routing/RouteInfo;

    move-result-object v5

    .line 90
    invoke-virtual {v2}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_4

    .line 92
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v7

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v7, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    :goto_1
    invoke-virtual {v2}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v6

    sget-object v7, Lorg/apache/http/auth/AuthProtocolState;->UNCHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v6, v7, :cond_3

    .line 100
    invoke-interface {v3, v0}, Lorg/apache/http/client/AuthCache;->get(Lorg/apache/http/HttpHost;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v6

    .line 101
    if-eqz v6, :cond_3

    .line 102
    invoke-direct {p0, v0, v6, v1, v4}, Lorg/apache/http/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/client/CredentialsProvider;)V

    .line 106
    :cond_3
    invoke-interface {v5}, Lorg/apache/http/conn/routing/RouteInfo;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 107
    invoke-virtual {v2}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v1

    .line 108
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v2

    sget-object v5, Lorg/apache/http/auth/AuthProtocolState;->UNCHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v2, v5, :cond_0

    .line 109
    invoke-interface {v3, v0}, Lorg/apache/http/client/AuthCache;->get(Lorg/apache/http/HttpHost;)Lorg/apache/http/auth/AuthScheme;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_0

    .line 111
    invoke-direct {p0, v0, v2, v1, v4}, Lorg/apache/http/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/client/CredentialsProvider;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
