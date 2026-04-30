.class public Lorg/apache/http/impl/execchain/RedirectExec;
.super Ljava/lang/Object;
.source "RedirectExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

.field private final requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

.field private final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/client/RedirectStrategy;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string/jumbo v0, "HTTP client request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v0, "HTTP route planner"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v0, "HTTP redirect strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lorg/apache/http/impl/execchain/RedirectExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    .line 85
    iput-object p2, p0, Lorg/apache/http/impl/execchain/RedirectExec;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 86
    iput-object p3, p0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    .line 87
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 94
    const-string/jumbo v1, "HTTP route"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v1, "HTTP request"

    invoke-static {p2, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v1, "HTTP context"

    invoke-static {p3, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRedirectLocations()Ljava/util/List;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 103
    :cond_0
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v5

    .line 104
    invoke-virtual {v5}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v5}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v1

    move v3, v1

    .line 107
    :goto_0
    const/4 v1, 0x0

    move-object v2, p2

    .line 108
    :goto_1
    iget-object v4, p0, Lorg/apache/http/impl/execchain/RedirectExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    invoke-interface {v4, p1, v2, p3, p4}, Lorg/apache/http/impl/execchain/ClientExecChain;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v6

    .line 111
    :try_start_0
    invoke-virtual {v5}, Lorg/apache/http/client/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    invoke-interface {v4, v2, v6, p3}, Lorg/apache/http/client/RedirectStrategy;->isRedirected(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 114
    if-lt v1, v3, :cond_2

    .line 115
    new-instance v1, Lorg/apache/http/client/RedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Maximum redirects ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") exceeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    :catch_0
    move-exception v1

    .line 169
    invoke-interface {v6}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 170
    throw v1

    .line 104
    :cond_1
    const/16 v1, 0x32

    move v3, v1

    goto :goto_0

    .line 117
    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 119
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    invoke-interface {v1, v2, v6, p3}, Lorg/apache/http/client/RedirectStrategy;->getRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 122
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v2

    .line 123
    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/http/HttpRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 125
    :cond_3
    invoke-static {v1}, Lorg/apache/http/client/methods/HttpRequestWrapper;->wrap(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/HttpRequestWrapper;

    move-result-object v2

    .line 127
    instance-of v1, v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_4

    .line 128
    move-object v0, v2

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v1, v0

    invoke-static {v1}, Lorg/apache/http/impl/execchain/Proxies;->enhanceEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 131
    :cond_4
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lorg/apache/http/client/utils/URIUtilsHC4;->extractHost(Ljava/net/URI;)Lorg/apache/http/HttpHost;

    move-result-object v7

    .line 133
    if-nez v7, :cond_5

    .line 134
    new-instance v2, Lorg/apache/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    :catch_1
    move-exception v1

    .line 172
    invoke-interface {v6}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 173
    throw v1

    .line 139
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 140
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v8

    .line 141
    if-eqz v8, :cond_7

    .line 142
    const-string/jumbo v9, "HttpClient"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 143
    const-string/jumbo v9, "HttpClient"

    const-string/jumbo v10, "Resetting target auth state"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_6
    invoke-virtual {v8}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 147
    :cond_7
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v8

    .line 148
    if-eqz v8, :cond_9

    .line 149
    invoke-virtual {v8}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v9

    .line 150
    if-eqz v9, :cond_9

    invoke-interface {v9}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 151
    const-string/jumbo v9, "HttpClient"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 152
    const-string/jumbo v9, "HttpClient"

    const-string/jumbo v10, "Resetting proxy auth state"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_8
    invoke-virtual {v8}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 159
    :cond_9
    iget-object v8, p0, Lorg/apache/http/impl/execchain/RedirectExec;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    invoke-interface {v8, v7, v2, p3}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    .line 160
    const-string/jumbo v7, "HttpClient"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 161
    const-string/jumbo v7, "HttpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Redirecting to \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, "\' via "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_a
    invoke-interface {v6}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    .line 164
    invoke-interface {v6}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v4

    .line 186
    goto/16 :goto_1

    .line 174
    :catch_2
    move-exception v1

    .line 178
    :try_start_3
    invoke-interface {v6}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    invoke-interface {v6}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 184
    :goto_2
    throw v1

    .line 179
    :catch_3
    move-exception v2

    .line 180
    :try_start_4
    const-string/jumbo v3, "HttpClient"

    const-string/jumbo v4, "I/O error while releasing connection"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    invoke-interface {v6}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    throw v1

    .line 166
    :cond_b
    return-object v6
.end method
