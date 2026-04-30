.class final Lcom/adobe/mobile/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# static fields
.field private static final BUF_SIZE:I = 0x400

.field private static final CONNECTION_TIMEOUT:I = 0x7d0

.field private static final MAX_REDIRECT_COUNT:I = 0x15


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    .line 388
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-object v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string/jumbo v1, "Adobe Mobile - Exception opening URL(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static retrieveAnalyticsRequestData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 235
    if-nez p0, :cond_1

    move-object v0, v2

    .line 310
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :cond_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->isWearableApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-static {p0, p1, p3, p4}, Lcom/adobe/mobile/WearableFunctionBridge;->retrieveAnalyticsRequestData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_2
    invoke-static {p0}, Lcom/adobe/mobile/RequestHandler;->requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 245
    if-nez v3, :cond_3

    move-object v0, v2

    .line 246
    goto :goto_0

    .line 252
    :cond_3
    :try_start_0
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 253
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 254
    const-string/jumbo v0, "POST"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getSSL()Z

    move-result v0

    if-nez v0, :cond_4

    .line 256
    const-string/jumbo v0, "connection"

    const-string/jumbo v1, "close"

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_4
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 260
    array-length v0, v4

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 261
    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-eqz p2, :cond_6

    .line 265
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    :try_start_1
    const-string/jumbo v0, "%s - Timed out sending request(%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getSSL()Z

    move-result v0

    if-nez v0, :cond_5

    .line 310
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v0, v2

    goto/16 :goto_0

    .line 271
    :cond_6
    :try_start_2
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 272
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 273
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 275
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 276
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 277
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/mobile/MobileConfig;->getSSL()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_8

    .line 282
    :cond_7
    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 283
    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    .line 290
    :cond_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 292
    const-string/jumbo v0, "%s - Request Sent(%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v1, v5

    const/4 v5, 0x1

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 309
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/mobile/MobileConfig;->getSSL()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 286
    :cond_9
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v4, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 299
    :catch_1
    move-exception v0

    .line 300
    :try_start_4
    const-string/jumbo v1, "%s - IOException while sending request, may retry(%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 309
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getSSL()Z

    move-result v0

    if-nez v0, :cond_a

    .line 310
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    move-object v0, v2

    goto/16 :goto_0

    .line 302
    :catch_2
    move-exception v0

    .line 303
    :try_start_5
    const-string/jumbo v1, "%s - Exception while attempting to send hit, will not retry(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v2, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 309
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/mobile/MobileConfig;->getSSL()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 305
    :catch_3
    move-exception v0

    .line 306
    :try_start_6
    const-string/jumbo v1, "%s - Exception while attempting to send hit, will not retry(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v2, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 309
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/mobile/MobileConfig;->getSSL()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 309
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/mobile/MobileConfig;->getSSL()Z

    move-result v1

    if-nez v1, :cond_b

    .line 310
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v0
.end method

.method protected static retrieveData(Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Lcom/adobe/mobile/RequestHandler$HeaderCallback;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/adobe/mobile/RequestHandler$HeaderCallback;",
            ")[B"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 74
    .line 75
    const/4 v8, 0x0

    move v5, v6

    move v1, v6

    move-object v7, p0

    move-object v3, v4

    .line 86
    :goto_0
    const/16 v2, 0x15

    if-le v5, v2, :cond_2

    .line 87
    :try_start_0
    const-string/jumbo v2, "%s - Too many redirects for (%s) - %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v7, v9

    const/4 v9, 0x1

    aput-object p0, v7, v9

    const/4 v9, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v2, v7}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :goto_1
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_8

    .line 138
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 140
    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 142
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 146
    :goto_2
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 147
    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 154
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 157
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 169
    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    :cond_0
    if-eqz v2, :cond_1

    .line 175
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    :cond_1
    :goto_3
    return-object v1

    .line 92
    :cond_2
    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 93
    const/16 v1, 0x7d0

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 94
    invoke-virtual {v3, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 98
    const-string/jumbo v1, "Accept-Language"

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "User-Agent"

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz p3, :cond_5

    .line 103
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 105
    if-eqz v1, :cond_5

    .line 106
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 159
    :catch_0
    move-exception v1

    move-object v2, v4

    .line 160
    :goto_5
    :try_start_4
    const-string/jumbo v5, "%s - IOException while sending request (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v7}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 169
    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    :cond_3
    if-eqz v2, :cond_4

    .line 175
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_6
    move-object v1, v4

    .line 178
    goto :goto_3

    .line 113
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 116
    if-eqz p4, :cond_6

    .line 117
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/adobe/mobile/RequestHandler$HeaderCallback;->call(Ljava/util/Map;)V

    .line 121
    :cond_6
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 124
    :pswitch_0
    add-int/lit8 v2, v5, 0x1

    .line 126
    const-string/jumbo v5, "Location"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v9, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v7}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    move-object v7, v5

    move v5, v2

    .line 130
    goto/16 :goto_0

    .line 150
    :cond_7
    const/4 v8, 0x0

    :try_start_7
    invoke-virtual {v5, v1, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    .line 159
    :catch_1
    move-exception v1

    goto :goto_5

    .line 176
    :catch_2
    move-exception v2

    .line 177
    const-string/jumbo v3, "%s - Unable to close stream (%s)"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v10

    invoke-static {v3, v4}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 169
    :cond_8
    if-eqz v3, :cond_9

    .line 170
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    :cond_9
    if-eqz v4, :cond_a

    .line 175
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_a
    :goto_7
    move-object v1, v4

    .line 182
    goto/16 :goto_3

    .line 176
    :catch_3
    move-exception v1

    .line 177
    const-string/jumbo v2, "%s - Unable to close stream (%s)"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 176
    :catch_4
    move-exception v1

    .line 177
    const-string/jumbo v2, "%s - Unable to close stream (%s)"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 162
    :catch_5
    move-exception v1

    move-object v2, v4

    .line 163
    :goto_8
    :try_start_9
    const-string/jumbo v5, "%s - Exception while sending request (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v7}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 169
    if-eqz v3, :cond_b

    .line 170
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    :cond_b
    if-eqz v2, :cond_c

    .line 175
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_c
    :goto_9
    move-object v1, v4

    .line 178
    goto/16 :goto_3

    .line 176
    :catch_6
    move-exception v1

    .line 177
    const-string/jumbo v2, "%s - Unable to close stream (%s)"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 165
    :catch_7
    move-exception v1

    move-object v2, v4

    .line 166
    :goto_a
    :try_start_b
    const-string/jumbo v5, "%s - Unexpected error while sending request (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v5, v7}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 169
    if-eqz v3, :cond_d

    .line 170
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    :cond_d
    if-eqz v2, :cond_e

    .line 175
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_e
    :goto_b
    move-object v1, v4

    .line 178
    goto/16 :goto_3

    .line 176
    :catch_8
    move-exception v1

    .line 177
    const-string/jumbo v2, "%s - Unable to close stream (%s)"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    invoke-static {v2, v3}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 169
    :catchall_0
    move-exception v1

    :goto_c
    if-eqz v3, :cond_f

    .line 170
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    :cond_f
    if-eqz v4, :cond_10

    .line 175
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 178
    :cond_10
    :goto_d
    throw v1

    .line 176
    :catch_9
    move-exception v2

    .line 177
    const-string/jumbo v3, "%s - Unable to close stream (%s)"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v10

    invoke-static {v3, v4}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 169
    :catchall_1
    move-exception v1

    move-object v4, v2

    goto :goto_c

    .line 165
    :catch_a
    move-exception v1

    goto :goto_a

    .line 162
    :catch_b
    move-exception v1

    goto/16 :goto_8

    .line 121
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static retrieveData(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->isWearableApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p0, p2}, Lcom/adobe/mobile/WearableFunctionBridge;->retrieveData(Ljava/lang/String;I)[B

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lcom/adobe/mobile/RequestHandler$1;

    invoke-direct {v0, p1}, Lcom/adobe/mobile/RequestHandler$1;-><init>(Ljava/util/Map;)V

    .line 59
    if-eqz p1, :cond_1

    :goto_1
    invoke-static {p0, p2, p3, v0, v1}, Lcom/adobe/mobile/RequestHandler;->retrieveData(Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Lcom/adobe/mobile/RequestHandler$HeaderCallback;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected static sendGenericRequest(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 187
    if-nez p0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->isWearableApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-static {p0, p2, p3}, Lcom/adobe/mobile/WearableFunctionBridge;->sendGenericRequest(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/adobe/mobile/RequestHandler;->requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 201
    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 203
    if-eqz p1, :cond_4

    .line 205
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string/jumbo v0, "%s - Timed out sending request(%s)"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p3, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_4
    :try_start_1
    const-string/jumbo v0, "%s - Request Sent(%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    const/4 v3, 0x1

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 217
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 219
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    const-string/jumbo v1, "%s - IOException while sending request, may retry(%s)"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 225
    :catch_2
    move-exception v0

    .line 226
    const-string/jumbo v1, "%s - Exception while attempting to send hit, will not retry(%s)"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 227
    :catch_3
    move-exception v0

    .line 228
    const-string/jumbo v1, "%s - Exception while attempting to send hit, will not retry(%s)"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v0}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected static sendThirdPartyRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 317
    if-nez p0, :cond_0

    move v0, v2

    .line 383
    :goto_0
    return v0

    .line 321
    :cond_0
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->isWearableApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-static {p0, p1, p3, p4, p5}, Lcom/adobe/mobile/WearableFunctionBridge;->sendThirdPartyRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 325
    :cond_1
    invoke-static {p0}, Lcom/adobe/mobile/RequestHandler;->requestConnect(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 327
    if-nez v4, :cond_2

    move v0, v2

    .line 328
    goto :goto_0

    .line 333
    :cond_2
    :try_start_0
    invoke-virtual {v4, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 334
    invoke-virtual {v4, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 335
    const-string/jumbo v0, "GET"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 338
    if-eqz p2, :cond_3

    .line 339
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    const-string/jumbo v0, "%s - Timed out sending request (%s)"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p5, v1, v2

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 371
    goto :goto_0

    .line 345
    :cond_3
    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 346
    const-string/jumbo v0, "POST"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 348
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    move-object v0, p4

    .line 350
    :goto_2
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 351
    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 352
    const-string/jumbo v5, "Content-Type"

    invoke-virtual {v4, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 356
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 357
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 358
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 362
    :cond_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 363
    const/16 v1, 0xa

    new-array v1, v1, [B

    .line 364
    :cond_5
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_5

    .line 365
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 367
    const-string/jumbo v0, "%s - Successfully forwarded hit (%s body: %s type: %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p5, v1, v4

    const/4 v4, 0x1

    aput-object p0, v1, v4

    const/4 v4, 0x2

    aput-object p1, v1, v4

    const/4 v4, 0x3

    aput-object p4, v1, v4

    invoke-static {v0, v1}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    move v0, v3

    .line 383
    goto/16 :goto_0

    .line 348
    :cond_6
    const-string/jumbo v0, "application/x-www-form-urlencoded"
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 373
    :catch_1
    move-exception v0

    .line 374
    const-string/jumbo v1, "%s - IOException while sending request, will not retry (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p5, v4, v2

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 376
    :catch_2
    move-exception v0

    .line 377
    const-string/jumbo v1, "%s - Exception while attempting to send hit, will not retry (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p5, v4, v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 379
    :catch_3
    move-exception v0

    .line 380
    const-string/jumbo v1, "%s - Exception while attempting to send hit, will not retry (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p5, v4, v2

    invoke-virtual {v0}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method
