.class public Lcom/dropbox/core/http/OkHttpRequestor;
.super Lcom/dropbox/core/http/HttpRequestor;
.source "OkHttpRequestor.java"


# instance fields
.field private final client:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor;-><init>()V

    .line 73
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttpUtil;->assertNotSameThreadExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 75
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/dropbox/core/http/OkHttpRequestor;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/dropbox/core/http/OkHttpRequestor;->fromOkHttpHeaders(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static defaultOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 39
    sget-wide v2, Lcom/dropbox/core/http/OkHttpRequestor;->DEFAULT_CONNECT_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 40
    sget-wide v2, Lcom/dropbox/core/http/OkHttpRequestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 41
    sget-wide v2, Lcom/dropbox/core/http/OkHttpRequestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 43
    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 44
    return-object v0
.end method

.method private static fromOkHttpHeaders(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Headers;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 152
    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_0
    return-object v1
.end method

.method private startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 139
    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 140
    invoke-static {p2, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->toOkHttpHeaders(Ljava/lang/Iterable;Lcom/squareup/okhttp/Request$Builder;)V

    .line 141
    new-instance v1, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;

    invoke-direct {v1, p0, p3, v0}, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;-><init>(Lcom/dropbox/core/http/OkHttpRequestor;Ljava/lang/String;Lcom/squareup/okhttp/Request$Builder;)V

    return-object v1
.end method

.method private static toOkHttpHeaders(Ljava/lang/Iterable;Lcom/squareup/okhttp/Request$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/squareup/okhttp/Request$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    .line 146
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method protected configureRequest(Lcom/squareup/okhttp/Request$Builder;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public doGet(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->get()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 119
    invoke-static {p2, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->toOkHttpHeaders(Ljava/lang/Iterable;Lcom/squareup/okhttp/Request$Builder;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->configureRequest(Lcom/squareup/okhttp/Request$Builder;)V

    .line 121
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->interceptResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttpRequestor;->fromOkHttpHeaders(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object v1

    .line 124
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v3

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2
.end method

.method public getClient()Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method protected interceptResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 0

    .prologue
    .line 113
    return-object p1
.end method

.method public startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const-string/jumbo v0, "POST"

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;

    move-result-object v0

    return-object v0
.end method

.method public startPut(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const-string/jumbo v0, "PUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;

    move-result-object v0

    return-object v0
.end method
