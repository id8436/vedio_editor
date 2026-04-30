.class abstract Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;
.super Ljava/lang/Object;
.source "AdobeNetworkHttpTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x8000

.field static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final ERROR_DURING_IO_OPERATION:Ljava/lang/String; = "Error during io operation"

.field private static final L:Z

.field private static final T:Ljava/lang/String;

.field protected static retryOn5xxDelays:[D


# instance fields
.field protected accessToken:Ljava/lang/String;

.field protected completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;

.field protected numRetries:I

.field protected request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

.field protected requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

.field protected retryEnabled:Z

.field protected urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->T:Ljava/lang/String;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->retryOn5xxDelays:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;

    .line 67
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 68
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->accessToken:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    .line 70
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->numRetries:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->retryEnabled:Z

    .line 76
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    return-void
.end method

.method private getRFC2047DecodedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 333
    .line 335
    if-eqz p1, :cond_0

    const-string/jumbo v0, "=?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "?="

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string/jumbo v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 340
    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-object p1

    .line 343
    :cond_1
    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 344
    const/4 v2, 0x2

    aget-object v2, v0, v2

    .line 346
    const/4 v3, 0x1

    aget-object v0, v0, v3

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const-string/jumbo v0, "b"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 350
    new-instance p1, Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 351
    :cond_2
    const-string/jumbo v0, "q"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sget-object v1, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private setUserAgent(Ljava/net/URLConnection;)V
    .locals 2

    .prologue
    .line 287
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNetworkUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method


# virtual methods
.method protected addRequestMethod()V
    .locals 4

    .prologue
    .line 383
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$net$AdobeNetworkHttpRequestMethod:[I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestMethod()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 407
    :goto_0
    return-void

    .line 385
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "NetworkService"

    const-string/jumbo v3, "Error while setting Http request method."

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 388
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :pswitch_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public call()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
    .locals 8

    .prologue
    const/16 v7, 0x194

    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->setScheduled(Z)V

    .line 413
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 414
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    .line 417
    :cond_0
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    .line 418
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setStatusCode(I)V

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->openConnection(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    .line 423
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->isRequestTimeoutSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestTImeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setURL(Ljava/net/URL;)V

    .line 427
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->addRequestMethod()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_2

    .line 436
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->T:Ljava/lang/String;

    const-string/jumbo v3, "error : url connection null"

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 477
    :goto_0
    return-object v0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpDataDownloadTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Error opening url connection"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 431
    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->useAccessTokenInHeaders()V

    .line 441
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->useClientIDInHeadersAndParameters()V

    .line 443
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->writeToOutputStream()Z

    move-result v3

    .line 444
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v0

    .line 445
    if-eqz v0, :cond_3

    if-eqz v3, :cond_4

    .line 449
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 452
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v4, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setStatusCode(I)V

    .line 454
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->parseHttpHeaders(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 455
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->captureInputStream()V

    .line 456
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 468
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 469
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    .line 470
    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    .line 471
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    .line 474
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->checkIfShouldRetry(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->onPostExecute(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 477
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    goto :goto_0

    .line 458
    :catch_1
    move-exception v2

    .line 459
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpDataDownloadTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Error during io operation"

    invoke-static {v4, v5, v6, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    instance-of v4, v2, Ljavax/net/ssl/SSLException;

    if-nez v4, :cond_7

    instance-of v4, v2, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_8

    .line 461
    :cond_7
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setStatusCode(I)V

    .line 464
    :goto_2
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v4, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setNetworkException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 463
    :cond_8
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v4, v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setStatusCode(I)V

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->call()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected captureData(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v1

    .line 191
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_4

    const/16 v2, 0x12b

    if-ge v1, v2, :cond_4

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_1

    .line 195
    const v1, 0x8000

    new-array v3, v1, [B

    .line 197
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const v1, 0x8000

    invoke-direct {v4, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 198
    const/4 v1, 0x0

    const v5, 0x8000

    invoke-virtual {v2, v3, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 201
    :cond_0
    :goto_0
    if-lez v1, :cond_3

    .line 202
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 204
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 235
    :cond_1
    :goto_1
    return-void

    .line 207
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 208
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 209
    add-int/2addr v0, v1

    .line 210
    const/4 v1, 0x0

    const v5, 0x8000

    invoke-virtual {v2, v3, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 211
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    if-lez v5, :cond_0

    .line 212
    int-to-float v5, v0

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->onProgressUpdate(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const/16 v1, 0x1f7

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setStatusCode(I)V

    .line 221
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "NetworkService"

    const-string/jumbo v3, "Error during io operation"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 215
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setData(Ljava/nio/ByteBuffer;)V

    .line 216
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 217
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 225
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_1

    .line 227
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 228
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setData(Ljava/nio/ByteBuffer;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 231
    :catch_1
    move-exception v0

    .line 232
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "NetworkService"

    const-string/jumbo v3, "Error during io operation"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected abstract captureInputStream()V
.end method

.method protected checkIfShouldRetry(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 294
    if-nez p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->retryEnabled:Z

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v1

    .line 307
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->numRetries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->numRetries:I

    .line 316
    const/16 v2, 0x1f3

    if-le v1, v2, :cond_0

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    const/16 v2, 0x1fb

    if-eq v1, v2, :cond_0

    .line 317
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->numRetries:I

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->retryOn5xxDelays:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 318
    const/4 v0, 0x1

    .line 320
    :try_start_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->retryOn5xxDelays:[D

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->numRetries:I

    aget-wide v2, v1, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 321
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->T:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retry #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->numRetries:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " sleep ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .line 324
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "NetworkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Retry connection for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 80
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;

    .line 81
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 82
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->accessToken:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->numRetries:I

    .line 85
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    .line 86
    return-void
.end method

.method protected onPostExecute(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;->handleResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 245
    :cond_0
    return-void
.end method

.method protected onProgressUpdate(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->notifyProgress(I)V

    .line 239
    return-void
.end method

.method protected openConnection(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)Ljava/net/URLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->shouldAddClientId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestMethod()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-eq v1, v2, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestMethod()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPUT:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-eq v1, v2, :cond_0

    .line 252
    const-string/jumbo v1, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->addQueryParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 259
    if-eqz v0, :cond_2

    .line 260
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 264
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 265
    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->setHttpRequestParameters(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/net/URLConnection;)V

    .line 266
    return-object v0

    .line 262
    :cond_2
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected parseHttpHeaders(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 7

    .prologue
    .line 360
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 361
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 365
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 367
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 368
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 369
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 372
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->getRFC2047DecodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 374
    :cond_0
    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p1, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setHeaders(Ljava/util/Map;)V

    .line 378
    return-void
.end method

.method protected setHttpRequestParameters(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/net/URLConnection;)V
    .locals 3

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->setUserAgent(Ljava/net/URLConnection;)V

    .line 282
    :cond_1
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "close"

    invoke-virtual {p2, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method protected useAccessTokenInHeaders()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->accessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->T:Ljava/lang/String;

    const-string/jumbo v2, "access token empty"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected useClientIDInHeadersAndParameters()V
    .locals 3

    .prologue
    .line 182
    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->T:Ljava/lang/String;

    const-string/jumbo v2, "client ID empty"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "X-IMS-ClientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method protected writeToOutputStream()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    const/4 v2, 0x0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestMethod()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-ne v0, v1, :cond_6

    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 94
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getQueryParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 97
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getQueryParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    :goto_1
    :try_start_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;

    .line 162
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Error during io operation"

    .line 161
    invoke-static {v1, v3, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :goto_2
    move v0, v4

    .line 168
    :goto_3
    return v0

    .line 101
    :cond_0
    :try_start_2
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 104
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 107
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getBodyStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 109
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getBodyStream()Ljava/io/InputStream;

    move-result-object v5

    .line 114
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_5

    .line 116
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 118
    const v1, 0x8000

    new-array v7, v1, [B

    .line 120
    const/4 v1, 0x0

    const v2, 0x8000

    invoke-virtual {v5, v7, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v2, v1

    move v1, v4

    .line 122
    :goto_5
    if-lez v2, :cond_4

    .line 123
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 124
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->closeStream()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move v0, v4

    .line 125
    goto :goto_3

    .line 128
    :cond_3
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v0, v7, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 129
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 130
    add-int/2addr v1, v2

    .line 131
    const/4 v2, 0x0

    const v8, 0x8000

    invoke-virtual {v5, v7, v2, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 132
    int-to-float v8, v1

    int-to-float v9, v6

    div-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 133
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->onProgressUpdate(Ljava/lang/Integer;)V

    goto :goto_5

    .line 160
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_1

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setBytesSent(I)V

    .line 137
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->closeStream()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 165
    :cond_5
    :goto_6
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move v0, v3

    .line 141
    goto/16 :goto_3

    .line 142
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestMethod()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPUT:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-ne v0, v1, :cond_9

    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getBodyStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 144
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getBodyStream()Ljava/io/InputStream;

    move-result-object v1

    .line 148
    const v0, 0x8000

    new-array v5, v0, [B

    .line 149
    const/4 v0, 0x0

    const v6, 0x8000

    invoke-virtual {v1, v5, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 150
    :goto_7
    if-lez v0, :cond_7

    .line 151
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 152
    const/4 v0, 0x0

    const v6, 0x8000

    invoke-virtual {v1, v5, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_7

    .line 154
    :cond_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 155
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->closeStream()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    :cond_8
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move v0, v3

    .line 158
    goto/16 :goto_3

    .line 165
    :cond_9
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :goto_8
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 166
    throw v0

    .line 165
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_8

    :cond_a
    move-object v0, v2

    goto :goto_6

    :cond_b
    move-object v1, v0

    goto/16 :goto_4
.end method
