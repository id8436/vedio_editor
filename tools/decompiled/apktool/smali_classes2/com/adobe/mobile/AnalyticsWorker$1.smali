.class Lcom/adobe/mobile/AnalyticsWorker$1;
.super Ljava/lang/Object;
.source "AnalyticsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/mobile/AnalyticsWorker;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/AnalyticsWorker;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/adobe/mobile/AnalyticsWorker$1;->this$0:Lcom/adobe/mobile/AnalyticsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-static {}, Lcom/adobe/mobile/AnalyticsWorker;->sharedInstance()Lcom/adobe/mobile/AnalyticsWorker;

    move-result-object v2

    .line 230
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 233
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 235
    const-string/jumbo v0, "Accept-Language"

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string/jumbo v0, "User-Agent"

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_0
    :goto_0
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getPrivacyStatus()Lcom/adobe/mobile/MobilePrivacyStatus;

    move-result-object v0

    sget-object v4, Lcom/adobe/mobile/MobilePrivacyStatus;->MOBILE_PRIVACY_STATUS_OPT_IN:Lcom/adobe/mobile/MobilePrivacyStatus;

    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->networkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v2}, Lcom/adobe/mobile/AnalyticsWorker;->selectOldestHit()Lcom/adobe/mobile/AbstractHitDatabase$Hit;

    move-result-object v4

    .line 243
    if-nez v4, :cond_2

    .line 346
    :cond_1
    :goto_1
    iput-boolean v1, v2, Lcom/adobe/mobile/AnalyticsWorker;->bgThreadActive:Z

    .line 347
    return-void

    .line 248
    :cond_2
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getOfflineTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    iget-wide v6, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->timestamp:J

    iget-wide v8, v2, Lcom/adobe/mobile/AnalyticsWorker;->lastHitTimestamp:J

    sub-long/2addr v6, v8

    .line 253
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    .line 255
    iget-wide v6, v2, Lcom/adobe/mobile/AnalyticsWorker;->lastHitTimestamp:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "&ts="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->timestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "&ts="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 259
    iget-object v8, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->urlFragment:Ljava/lang/String;

    invoke-virtual {v8, v0, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->urlFragment:Ljava/lang/String;

    .line 261
    const-string/jumbo v0, "Analytics - Adjusting out of order hit timestamp(%d->%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v8, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->timestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v12

    invoke-static {v0, v5}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iput-wide v6, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->timestamp:J

    .line 288
    :cond_3
    iget-object v0, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->urlFragment:Ljava/lang/String;

    const-string/jumbo v5, "ndh"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->urlFragment:Ljava/lang/String;

    .line 291
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/mobile/AnalyticsWorker;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/adobe/mobile/AnalyticsWorker;->access$100()Ljava/security/SecureRandom;

    move-result-object v6

    const v7, 0x5f5e100

    invoke-virtual {v6, v7}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1388

    iget-object v7, p0, Lcom/adobe/mobile/AnalyticsWorker$1;->this$0:Lcom/adobe/mobile/AnalyticsWorker;

    iget-object v7, v7, Lcom/adobe/mobile/AnalyticsWorker;->logPrefix:Ljava/lang/String;

    invoke-static {v5, v0, v3, v6, v7}, Lcom/adobe/mobile/RequestHandler;->retrieveAnalyticsRequestData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)[B

    move-result-object v0

    .line 293
    if-nez v0, :cond_6

    .line 295
    const-wide/16 v4, 0x1e

    move v0, v1

    .line 336
    :goto_3
    int-to-long v6, v0

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/mobile/MobileConfig;->networkConnectivity()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 337
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 267
    :cond_4
    iget-wide v6, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->timestamp:J

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getTimeSince1970()J

    move-result-wide v8

    const-wide/16 v10, 0x3c

    sub-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    .line 273
    :try_start_1
    iget-object v0, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/adobe/mobile/AnalyticsWorker;->deleteHit(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/adobe/mobile/AbstractDatabaseBacking$CorruptedDatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-static {}, Lcom/adobe/mobile/AnalyticsWorker;->sharedInstance()Lcom/adobe/mobile/AnalyticsWorker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adobe/mobile/AnalyticsWorker;->resetDatabase(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 288
    :cond_5
    iget-object v0, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->urlFragment:Ljava/lang/String;

    iget-object v5, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->urlFragment:Ljava/lang/String;

    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 296
    :cond_6
    array-length v5, v0

    if-le v5, v12, :cond_7

    .line 299
    :try_start_2
    iget-object v5, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/adobe/mobile/AnalyticsWorker;->deleteHit(Ljava/lang/String;)V

    .line 300
    iget-wide v4, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->timestamp:J

    iput-wide v4, v2, Lcom/adobe/mobile/AnalyticsWorker;->lastHitTimestamp:J

    .line 302
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 303
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getAudienceExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/adobe/mobile/AnalyticsWorker$1$1;

    invoke-direct {v5, p0, v0}, Lcom/adobe/mobile/AnalyticsWorker$1$1;-><init>(Lcom/adobe/mobile/AnalyticsWorker$1;Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lcom/adobe/mobile/AbstractDatabaseBacking$CorruptedDatabaseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 312
    :catch_1
    move-exception v0

    .line 313
    invoke-static {}, Lcom/adobe/mobile/AnalyticsWorker;->sharedInstance()Lcom/adobe/mobile/AnalyticsWorker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adobe/mobile/AnalyticsWorker;->resetDatabase(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 315
    :catch_2
    move-exception v0

    .line 316
    const-string/jumbo v4, "Audience Manager - Unable to decode server response (%s)"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 317
    :catch_3
    move-exception v0

    .line 318
    const-string/jumbo v4, "Audience Manager - Unable to parse JSON data (%s)"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 324
    :cond_7
    :try_start_3
    iget-object v0, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/adobe/mobile/AnalyticsWorker;->deleteHit(Ljava/lang/String;)V

    .line 325
    iget-wide v4, v4, Lcom/adobe/mobile/AbstractHitDatabase$Hit;->timestamp:J

    iput-wide v4, v2, Lcom/adobe/mobile/AnalyticsWorker;->lastHitTimestamp:J
    :try_end_3
    .catch Lcom/adobe/mobile/AbstractDatabaseBacking$CorruptedDatabaseException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 327
    :catch_4
    move-exception v0

    .line 328
    invoke-static {}, Lcom/adobe/mobile/AnalyticsWorker;->sharedInstance()Lcom/adobe/mobile/AnalyticsWorker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adobe/mobile/AnalyticsWorker;->resetDatabase(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 340
    :catch_5
    move-exception v0

    .line 341
    const-string/jumbo v4, "Analytics - Background Thread Interrupted(%s)"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Lcom/adobe/mobile/StaticMethods;->logWarningFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
