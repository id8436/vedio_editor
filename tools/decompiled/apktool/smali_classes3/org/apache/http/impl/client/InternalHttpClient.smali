.class Lorg/apache/http/impl/client/InternalHttpClient;
.super Lorg/apache/http/impl/client/CloseableHttpClient;
.source "InternalHttpClient.java"


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final authSchemeRegistry:Lorg/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private final connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private final cookieSpecRegistry:Lorg/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final cookieStore:Lorg/apache/http/client/CookieStore;

.field private final credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

.field private final defaultConfig:Lorg/apache/http/client/config/RequestConfig;

.field private final execChain:Lorg/apache/http/impl/execchain/ClientExecChain;

.field private final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/config/Lookup;Lorg/apache/http/config/Lookup;Lorg/apache/http/client/CookieStore;Lorg/apache/http/client/CredentialsProvider;Lorg/apache/http/client/config/RequestConfig;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/execchain/ClientExecChain;",
            "Lorg/apache/http/conn/HttpClientConnectionManager;",
            "Lorg/apache/http/conn/routing/HttpRoutePlanner;",
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;",
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/auth/AuthSchemeProvider;",
            ">;",
            "Lorg/apache/http/client/CookieStore;",
            "Lorg/apache/http/client/CredentialsProvider;",
            "Lorg/apache/http/client/config/RequestConfig;",
            "Ljava/util/List",
            "<",
            "Ljava/io/Closeable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/apache/http/impl/client/CloseableHttpClient;-><init>()V

    .line 103
    const-string/jumbo v0, "HTTP client exec chain"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v0, "HTTP connection manager"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v0, "HTTP route planner"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    iput-object p1, p0, Lorg/apache/http/impl/client/InternalHttpClient;->execChain:Lorg/apache/http/impl/execchain/ClientExecChain;

    .line 107
    iput-object p2, p0, Lorg/apache/http/impl/client/InternalHttpClient;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 108
    iput-object p3, p0, Lorg/apache/http/impl/client/InternalHttpClient;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 109
    iput-object p4, p0, Lorg/apache/http/impl/client/InternalHttpClient;->cookieSpecRegistry:Lorg/apache/http/config/Lookup;

    .line 110
    iput-object p5, p0, Lorg/apache/http/impl/client/InternalHttpClient;->authSchemeRegistry:Lorg/apache/http/config/Lookup;

    .line 111
    iput-object p6, p0, Lorg/apache/http/impl/client/InternalHttpClient;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 112
    iput-object p7, p0, Lorg/apache/http/impl/client/InternalHttpClient;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 113
    iput-object p8, p0, Lorg/apache/http/impl/client/InternalHttpClient;->defaultConfig:Lorg/apache/http/client/config/RequestConfig;

    .line 114
    iput-object p9, p0, Lorg/apache/http/impl/client/InternalHttpClient;->closeables:Ljava/util/List;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lorg/apache/http/impl/client/InternalHttpClient;)Lorg/apache/http/conn/HttpClientConnectionManager;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/http/impl/client/InternalHttpClient;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    return-object v0
.end method

.method private determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 121
    .line 122
    if-nez p1, :cond_0

    .line 123
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.default-host"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 125
    :goto_0
    const-string/jumbo v1, "Target host"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lorg/apache/http/impl/client/InternalHttpClient;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    invoke-interface {v1, v0, p2, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private setupContext(Lorg/apache/http/client/protocol/HttpClientContext;)V
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "http.auth.target-scope"

    invoke-virtual {p1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    const-string/jumbo v0, "http.auth.target-scope"

    new-instance v1, Lorg/apache/http/auth/AuthStateHC4;

    invoke-direct {v1}, Lorg/apache/http/auth/AuthStateHC4;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    :cond_0
    const-string/jumbo v0, "http.auth.proxy-scope"

    invoke-virtual {p1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 134
    const-string/jumbo v0, "http.auth.proxy-scope"

    new-instance v1, Lorg/apache/http/auth/AuthStateHC4;

    invoke-direct {v1}, Lorg/apache/http/auth/AuthStateHC4;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    :cond_1
    const-string/jumbo v0, "http.authscheme-registry"

    invoke-virtual {p1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 137
    const-string/jumbo v0, "http.authscheme-registry"

    iget-object v1, p0, Lorg/apache/http/impl/client/InternalHttpClient;->authSchemeRegistry:Lorg/apache/http/config/Lookup;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    :cond_2
    const-string/jumbo v0, "http.cookiespec-registry"

    invoke-virtual {p1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 140
    const-string/jumbo v0, "http.cookiespec-registry"

    iget-object v1, p0, Lorg/apache/http/impl/client/InternalHttpClient;->cookieSpecRegistry:Lorg/apache/http/config/Lookup;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_3
    const-string/jumbo v0, "http.cookie-store"

    invoke-virtual {p1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 143
    const-string/jumbo v0, "http.cookie-store"

    iget-object v1, p0, Lorg/apache/http/impl/client/InternalHttpClient;->cookieStore:Lorg/apache/http/client/CookieStore;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    :cond_4
    const-string/jumbo v0, "http.auth.credentials-provider"

    invoke-virtual {p1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 146
    const-string/jumbo v0, "http.auth.credentials-provider"

    iget-object v1, p0, Lorg/apache/http/impl/client/InternalHttpClient;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_5
    const-string/jumbo v0, "http.request-config"

    invoke-virtual {p1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 149
    const-string/jumbo v0, "http.request-config"

    iget-object v1, p0, Lorg/apache/http/impl/client/InternalHttpClient;->defaultConfig:Lorg/apache/http/client/config/RequestConfig;

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    :cond_6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/http/impl/client/InternalHttpClient;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/HttpClientConnectionManager;->shutdown()V

    .line 194
    iget-object v0, p0, Lorg/apache/http/impl/client/InternalHttpClient;->closeables:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/apache/http/impl/client/InternalHttpClient;->closeables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    .line 197
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string/jumbo v2, "HttpClient"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method protected doExecute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    const-string/jumbo v1, "HTTP request"

    invoke-static {p2, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    instance-of v1, p2, Lorg/apache/http/client/methods/HttpExecutionAware;

    if-eqz v1, :cond_5

    move-object v1, p2

    .line 161
    check-cast v1, Lorg/apache/http/client/methods/HttpExecutionAware;

    move-object v4, v1

    .line 164
    :goto_0
    :try_start_0
    invoke-static {p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->wrap(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/HttpRequestWrapper;

    move-result-object v5

    .line 165
    if-eqz p3, :cond_2

    :goto_1
    invoke-static {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v6

    .line 168
    instance-of v1, p2, Lorg/apache/http/client/methods/Configurable;

    if-eqz v1, :cond_0

    .line 169
    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/methods/Configurable;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/Configurable;->getConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v3

    .line 171
    :cond_0
    if-nez v3, :cond_4

    .line 172
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 173
    instance-of v1, v2, Lorg/apache/http/params/HttpParamsNames;

    if-eqz v1, :cond_3

    .line 174
    move-object v0, v2

    check-cast v0, Lorg/apache/http/params/HttpParamsNames;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/params/HttpParamsNames;->getNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 175
    invoke-static {v2}, Lorg/apache/http/client/params/HttpClientParamConfig;->getRequestConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/config/RequestConfig;

    move-result-object v1

    .line 181
    :goto_2
    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {v6, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setRequestConfig(Lorg/apache/http/client/config/RequestConfig;)V

    .line 184
    :cond_1
    invoke-direct {p0, v6}, Lorg/apache/http/impl/client/InternalHttpClient;->setupContext(Lorg/apache/http/client/protocol/HttpClientContext;)V

    .line 185
    invoke-direct {p0, p1, v5, v6}, Lorg/apache/http/impl/client/InternalHttpClient;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lorg/apache/http/impl/client/InternalHttpClient;->execChain:Lorg/apache/http/impl/execchain/ClientExecChain;

    invoke-interface {v2, v1, v5, v6, v4}, Lorg/apache/http/impl/execchain/ClientExecChain;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v1

    return-object v1

    .line 165
    :cond_2
    new-instance p3, Lorg/apache/http/protocol/BasicHttpContextHC4;

    invoke-direct {p3}, Lorg/apache/http/protocol/BasicHttpContextHC4;-><init>()V
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v1

    .line 188
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v2, v1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 178
    :cond_3
    :try_start_1
    invoke-static {v2}, Lorg/apache/http/client/params/HttpClientParamConfig;->getRequestConfig(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/config/RequestConfig;
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v3

    goto :goto_2

    :cond_5
    move-object v4, v3

    goto :goto_0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lorg/apache/http/impl/client/InternalHttpClient$1;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/InternalHttpClient$1;-><init>(Lorg/apache/http/impl/client/InternalHttpClient;)V

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
