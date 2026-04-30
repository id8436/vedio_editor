.class public Lorg/apache/http/impl/execchain/MinimalClientExec;
.super Ljava/lang/Object;
.source "MinimalClientExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    .locals 7

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string/jumbo v0, "HTTP request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v0, "Client connection manager"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/HttpRequestInterceptor;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/protocol/RequestContentHC4;

    invoke-direct {v3}, Lorg/apache/http/protocol/RequestContentHC4;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/protocol/RequestTargetHostHC4;

    invoke-direct {v3}, Lorg/apache/http/protocol/RequestTargetHostHC4;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v3}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/http/protocol/RequestUserAgentHC4;

    const-string/jumbo v4, "Apache-HttpClient"

    const-string/jumbo v5, "org.apache.http.client"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/http/util/VersionInfoHC4;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/protocol/RequestUserAgentHC4;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 106
    iput-object p1, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 107
    iput-object p2, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 108
    iput-object p3, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 109
    iput-object p4, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 110
    return-void
.end method

.method static rewriteRequestURI(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    .line 124
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V

    .line 129
    :cond_0
    return-void

    .line 122
    :cond_1
    invoke-static {v0}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 136
    const-string/jumbo v0, "HTTP route"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-static {p2, p1}, Lorg/apache/http/impl/execchain/MinimalClientExec;->rewriteRequestURI(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 142
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v0, p1, v1}, Lorg/apache/http/conn/HttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;

    move-result-object v0

    .line 143
    if-eqz p4, :cond_1

    .line 144
    invoke-interface {p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v0}, Lorg/apache/http/conn/ConnectionRequest;->cancel()Z

    .line 146
    new-instance v0, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v1, "Request aborted"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-interface {p4, v0}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    .line 152
    :cond_1
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v4

    .line 156
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v2

    .line 157
    if-lez v2, :cond_2

    int-to-long v2, v2

    :goto_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v5}, Lorg/apache/http/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 169
    new-instance v3, Lorg/apache/http/impl/execchain/ConnectionHolder;

    iget-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-direct {v3, v0, v2}, Lorg/apache/http/impl/execchain/ConnectionHolder;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V

    .line 171
    if-eqz p4, :cond_4

    .line 172
    :try_start_1
    invoke-interface {p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->close()V

    .line 174
    new-instance v0, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v1, "Request aborted"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 234
    :catch_0
    move-exception v0

    .line 235
    new-instance v1, Ljava/io/InterruptedIOException;

    const-string/jumbo v2, "Connection has been shut down"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 238
    throw v1

    .line 157
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 160
    new-instance v1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v2, "Request aborted"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 161
    :catch_2
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 163
    if-nez v1, :cond_d

    .line 166
    :goto_1
    new-instance v1, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string/jumbo v2, "Request execution failed"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 176
    :cond_3
    :try_start_2
    invoke-interface {p4, v3}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    .line 180
    :cond_4
    invoke-interface {v2}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 181
    invoke-virtual {v4}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v0

    .line 182
    iget-object v5, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v0, :cond_9

    :goto_2
    invoke-interface {v5, v2, p1, v0, p3}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 187
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v0, v2, p1, p3}, Lorg/apache/http/conn/HttpClientConnectionManager;->routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    .line 189
    :cond_5
    invoke-virtual {v4}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result v0

    .line 190
    if-ltz v0, :cond_6

    .line 191
    invoke-interface {v2, v0}, Lorg/apache/http/HttpClientConnection;->setSocketTimeout(I)V

    .line 195
    :cond_6
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v0

    .line 196
    instance-of v4, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v4, :cond_c

    .line 197
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    .line 198
    invoke-virtual {v4}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 199
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v5, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    :goto_3
    if-nez v0, :cond_7

    .line 203
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 206
    :cond_7
    const-string/jumbo v1, "http.target_host"

    invoke-virtual {p3, v1, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    const-string/jumbo v0, "http.request"

    invoke-virtual {p3, v0, p2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    const-string/jumbo v0, "http.connection"

    invoke-virtual {p3, v0, v2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string/jumbo v0, "http.route"

    invoke-virtual {p3, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v0, p2, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 212
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-virtual {v0, p2, v2, p3}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v1, v0, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 216
    iget-object v1, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v1, v0, p3}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 218
    iget-object v1, p0, Lorg/apache/http/impl/execchain/MinimalClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v1, v0, p3}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v4

    .line 219
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v1}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 220
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markReusable()V

    .line 226
    :goto_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_8

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_b

    .line 229
    :cond_8
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 230
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/impl/execchain/Proxies;->enhanceResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v0

    .line 232
    :goto_5
    return-object v0

    .line 182
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 222
    :cond_a
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markNonReusable()V
    :try_end_2
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    .line 239
    :catch_3
    move-exception v0

    .line 240
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 241
    throw v0

    .line 232
    :cond_b
    :try_start_3
    invoke-static {v0, v3}, Lorg/apache/http/impl/execchain/Proxies;->enhanceResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    :try_end_3
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    goto :goto_5

    .line 242
    :catch_4
    move-exception v0

    .line 243
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 244
    throw v0

    .line 245
    :catch_5
    move-exception v0

    .line 246
    invoke-virtual {v3}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 247
    throw v0

    :cond_c
    move-object v0, v1

    goto :goto_3

    :cond_d
    move-object v0, v1

    goto/16 :goto_1
.end method
