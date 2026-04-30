.class public Lorg/apache/http/impl/execchain/ProtocolExec;
.super Ljava/lang/Object;
.source "ProtocolExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/protocol/HttpProcessor;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string/jumbo v0, "HTTP client request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v0, "HTTP protocol processor"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lorg/apache/http/impl/execchain/ProtocolExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    .line 84
    iput-object p2, p0, Lorg/apache/http/impl/execchain/ProtocolExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 85
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v6, -0x1

    .line 122
    const-string/jumbo v0, "HTTP route"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v0

    .line 128
    instance-of v1, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_4

    .line 129
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    move-object v1, v0

    .line 142
    :goto_0
    invoke-virtual {p2, v1}, Lorg/apache/http/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V

    .line 145
    invoke-virtual {p0, p2, p1}, Lorg/apache/http/impl/execchain/ProtocolExec;->rewriteRequestURI(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 147
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 148
    const-string/jumbo v3, "http.virtual-host"

    invoke-interface {v0, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpHost;

    .line 150
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 151
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    .line 152
    if-eq v4, v6, :cond_0

    .line 153
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v4, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v3

    .line 156
    :cond_0
    const-string/jumbo v3, "HttpClient"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    const-string/jumbo v3, "HttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Using virtual host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    if-eqz v0, :cond_6

    .line 169
    :goto_1
    if-nez v0, :cond_7

    .line 170
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    move-object v2, v0

    .line 174
    :goto_2
    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_3

    .line 177
    invoke-virtual {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    .line 178
    if-nez v0, :cond_2

    .line 179
    new-instance v0, Lorg/apache/http/impl/client/BasicCredentialsProviderHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCredentialsProviderHC4;-><init>()V

    .line 180
    invoke-virtual {p3, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V

    .line 182
    :cond_2
    new-instance v3, Lorg/apache/http/auth/AuthScope;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v4, v1}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 189
    :cond_3
    const-string/jumbo v0, "http.target_host"

    invoke-virtual {p3, v0, v2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const-string/jumbo v0, "http.route"

    invoke-virtual {p3, v0, p1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string/jumbo v0, "http.request"

    invoke-virtual {p3, v0, p2}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ProtocolExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v0, p2, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 195
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ProtocolExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/impl/execchain/ClientExecChain;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v1

    .line 199
    :try_start_0
    const-string/jumbo v0, "http.response"

    invoke-virtual {p3, v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ProtocolExec;->httpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v0, v1, p3}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_3

    .line 201
    return-object v1

    .line 131
    :cond_4
    invoke-interface {v0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 133
    :try_start_1
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 139
    goto/16 :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    const-string/jumbo v3, "HttpClient"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    const-string/jumbo v3, "HttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to parse \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\' as a valid URI; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "request URI and Host header may be inconsistent"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    move-object v1, v2

    goto/16 :goto_0

    .line 165
    :cond_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 166
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 202
    :catch_1
    move-exception v0

    .line 203
    invoke-interface {v1}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 204
    throw v0

    .line 205
    :catch_2
    move-exception v0

    .line 206
    invoke-interface {v1}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 207
    throw v0

    .line 208
    :catch_3
    move-exception v0

    .line 209
    invoke-interface {v1}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 210
    throw v0

    :cond_7
    move-object v2, v0

    goto/16 :goto_2

    :cond_8
    move-object v0, v2

    goto/16 :goto_1
.end method

.method rewriteRequestURI(Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 97
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    .line 109
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V

    .line 114
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-static {v0}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_3
    invoke-static {v0}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

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
