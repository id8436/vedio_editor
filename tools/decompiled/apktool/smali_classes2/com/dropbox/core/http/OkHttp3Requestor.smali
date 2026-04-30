.class public Lcom/dropbox/core/http/OkHttp3Requestor;
.super Lcom/dropbox/core/http/HttpRequestor;
.source "OkHttp3Requestor.java"


# instance fields
.field private final client:Ld/ar;


# direct methods
.method public constructor <init>(Ld/ar;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor;-><init>()V

    .line 83
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Ld/ar;->s()Ld/w;

    move-result-object v0

    invoke-virtual {v0}, Ld/w;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttpUtil;->assertNotSameThreadExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 85
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor;->client:Ld/ar;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/dropbox/core/http/OkHttp3Requestor;)Ld/ar;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor;->client:Ld/ar;

    return-object v0
.end method

.method static synthetic access$200(Ld/ag;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/dropbox/core/http/OkHttp3Requestor;->fromOkHttpHeaders(Ld/ag;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static defaultOkHttpClient()Ld/ar;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/dropbox/core/http/OkHttp3Requestor;->defaultOkHttpClientBuilder()Ld/at;

    move-result-object v0

    invoke-virtual {v0}, Ld/at;->a()Ld/ar;

    move-result-object v0

    return-object v0
.end method

.method public static defaultOkHttpClientBuilder()Ld/at;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ld/at;

    invoke-direct {v0}, Ld/at;-><init>()V

    sget-wide v2, Lcom/dropbox/core/http/OkHttp3Requestor;->DEFAULT_CONNECT_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-virtual {v0, v2, v3, v1}, Ld/at;->a(JLjava/util/concurrent/TimeUnit;)Ld/at;

    move-result-object v0

    sget-wide v2, Lcom/dropbox/core/http/OkHttp3Requestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    invoke-virtual {v0, v2, v3, v1}, Ld/at;->b(JLjava/util/concurrent/TimeUnit;)Ld/at;

    move-result-object v0

    sget-wide v2, Lcom/dropbox/core/http/OkHttp3Requestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    invoke-virtual {v0, v2, v3, v1}, Ld/at;->c(JLjava/util/concurrent/TimeUnit;)Ld/at;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ld/at;->a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Ld/at;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method private static fromOkHttpHeaders(Ld/ag;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/ag;",
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
    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Ld/ag;->a()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 162
    invoke-virtual {p0}, Ld/ag;->b()Ljava/util/Set;

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

    .line 163
    invoke-virtual {p0, v0}, Ld/ag;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_0
    return-object v1
.end method

.method private startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;
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
            "Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ld/ay;

    invoke-direct {v0}, Ld/ay;-><init>()V

    .line 149
    invoke-virtual {v0, p1}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object v0

    .line 150
    invoke-static {p2, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->toOkHttpHeaders(Ljava/lang/Iterable;Ld/ay;)V

    .line 151
    new-instance v1, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;

    invoke-direct {v1, p0, p3, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor;Ljava/lang/String;Ld/ay;)V

    return-object v1
.end method

.method private static toOkHttpHeaders(Ljava/lang/Iterable;Ld/ay;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Ld/ay;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    .line 156
    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ld/ay;->b(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method protected configureRequest(Ld/ay;)V
    .locals 0

    .prologue
    .line 108
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
    .line 128
    new-instance v0, Ld/ay;

    invoke-direct {v0}, Ld/ay;-><init>()V

    invoke-virtual {v0}, Ld/ay;->a()Ld/ay;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/ay;->a(Ljava/lang/String;)Ld/ay;

    move-result-object v0

    .line 129
    invoke-static {p2, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->toOkHttpHeaders(Ljava/lang/Iterable;Ld/ay;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->configureRequest(Ld/ay;)V

    .line 131
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor;->client:Ld/ar;

    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    invoke-virtual {v1, v0}, Ld/ar;->a(Ld/ax;)Ld/g;

    move-result-object v0

    invoke-interface {v0}, Ld/g;->a()Ld/bd;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->interceptResponse(Ld/bd;)Ld/bd;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ld/bd;->e()Ld/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->fromOkHttpHeaders(Ld/ag;)Ljava/util/Map;

    move-result-object v1

    .line 134
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {v0}, Ld/bd;->b()I

    move-result v3

    invoke-virtual {v0}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    invoke-virtual {v0}, Ld/bf;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2
.end method

.method public getClient()Ld/ar;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor;->client:Ld/ar;

    return-object v0
.end method

.method protected interceptResponse(Ld/bd;)Ld/bd;
    .locals 0

    .prologue
    .line 123
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
    .line 139
    const-string/jumbo v0, "POST"

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;

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
    .line 144
    const-string/jumbo v0, "PUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;

    move-result-object v0

    return-object v0
.end method
