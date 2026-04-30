.class public Lcom/behance/sdk/network/BehanceHttpsConnection;
.super Ljava/lang/Object;
.source "BehanceHttpsConnection.java"

# interfaces
.implements Lcom/behance/sdk/network/IBehanceHttpConnection;


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "Authorization"

.field private static final ACCESS_TOKEN_PREFIX:Ljava/lang/String; = "Bearer "

.field private static final BUFFER_SIZE:I = 0x8000

.field private static final CHARSET_NAME_UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final CONNECT_TIMEOUT_MILLIS:I = 0x3a98

.field private static final LINE_ENDING:Ljava/lang/String; = "\r\n"

.field private static final READ_TIMEOUT_MILLIS:I = 0x2710

.field private static instance:Lcom/behance/sdk/network/BehanceHttpsConnection;

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/behance/sdk/network/BehanceHttpsConnection;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/network/BehanceHttpsConnection;->logger:Lcom/behance/sdk/logger/ILogger;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/behance/sdk/network/BehanceHttpsConnection;->instance:Lcom/behance/sdk/network/BehanceHttpsConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/behance/sdk/network/NoSSLv3Factory;

    invoke-direct {v0}, Lcom/behance/sdk/network/NoSSLv3Factory;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/network/BehanceHttpsConnection;->noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;

    .line 68
    return-void
.end method

.method private addSDKHeaders(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 2

    .prologue
    .line 715
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getUniversalHeader()Lcom/behance/sdk/network/BehanceNameValuePair;

    move-result-object v0

    .line 717
    if-nez v0, :cond_0

    .line 722
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/behance/sdk/network/BehanceHttpsConnection;->instance:Lcom/behance/sdk/network/BehanceHttpsConnection;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/behance/sdk/network/BehanceHttpsConnection;

    invoke-direct {v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;-><init>()V

    sput-object v0, Lcom/behance/sdk/network/BehanceHttpsConnection;->instance:Lcom/behance/sdk/network/BehanceHttpsConnection;

    .line 63
    :cond_0
    sget-object v0, Lcom/behance/sdk/network/BehanceHttpsConnection;->instance:Lcom/behance/sdk/network/BehanceHttpsConnection;

    return-object v0
.end method

.method private invokeHttpRequest(Lcom/behance/sdk/network/BehanceHttpMethod;Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/network/BehanceHttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpRequest(Lcom/behance/sdk/network/BehanceHttpMethod;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    return-object v0
.end method

.method private invokeHttpRequest(Lcom/behance/sdk/network/BehanceHttpMethod;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 5
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/network/BehanceHttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v2, Lcom/behance/sdk/network/BehanceConnectionResponse;

    invoke-direct {v2}, Lcom/behance/sdk/network/BehanceConnectionResponse;-><init>()V

    .line 528
    const-string/jumbo v0, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 530
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 532
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceHttpsConnection;->noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 533
    const-string/jumbo v1, "X-IMS-ClientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 536
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 537
    invoke-virtual {p1}, Lcom/behance/sdk/network/BehanceHttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 539
    if-eqz p4, :cond_0

    .line 540
    const-string/jumbo v1, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->addSDKHeaders(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 544
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 546
    if-eqz p3, :cond_2

    .line 547
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 548
    if-eqz v1, :cond_1

    .line 549
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 555
    invoke-direct {p0, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->readResponseFromUrlConnection(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceConnectionResponse;)V

    .line 556
    return-object v2
.end method

.method private readResponseFromUrlConnection(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceConnectionResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HttpsURLConnection;",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 563
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 569
    :goto_0
    invoke-virtual {p2, v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->setResponseCode(I)V

    .line 571
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 572
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 573
    invoke-virtual {p2, v1}, Lcom/behance/sdk/network/BehanceConnectionResponse;->setHeaders(Ljava/util/Map;)V

    .line 575
    :cond_0
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpsConnection;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Reading response from [Response code - %s] [URL - %s] "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    const/4 v1, 0x0

    .line 579
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 582
    if-nez v1, :cond_1

    .line 583
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 586
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 588
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 594
    :catchall_0
    move-exception v0

    .line 595
    if-eqz v1, :cond_2

    .line 596
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 602
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 606
    :goto_3
    throw v0

    .line 564
    :catch_0
    move-exception v0

    .line 567
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    goto :goto_0

    .line 592
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->setResponseObject(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 595
    if-eqz v1, :cond_4

    .line 596
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 602
    :cond_4
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 607
    :goto_5
    return-void

    .line 598
    :catch_1
    move-exception v0

    .line 599
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpsConnection;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem closing input stream. [URL - %s]"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 603
    :catch_2
    move-exception v0

    .line 604
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpsConnection;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem disconnecting url connection. [URL - %s]"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 598
    :catch_3
    move-exception v1

    .line 599
    sget-object v2, Lcom/behance/sdk/network/BehanceHttpsConnection;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem closing input stream. [URL - %s]"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v1, v3, v4}, Lcom/behance/sdk/logger/ILogger;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 603
    :catch_4
    move-exception v1

    .line 604
    sget-object v2, Lcom/behance/sdk/network/BehanceHttpsConnection;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem disconnecting url connection. [URL - %s]"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v1, v3, v4}, Lcom/behance/sdk/logger/ILogger;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private sendFileInputStream(Ljava/io/BufferedInputStream;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceMultiPartData;Ljava/io/OutputStream;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x8000

    const/4 v4, 0x0

    .line 614
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 615
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getBoundary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->isBrowserCompatible()Z

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->generateMultiPartFormData(Lcom/behance/sdk/network/BehanceMultiPartData;Ljava/lang/String;Z)[B

    move-result-object v0

    .line 616
    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 617
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->incrementTransferredBytesLength(J)V

    .line 619
    new-array v1, v5, [B

    .line 622
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 624
    :goto_0
    if-lez v0, :cond_0

    .line 625
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    :cond_0
    return-void

    .line 630
    :cond_1
    invoke-virtual {p4, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 631
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 632
    int-to-long v2, v0

    invoke-virtual {p2, v2, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->incrementTransferredBytesLength(J)V

    .line 633
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method private static final setRequestMethodUsingWorkaroundForJREBug(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 397
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 401
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 404
    :try_start_1
    const-string/jumbo v0, "delegate"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 405
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 407
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 408
    invoke-static {v0, p1}, Lcom/behance/sdk/network/BehanceHttpsConnection;->setRequestMethodUsingWorkaroundForJREBug(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v1

    .line 416
    :goto_1
    if-eqz v0, :cond_0

    .line 418
    :try_start_2
    const-string/jumbo v1, "method"

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 424
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 425
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 428
    :catch_1
    move-exception v0

    .line 429
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 409
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 413
    goto :goto_1

    .line 411
    :catch_3
    move-exception v0

    .line 412
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 420
    :catch_4
    move-exception v1

    .line 421
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_1

    .line 411
    :catch_5
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public invokeHttpDeleteRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    sget-object v0, Lcom/behance/sdk/network/BehanceHttpMethod;->DELETE:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-direct {p0, v0, p1, p2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpRequest(Lcom/behance/sdk/network/BehanceHttpMethod;Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public invokeHttpDeleteRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    sget-object v0, Lcom/behance/sdk/network/BehanceHttpMethod;->DELETE:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpRequest(Lcom/behance/sdk/network/BehanceHttpMethod;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/behance/sdk/network/BehanceHttpMethod;->GET:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-direct {p0, v0, p1, p2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpRequest(Lcom/behance/sdk/network/BehanceHttpMethod;Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public invokeHttpGetRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/behance/sdk/network/BehanceHttpMethod;->GET:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpRequest(Lcom/behance/sdk/network/BehanceHttpMethod;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public invokeHttpPatchRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 5
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/behance/sdk/network/BehanceMultipartEntity;",
            "Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v2, Lcom/behance/sdk/network/BehanceConnectionResponse;

    invoke-direct {v2}, Lcom/behance/sdk/network/BehanceConnectionResponse;-><init>()V

    .line 437
    const-string/jumbo v0, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 439
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 441
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceHttpsConnection;->noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 444
    const-string/jumbo v1, "PATCH"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v1, "X-IMS-ClientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    if-eqz p4, :cond_0

    .line 448
    const-string/jumbo v1, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->addSDKHeaders(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 453
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 455
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultipartHeaders()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 456
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultipartHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 457
    if-eqz v1, :cond_1

    .line 458
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_2
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 464
    invoke-virtual {p0, v0, p2, p3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->writeToOutputStream(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;)V

    .line 467
    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 468
    invoke-direct {p0, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->readResponseFromUrlConnection(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceConnectionResponse;)V

    .line 470
    return-object v2
.end method

.method public invokeHttpPostRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 5
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/behance/sdk/network/BehanceMultipartEntity;",
            "Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v2, Lcom/behance/sdk/network/BehanceConnectionResponse;

    invoke-direct {v2}, Lcom/behance/sdk/network/BehanceConnectionResponse;-><init>()V

    .line 258
    const-string/jumbo v0, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 262
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceHttpsConnection;->noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 265
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpMethod;->POST:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceHttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 266
    const-string/jumbo v1, "X-IMS-ClientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-eqz p4, :cond_0

    .line 269
    const-string/jumbo v1, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->addSDKHeaders(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 273
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 275
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultipartHeaders()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultipartHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 277
    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 284
    invoke-virtual {p0, v0, p2, p3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->writeToOutputStream(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;)V

    .line 287
    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 288
    invoke-direct {p0, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->readResponseFromUrlConnection(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceConnectionResponse;)V

    .line 290
    return-object v2
.end method

.method public invokeHttpPostRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public invokeHttpPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 6
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 214
    new-instance v2, Lcom/behance/sdk/network/BehanceConnectionResponse;

    invoke-direct {v2}, Lcom/behance/sdk/network/BehanceConnectionResponse;-><init>()V

    .line 215
    const-string/jumbo v0, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 218
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceHttpsConnection;->noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 221
    const-string/jumbo v1, "X-IMS-ClientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpMethod;->POST:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceHttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 225
    if-eqz p4, :cond_0

    .line 226
    const-string/jumbo v1, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->addSDKHeaders(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 230
    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 232
    if-eqz p3, :cond_2

    .line 233
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 234
    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 241
    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 242
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 243
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 244
    invoke-virtual {v3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 246
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 247
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 250
    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 251
    invoke-direct {p0, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->readResponseFromUrlConnection(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceConnectionResponse;)V

    .line 253
    return-object v2
.end method

.method public invokeHttpPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public invokeHttpPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 9
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 153
    new-instance v5, Lcom/behance/sdk/network/BehanceConnectionResponse;

    invoke-direct {v5}, Lcom/behance/sdk/network/BehanceConnectionResponse;-><init>()V

    .line 154
    const-string/jumbo v0, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 158
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceHttpsConnection;->noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 161
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpMethod;->POST:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceHttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "X-IMS-ClientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz p4, :cond_0

    .line 165
    const-string/jumbo v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->addSDKHeaders(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 169
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 171
    if-eqz p3, :cond_2

    .line 172
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 173
    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    const/4 v1, 0x0

    .line 180
    if-eqz p2, :cond_6

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 184
    if-eqz v1, :cond_3

    .line 185
    if-eqz v2, :cond_4

    .line 186
    const/4 v2, 0x0

    .line 190
    :goto_2
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "UTF-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move v1, v2

    move v2, v1

    .line 194
    goto :goto_1

    .line 188
    :cond_4
    const-string/jumbo v7, "&"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move-object v1, v4

    .line 197
    :cond_6
    if-eqz v1, :cond_7

    .line 198
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 199
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 200
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v4, v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 203
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 204
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 207
    :cond_7
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 208
    invoke-direct {p0, v0, v5}, Lcom/behance/sdk/network/BehanceHttpsConnection;->readResponseFromUrlConnection(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceConnectionResponse;)V

    .line 210
    return-object v5
.end method

.method public invokeHttpPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 9
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Loauth/signpost/OAuthConsumer;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Loauth/signpost/exception/OAuthCommunicationException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthMessageSignerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 88
    new-instance v5, Lcom/behance/sdk/network/BehanceConnectionResponse;

    invoke-direct {v5}, Lcom/behance/sdk/network/BehanceConnectionResponse;-><init>()V

    .line 89
    const-string/jumbo v0, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 93
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceHttpsConnection;->noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 96
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpMethod;->POST:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceHttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v1, "X-IMS-ClientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz p5, :cond_0

    .line 100
    const-string/jumbo v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->addSDKHeaders(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 104
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 106
    invoke-interface {p4, v0}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 108
    if-eqz p3, :cond_2

    .line 109
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 110
    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    const/4 v1, 0x0

    .line 117
    if-eqz p2, :cond_6

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 121
    if-eqz v1, :cond_3

    .line 122
    if-eqz v2, :cond_4

    .line 123
    const/4 v2, 0x0

    .line 127
    :goto_2
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "UTF-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move v1, v2

    move v2, v1

    .line 131
    goto :goto_1

    .line 125
    :cond_4
    const-string/jumbo v7, "&"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move-object v1, v4

    .line 134
    :cond_6
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz v1, :cond_7

    .line 136
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 137
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 138
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v4, v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 141
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 142
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 145
    :cond_7
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 146
    invoke-direct {p0, v0, v5}, Lcom/behance/sdk/network/BehanceHttpsConnection;->readResponseFromUrlConnection(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceConnectionResponse;)V

    .line 148
    return-object v5
.end method

.method public invokeHttpPutRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 5
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/behance/sdk/network/BehanceMultipartEntity;",
            "Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v2, Lcom/behance/sdk/network/BehanceConnectionResponse;

    invoke-direct {v2}, Lcom/behance/sdk/network/BehanceConnectionResponse;-><init>()V

    .line 478
    const-string/jumbo v0, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 480
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 482
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceHttpsConnection;->noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 483
    const-string/jumbo v1, "X-IMS-ClientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpMethod;->PUT:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceHttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 489
    if-eqz p4, :cond_0

    .line 490
    const-string/jumbo v1, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->addSDKHeaders(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 494
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 496
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultipartHeaders()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultipartHeaders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 498
    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 505
    invoke-virtual {p0, v0, p2, p3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->writeToOutputStream(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;)V

    .line 508
    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 509
    invoke-direct {p0, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->readResponseFromUrlConnection(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceConnectionResponse;)V

    .line 511
    return-object v2
.end method

.method public invokeHttpPutRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    return-object v0
.end method

.method public invokeHttpPutRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 6
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 298
    new-instance v2, Lcom/behance/sdk/network/BehanceConnectionResponse;

    invoke-direct {v2}, Lcom/behance/sdk/network/BehanceConnectionResponse;-><init>()V

    .line 299
    const-string/jumbo v0, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 303
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceHttpsConnection;->noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 306
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpMethod;->PUT:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceHttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v1, "X-IMS-ClientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz p4, :cond_0

    .line 310
    const-string/jumbo v1, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->addSDKHeaders(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 314
    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 316
    if-eqz p3, :cond_2

    .line 317
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 318
    if-eqz v1, :cond_1

    .line 319
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 326
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 327
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 328
    invoke-virtual {v3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 330
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 331
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 334
    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 335
    invoke-direct {p0, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->readResponseFromUrlConnection(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceConnectionResponse;)V

    .line 337
    return-object v2
.end method

.method public invokeHttpPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    .locals 9
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/network/BehanceNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/behance/sdk/network/BehanceConnectionResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 341
    new-instance v5, Lcom/behance/sdk/network/BehanceConnectionResponse;

    invoke-direct {v5}, Lcom/behance/sdk/network/BehanceConnectionResponse;-><init>()V

    .line 342
    const-string/jumbo v0, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 346
    iget-object v1, p0, Lcom/behance/sdk/network/BehanceHttpsConnection;->noSSLv3Factory:Lcom/behance/sdk/network/NoSSLv3Factory;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 347
    const-string/jumbo v1, "X-IMS-ClientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpMethod;->PUT:Lcom/behance/sdk/network/BehanceHttpMethod;

    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceHttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 353
    if-eqz p3, :cond_0

    .line 354
    const-string/jumbo v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bearer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->addSDKHeaders(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 358
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 360
    const/4 v1, 0x0

    .line 361
    if-eqz p2, :cond_4

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 365
    if-eqz v1, :cond_1

    .line 366
    if-eqz v2, :cond_2

    .line 367
    const/4 v2, 0x0

    .line 371
    :goto_1
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "UTF-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v2

    move v2, v1

    .line 375
    goto :goto_0

    .line 369
    :cond_2
    const-string/jumbo v7, "&"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move-object v1, v4

    .line 378
    :cond_4
    if-eqz v1, :cond_5

    .line 379
    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 380
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 381
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v4, v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 382
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 384
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 385
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 388
    :cond_5
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 389
    invoke-direct {p0, v0, v5}, Lcom/behance/sdk/network/BehanceHttpsConnection;->readResponseFromUrlConnection(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceConnectionResponse;)V

    .line 391
    return-object v5
.end method

.method protected writeToOutputStream(Ljavax/net/ssl/HttpsURLConnection;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 642
    const-string/jumbo v0, "\r\n"

    .line 643
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 648
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 649
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 651
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    const v0, 0x8000

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 656
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v4

    .line 658
    :try_start_1
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getMultiPartDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/behance/sdk/network/BehanceMultiPartData;

    .line 660
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    :cond_1
    const-string/jumbo v0, "--%s--\r\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getBoundary()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 702
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 703
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 712
    :goto_1
    return-void

    .line 665
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceMultiPartData;->getSourcePath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_4

    .line 668
    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceMultiPartData;->getSourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const v2, 0x8000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    .line 669
    :try_start_4
    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/network/BehanceHttpsConnection;->sendFileInputStream(Ljava/io/BufferedInputStream;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceMultiPartData;Ljava/io/OutputStream;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 673
    :try_start_5
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 698
    :cond_3
    :goto_2
    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 699
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 707
    sget-object v1, Lcom/behance/sdk/network/BehanceHttpsConnection;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Error during io operation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 710
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 670
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 671
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 673
    :try_start_8
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 710
    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 711
    throw v0

    .line 673
    :catchall_1
    move-exception v0

    :goto_6
    :try_start_9
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 674
    throw v0

    .line 677
    :cond_4
    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceMultiPartData;->getInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 680
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceMultiPartData;->getInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    const v2, 0x8000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    .line 682
    :try_start_a
    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/network/BehanceHttpsConnection;->sendFileInputStream(Ljava/io/BufferedInputStream;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceMultiPartData;Ljava/io/OutputStream;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 686
    :try_start_b
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 683
    :catch_2
    move-exception v0

    .line 684
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 686
    :try_start_d
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 687
    throw v0

    .line 690
    :cond_5
    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceMultiPartData;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 691
    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->getBoundary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->isBrowserCompatible()Z

    move-result v1

    invoke-static {v3, v0, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->generateMultiPartFormData(Lcom/behance/sdk/network/BehanceMultiPartData;Ljava/lang/String;Z)[B

    move-result-object v0

    .line 692
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 693
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->incrementTransferredBytesLength(J)V

    .line 694
    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceMultiPartData;->getData()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 695
    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceMultiPartData;->getData()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->incrementTransferredBytesLength(J)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    .line 710
    :catchall_3
    move-exception v0

    move-object v4, v6

    goto :goto_5

    .line 705
    :catch_3
    move-exception v0

    move-object v4, v6

    goto :goto_3

    .line 673
    :catchall_4
    move-exception v0

    move-object v6, v1

    goto :goto_6

    .line 670
    :catch_4
    move-exception v0

    goto :goto_4
.end method
