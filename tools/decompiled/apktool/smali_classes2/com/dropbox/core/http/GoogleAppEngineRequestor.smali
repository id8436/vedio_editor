.class public Lcom/dropbox/core/http/GoogleAppEngineRequestor;
.super Lcom/dropbox/core/http/HttpRequestor;
.source "GoogleAppEngineRequestor.java"


# instance fields
.field private final options:Lcom/google/appengine/api/urlfetch/FetchOptions;

.field private final service:Lcom/google/appengine/api/urlfetch/URLFetchService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->newDefaultOptions()Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;-><init>(Lcom/google/appengine/api/urlfetch/FetchOptions;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/appengine/api/urlfetch/FetchOptions;)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/google/appengine/api/urlfetch/URLFetchServiceFactory;->getURLFetchService()Lcom/google/appengine/api/urlfetch/URLFetchService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;-><init>(Lcom/google/appengine/api/urlfetch/FetchOptions;Lcom/google/appengine/api/urlfetch/URLFetchService;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/appengine/api/urlfetch/FetchOptions;Lcom/google/appengine/api/urlfetch/URLFetchService;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor;-><init>()V

    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "options"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "service"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->options:Lcom/google/appengine/api/urlfetch/FetchOptions;

    .line 58
    iput-object p2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->toRequestorResponse(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    return-object v0
.end method

.method public static newDefaultOptions()Lcom/google/appengine/api/urlfetch/FetchOptions;
    .locals 6

    .prologue
    .line 103
    invoke-static {}, Lcom/google/appengine/api/urlfetch/FetchOptions$Builder;->withDefaults()Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/appengine/api/urlfetch/FetchOptions;->validateCertificate()Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/google/appengine/api/urlfetch/FetchOptions;->doNotFollowRedirects()Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/appengine/api/urlfetch/FetchOptions;->disallowTruncate()Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    sget-wide v2, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->DEFAULT_CONNECT_TIMEOUT_MILLIS:J

    sget-wide v4, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    add-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 108
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appengine/api/urlfetch/FetchOptions;->setDeadline(Ljava/lang/Double;)Lcom/google/appengine/api/urlfetch/FetchOptions;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method private newRequest(Ljava/lang/String;Lcom/google/appengine/api/urlfetch/HTTPMethod;Ljava/lang/Iterable;)Lcom/google/appengine/api/urlfetch/HTTPRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/appengine/api/urlfetch/HTTPMethod;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/google/appengine/api/urlfetch/HTTPRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Lcom/google/appengine/api/urlfetch/HTTPRequest;

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->options:Lcom/google/appengine/api/urlfetch/FetchOptions;

    invoke-direct {v1, v0, p2, v2}, Lcom/google/appengine/api/urlfetch/HTTPRequest;-><init>(Ljava/net/URL;Lcom/google/appengine/api/urlfetch/HTTPMethod;Lcom/google/appengine/api/urlfetch/FetchOptions;)V

    .line 90
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    .line 91
    new-instance v3, Lcom/google/appengine/api/urlfetch/HTTPHeader;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/appengine/api/urlfetch/HTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/appengine/api/urlfetch/HTTPRequest;->addHeader(Lcom/google/appengine/api/urlfetch/HTTPHeader;)V

    goto :goto_0

    .line 93
    :cond_0
    return-object v1
.end method

.method private static toRequestorResponse(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 5

    .prologue
    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPResponse;->getHeadersUncombined()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appengine/api/urlfetch/HTTPHeader;

    .line 114
    invoke-virtual {v0}, Lcom/google/appengine/api/urlfetch/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 115
    if-nez v1, :cond_0

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {v0}, Lcom/google/appengine/api/urlfetch/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/google/appengine/api/urlfetch/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPResponse;->getResponseCode()I

    move-result v1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 123
    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPResponse;->getContent()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v3, v2}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    .line 122
    return-object v0
.end method


# virtual methods
.method public doGet(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 2
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
    .line 71
    sget-object v0, Lcom/google/appengine/api/urlfetch/HTTPMethod;->GET:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    invoke-direct {p0, p1, v0, p2}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->newRequest(Ljava/lang/String;Lcom/google/appengine/api/urlfetch/HTTPMethod;Ljava/lang/Iterable;)Lcom/google/appengine/api/urlfetch/HTTPRequest;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    invoke-interface {v1, v0}, Lcom/google/appengine/api/urlfetch/URLFetchService;->fetch(Lcom/google/appengine/api/urlfetch/HTTPRequest;)Lcom/google/appengine/api/urlfetch/HTTPResponse;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->toRequestorResponse(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/appengine/api/urlfetch/FetchOptions;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->options:Lcom/google/appengine/api/urlfetch/FetchOptions;

    return-object v0
.end method

.method public getService()Lcom/google/appengine/api/urlfetch/URLFetchService;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    return-object v0
.end method

.method public startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 4
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
    .line 78
    sget-object v0, Lcom/google/appengine/api/urlfetch/HTTPMethod;->POST:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    invoke-direct {p0, p1, v0, p2}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->newRequest(Ljava/lang/String;Lcom/google/appengine/api/urlfetch/HTTPMethod;Ljava/lang/Iterable;)Lcom/google/appengine/api/urlfetch/HTTPRequest;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;

    iget-object v2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;-><init>(Lcom/google/appengine/api/urlfetch/URLFetchService;Lcom/google/appengine/api/urlfetch/HTTPRequest;Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method

.method public startPut(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 4
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
    .line 84
    sget-object v0, Lcom/google/appengine/api/urlfetch/HTTPMethod;->POST:Lcom/google/appengine/api/urlfetch/HTTPMethod;

    invoke-direct {p0, p1, v0, p2}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->newRequest(Ljava/lang/String;Lcom/google/appengine/api/urlfetch/HTTPMethod;Ljava/lang/Iterable;)Lcom/google/appengine/api/urlfetch/HTTPRequest;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;

    iget-object v2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->service:Lcom/google/appengine/api/urlfetch/URLFetchService;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/dropbox/core/http/GoogleAppEngineRequestor$FetchServiceUploader;-><init>(Lcom/google/appengine/api/urlfetch/URLFetchService;Lcom/google/appengine/api/urlfetch/HTTPRequest;Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method
