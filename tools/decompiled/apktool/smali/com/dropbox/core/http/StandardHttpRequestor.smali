.class public Lcom/dropbox/core/http/StandardHttpRequestor;
.super Lcom/dropbox/core/http/HttpRequestor;
.source "StandardHttpRequestor.java"


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static volatile certPinningWarningLogged:Z


# instance fields
.field private final config:Lcom/dropbox/core/http/StandardHttpRequestor$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/dropbox/core/http/StandardHttpRequestor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->LOGGER:Ljava/util/logging/Logger;

    .line 35
    new-instance v0, Lcom/dropbox/core/http/StandardHttpRequestor;

    sget-object v1, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->DEFAULT_INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    invoke-direct {v0, v1}, Lcom/dropbox/core/http/StandardHttpRequestor;-><init>(Lcom/dropbox/core/http/StandardHttpRequestor$Config;)V

    sput-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/core/http/StandardHttpRequestor;->certPinningWarningLogged:Z

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/http/StandardHttpRequestor$Config;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor;->config:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    .line 46
    return-void
.end method

.method static synthetic access$000(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/dropbox/core/http/StandardHttpRequestor;->getOutputStream(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/dropbox/core/http/StandardHttpRequestor;->toResponse(Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    return-object v0
.end method

.method private static getOutputStream(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 123
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private static logCertificatePinningWarning()V
    .locals 2

    .prologue
    .line 213
    sget-boolean v0, Lcom/dropbox/core/http/StandardHttpRequestor;->certPinningWarningLogged:Z

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dropbox/core/http/StandardHttpRequestor;->certPinningWarningLogged:Z

    .line 215
    sget-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->LOGGER:Ljava/util/logging/Logger;

    const-string/jumbo v1, "Certificate pinning disabled for HTTPS connections. This is likely because your JRE does not return javax.net.ssl.HttpsURLConnection objects for https network connections. Be aware your app may be prone to man-in-the-middle attacks without proper SSL certificate validation. If you are using Google App Engine, please configure DbxRequestConfig to use GoogleAppEngineRequestor."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method private prepRequest(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 186
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor;->config:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    invoke-virtual {v1}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 189
    iget-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor;->config:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    invoke-virtual {v1}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->getConnectTimeoutMillis()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 190
    iget-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor;->config:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    invoke-virtual {v1}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->getReadTimeoutMillis()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 191
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 192
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 196
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 197
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v1}, Lcom/dropbox/core/http/SSLConfig;->apply(Ljavax/net/ssl/HttpsURLConnection;)V

    move-object v1, v0

    .line 198
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, v1}, Lcom/dropbox/core/http/StandardHttpRequestor;->configureConnection(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 203
    :goto_0
    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/StandardHttpRequestor;->configure(Ljava/net/HttpURLConnection;)V

    .line 205
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/http/HttpRequestor$Header;

    .line 206
    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Header;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_0
    invoke-static {}, Lcom/dropbox/core/http/StandardHttpRequestor;->logCertificatePinningWarning()V

    goto :goto_0

    .line 209
    :cond_1
    return-object v0
.end method

.method private toResponse(Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 51
    const/16 v0, 0x190

    if-ge v1, v0, :cond_0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/http/StandardHttpRequestor;->interceptResponse(Ljava/net/HttpURLConnection;)V

    .line 57
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected configure(Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    return-void
.end method

.method protected configureConnection(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    return-void
.end method

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
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/http/StandardHttpRequestor;->prepRequest(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 65
    invoke-direct {p0, v0}, Lcom/dropbox/core/http/StandardHttpRequestor;->toResponse(Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    return-object v0
.end method

.method protected interceptResponse(Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    return-void
.end method

.method public bridge synthetic startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/http/StandardHttpRequestor;->startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;

    move-result-object v0

    return-object v0
.end method

.method public startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/http/StandardHttpRequestor;->prepRequest(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;-><init>(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)V

    return-object v1
.end method

.method public bridge synthetic startPut(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/http/StandardHttpRequestor;->startPut(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;

    move-result-object v0

    return-object v0
.end method

.method public startPut(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/http/StandardHttpRequestor;->prepRequest(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;-><init>(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)V

    return-object v1
.end method
