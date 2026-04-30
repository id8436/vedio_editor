.class public Lcom/adobe/sync/s3utils/S3TransferManager;
.super Ljava/lang/Object;
.source "S3TransferManager.java"


# static fields
.field private static final HMAC_SHA1_ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field private static final MAX_RETRY_INTERVAL:I = 0x3a98

.field private static final NUM_MAX_RETRY:I = 0x14

.field private static final initial_cores:I = 0x1

.field private static instance:Lcom/adobe/sync/s3utils/S3TransferManager; = null

.field private static final keep_alive_time:J = 0x1L

.field private static final keep_alive_time_unit:Ljava/util/concurrent/TimeUnit;

.field private static final max_cores:I = 0x1


# instance fields
.field private cancel:Z

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/adobe/sync/s3utils/S3TransferManager;->keep_alive_time_unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 62
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Lcom/adobe/sync/s3utils/S3TransferManager;->keep_alive_time_unit:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->mQueue:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->cancel:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/sync/s3utils/S3TransferManager;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->cancel:Z

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/sync/s3utils/S3TransferManager;Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/adobe/sync/s3utils/S3TransferManager;->directS3InitializeTemp(Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/sync/s3utils/S3TransferManager;Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/adobe/sync/s3utils/S3TransferManager;->postCancelOrError(Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/adobe/sync/s3utils/S3TransferManager;->directS3Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p11}, Lcom/adobe/sync/s3utils/S3TransferManager;->uploadToS3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-direct/range {p0 .. p15}, Lcom/adobe/sync/s3utils/S3TransferManager;->directS3Finalize(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/adobe/sync/s3utils/S3TransferManager;->checkDirectS3Asset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/sync/s3utils/S3TransferManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/adobe/sync/s3utils/S3TransferManager;->getResponseCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkDirectS3Asset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getTempLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string/jumbo v1, "HEAD"

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/sync/s3utils/S3TransferManager;->initDirectS3WebRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 188
    const-string/jumbo v1, "X-api-key"

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    const-string/jumbo v2, "X-request-id"

    invoke-virtual {v0, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, v0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getResponse(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "S3Transfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check directS3 asset response : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private createSignedAWSURLRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)Ljavax/net/ssl/HttpsURLConnection;
    .locals 19

    .prologue
    .line 248
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "partNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&uploadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/adobe/sync/s3utils/S3TransferManager;->getUrlForAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 252
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object/from16 v5, p0

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p10

    move-wide/from16 v16, p11

    .line 254
    invoke-direct/range {v5 .. v17}, Lcom/adobe/sync/s3utils/S3TransferManager;->setAWSHeaders(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-object v6

    .line 256
    :catch_0
    move-exception v4

    .line 257
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private directS3Finalize(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 368
    iget-boolean v1, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->cancel:Z

    if-eqz v1, :cond_0

    .line 369
    invoke-interface/range {p15 .. p15}, Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;->onCancel()V

    .line 370
    const-string/jumbo v1, ""

    .line 430
    :goto_0
    return-object v1

    .line 373
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getTempLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/:raw?mode=s3_finalize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    const-string/jumbo v2, "PUT"

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/adobe/sync/s3utils/S3TransferManager;->initDirectS3WebRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    .line 375
    const-string/jumbo v2, "X-api-key"

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    const-string/jumbo v3, "X-request-id"

    invoke-virtual {v1, v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v2, "X-Content-Length"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/hal+json"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v2, "Content-MD5"

    move-object/from16 v0, p10

    invoke-virtual {v1, v2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string/jumbo v2, "Accept"

    const-string/jumbo v3, "application/vnd.adobe.s3credentials+json"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    if-eqz p14, :cond_1

    .line 383
    const-string/jumbo v2, "If-Match"

    const-string/jumbo v3, "*"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 388
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 389
    const-string/jumbo v4, "segmentNumber"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    const-string/jumbo v4, "entityTag"

    move-object/from16 v0, p11

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 393
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 395
    const-string/jumbo v3, "segments"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 398
    const-string/jumbo v4, "accessKey"

    invoke-virtual {v3, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string/jumbo v4, "secretKey"

    invoke-virtual {v3, v4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string/jumbo v4, "sessionToken"

    invoke-virtual {v3, v4, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 403
    const-string/jumbo v5, "authentication"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string/jumbo v3, "assetARN"

    invoke-virtual {v4, v3, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string/jumbo v3, "uploadId"

    invoke-virtual {v4, v3, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string/jumbo v3, "s3AccessDetails"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string/jumbo v3, "md5"

    move-object/from16 v0, p10

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string/jumbo v3, "type"

    invoke-direct {p0, p4}, Lcom/adobe/sync/s3utils/S3TransferManager;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string/jumbo v3, "contentLength"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 413
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 414
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 415
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 416
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 418
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 419
    if-eqz v2, :cond_2

    .line 420
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 422
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 423
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 425
    invoke-direct {p0, v1}, Lcom/adobe/sync/s3utils/S3TransferManager;->getResponse(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 426
    const-string/jumbo v2, "S3TransferManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "for asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    directs3finalize response : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 428
    :catch_0
    move-exception v1

    .line 429
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    const-string/jumbo v1, ""

    goto/16 :goto_0
.end method

.method private directS3Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->cancel:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {p5}, Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;->onCancel()V

    .line 321
    const-string/jumbo v0, ""

    .line 341
    :goto_0
    return-object v0

    .line 324
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getTempLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/:raw?mode=s3_initiate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string/jumbo v1, "PUT"

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/sync/s3utils/S3TransferManager;->initDirectS3WebRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 326
    const-string/jumbo v1, "X-api-key"

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    const-string/jumbo v2, "X-request-id"

    invoke-virtual {v0, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string/jumbo v1, "X-Content-Length"

    invoke-virtual {v0, v1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string/jumbo v1, "Content-Type"

    invoke-direct {p0, p3}, Lcom/adobe/sync/s3utils/S3TransferManager;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string/jumbo v1, "Accept"

    const-string/jumbo v2, "application/vnd.adobe.s3credentials+json"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    if-eqz p4, :cond_1

    .line 333
    const-string/jumbo v1, "If-Match"

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_1
    invoke-direct {p0, v0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getResponse(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 337
    const-string/jumbo v1, "S3TransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "directs3init response : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    const-string/jumbo v0, ""

    goto/16 :goto_0
.end method

.method private directS3InitializeTemp(Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->cancel:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {p1}, Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;->onCancel()V

    .line 348
    const-string/jumbo v0, ""

    .line 361
    :goto_0
    return-object v0

    .line 351
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getTempLocation()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HEAD"

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/sync/s3utils/S3TransferManager;->initDirectS3WebRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 352
    const-string/jumbo v1, "X-api-key"

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    const-string/jumbo v2, "X-request-id"

    invoke-virtual {v0, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, v0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getResponse(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 357
    const-string/jumbo v1, "S3TransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "directs3inittemp response : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAssetMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 610
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 612
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 614
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 616
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 617
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 620
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 621
    return-object v0
.end method

.method private getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEndPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    const-string/jumbo v0, "https://cc-api-storage.adobe.io"

    return-object v0
.end method

.method public static getInstance()Lcom/adobe/sync/s3utils/S3TransferManager;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/adobe/sync/s3utils/S3TransferManager;->instance:Lcom/adobe/sync/s3utils/S3TransferManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/adobe/sync/s3utils/S3TransferManager;

    invoke-direct {v0}, Lcom/adobe/sync/s3utils/S3TransferManager;-><init>()V

    sput-object v0, Lcom/adobe/sync/s3utils/S3TransferManager;->instance:Lcom/adobe/sync/s3utils/S3TransferManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/adobe/sync/s3utils/S3TransferManager;->instance:Lcom/adobe/sync/s3utils/S3TransferManager;

    return-object v0
.end method

.method private getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 527
    if-eqz p1, :cond_0

    .line 528
    const-string/jumbo v1, "mov"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    const-string/jumbo v0, "video/quicktime"

    .line 577
    :cond_0
    :goto_0
    return-object v0

    .line 531
    :cond_1
    const-string/jumbo v1, "mpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "mpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 532
    :cond_2
    const-string/jumbo v0, "video/mpeg"

    goto :goto_0

    .line 534
    :cond_3
    const-string/jumbo v1, "mp4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 535
    const-string/jumbo v0, "video/mp4"

    goto :goto_0

    .line 537
    :cond_4
    const-string/jumbo v1, "ogg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "ogv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 538
    :cond_5
    const-string/jumbo v0, "video/ogg"

    goto :goto_0

    .line 540
    :cond_6
    const-string/jumbo v1, "webm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 541
    const-string/jumbo v0, "video/webm"

    goto :goto_0

    .line 543
    :cond_7
    const-string/jumbo v1, "mkv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 544
    const-string/jumbo v0, "video/x-matroska"

    goto :goto_0

    .line 546
    :cond_8
    const-string/jumbo v1, "wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 547
    const-string/jumbo v0, "video/x-ms-wmv"

    goto :goto_0

    .line 549
    :cond_9
    const-string/jumbo v1, "flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 550
    const-string/jumbo v0, "video/x-flv"

    goto :goto_0

    .line 552
    :cond_a
    const-string/jumbo v1, "aif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 553
    const-string/jumbo v0, "audio/aiff"

    goto :goto_0

    .line 555
    :cond_b
    const-string/jumbo v1, "wav"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 556
    const-string/jumbo v0, "audio/wav"

    goto/16 :goto_0

    .line 558
    :cond_c
    const-string/jumbo v1, "mp3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 559
    const-string/jumbo v0, "audio/mpeg"

    goto/16 :goto_0

    .line 561
    :cond_d
    const-string/jumbo v1, "m4a"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "aac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 562
    :cond_e
    const-string/jumbo v0, "audio/mp4"

    goto/16 :goto_0

    .line 564
    :cond_f
    const-string/jumbo v1, "jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 565
    :cond_10
    const-string/jumbo v0, "image/jpeg"

    goto/16 :goto_0

    .line 567
    :cond_11
    const-string/jumbo v1, "png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 568
    const-string/jumbo v0, "image/png"

    goto/16 :goto_0

    .line 570
    :cond_12
    const-string/jumbo v1, "tiff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 571
    const-string/jumbo v0, "image/tiff"

    goto/16 :goto_0

    .line 573
    :cond_13
    const-string/jumbo v1, "gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    const-string/jumbo v0, "image/gif"

    goto/16 :goto_0
.end method

.method private getProgress(II)I
    .locals 6

    .prologue
    .line 169
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    int-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    int-to-double v4, p2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getResponse(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 457
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    .line 458
    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 459
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 463
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 465
    if-eqz v0, :cond_2

    .line 466
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 469
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 501
    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 503
    const-string/jumbo v0, ""

    :goto_2
    return-object v0

    .line 461
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 475
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 477
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 478
    if-eqz v0, :cond_4

    .line 479
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 481
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    if-nez v1, :cond_3

    .line 484
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    :cond_3
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 490
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\'code\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\'data\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\'headers\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private getResponseCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getTempLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    const-string/jumbo v0, "/temp"

    return-object v0
.end method

.method private getUrlForAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    if-eqz p4, :cond_0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_0
    return-object v0
.end method

.method private initDirectS3WebRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3

    .prologue
    .line 436
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/adobe/sync/s3utils/S3TransferManager;->getEndPoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 439
    invoke-virtual {v0, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 440
    const-string/jumbo v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    const-string/jumbo v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_0
    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "Hammersmith"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-object v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postCancelOrError(Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->cancel:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {p1}, Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;->onCancel()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-interface {p1}, Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;->onError()V

    goto :goto_0
.end method

.method private setAWSHeaders(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 267
    const-string/jumbo v0, "PUT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "HEAD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    :cond_0
    const-string/jumbo v0, "PUT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 279
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "EEE, d MMM yyyy HH:mm:ss Z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 280
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "x-amz-security-token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {p0, v0, p6}, Lcom/adobe/sync/s3utils/S3TransferManager;->calculateRFC2104HMAC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AWS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    if-nez p8, :cond_1

    .line 292
    const-string/jumbo p8, "s3.amazonaws.com"

    .line 295
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    const-string/jumbo v3, "User-Agent"

    const-string/jumbo v4, "Hammersmith"

    invoke-virtual {p1, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v3, "Host"

    invoke-virtual {p1, v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v2, "Date"

    invoke-virtual {p1, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v0, "x-amz-security-token"

    invoke-virtual {p1, v0, p7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string/jumbo v0, "PUT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p1, v0, p9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_2
    const-string/jumbo v0, "Content-Length"

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_3
    return-void

    .line 275
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private uploadToS3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)Ljava/lang/String;
    .locals 17

    .prologue
    .line 204
    :try_start_0
    const-string/jumbo v10, "PUT"

    const/4 v11, 0x1

    .line 205
    invoke-static/range {p8 .. p8}, Lcom/adobe/sync/ComponentUtils;->getExtensionFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/adobe/sync/s3utils/S3TransferManager;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v12, p7

    move-wide/from16 v14, p9

    .line 204
    invoke-direct/range {v3 .. v15}, Lcom/adobe/sync/s3utils/S3TransferManager;->createSignedAWSURLRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 207
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 208
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 210
    move-wide/from16 v0, p9

    long-to-int v2, v0

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 212
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p8

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 215
    const/16 v2, 0x400

    .line 216
    new-array v6, v2, [B

    .line 219
    const/4 v2, 0x0

    .line 221
    :goto_0
    invoke-virtual {v5, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/adobe/sync/s3utils/S3TransferManager;->cancel:Z

    if-eqz v8, :cond_0

    .line 224
    invoke-interface/range {p11 .. p11}, Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;->onCancel()V

    .line 225
    const-string/jumbo v2, ""

    .line 240
    :goto_1
    return-object v2

    .line 227
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 228
    add-int/2addr v2, v7

    .line 229
    int-to-double v8, v2

    move-wide/from16 v0, p9

    long-to-double v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    .line 230
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/adobe/sync/s3utils/S3TransferManager;->getProgress(II)I

    move-result v7

    move-object/from16 v0, p11

    invoke-interface {v0, v7}, Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;->onProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v2

    .line 239
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    const-string/jumbo v2, ""

    goto :goto_1

    .line 232
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 233
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 235
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/adobe/sync/s3utils/S3TransferManager;->getResponse(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 236
    const-string/jumbo v3, "S3Transfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upload response is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method calculateRFC2104HMAC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 589
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string/jumbo v2, "HmacSHA1"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 592
    const-string/jumbo v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 593
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 596
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 599
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 604
    return-object v0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    new-instance v1, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to generate HMAC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelTransfers()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->cancel:Z

    .line 68
    return-void
.end method

.method public setReadyForTransfers()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->cancel:Z

    .line 72
    return-void
.end method

.method public transferBigAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/sync/s3utils/S3TransferManager;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/adobe/sync/s3utils/S3TransferManager$1;

    invoke-direct {v1, p0, p6, p1, p5}, Lcom/adobe/sync/s3utils/S3TransferManager$1;-><init>(Lcom/adobe/sync/s3utils/S3TransferManager;Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method
