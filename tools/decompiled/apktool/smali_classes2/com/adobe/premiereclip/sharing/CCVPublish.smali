.class public Lcom/adobe/premiereclip/sharing/CCVPublish;
.super Ljava/lang/Object;
.source "CCVPublish.java"


# static fields
.field private static final endpoint:Ljava/lang/String; = "https://api.ccv.adobe.com/api/v1"


# instance fields
.field private cancelled:Z

.field private confirmProgress:D

.field private description:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

.field private posterUploadProgress:D

.field private s3PosterUrl:Ljava/lang/String;

.field private s3VideoUrl:Ljava/lang/String;

.field private ticketProgress:D

.field private title:Ljava/lang/String;

.field private unlisted:Z

.field private uploadId:Ljava/lang/String;

.field private videoUploadProgress:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->mHandler:Landroid/os/Handler;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->s3VideoUrl:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->s3PosterUrl:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->uploadId:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->cancelled:Z

    .line 73
    iput-wide v2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->ticketProgress:D

    .line 74
    iput-wide v2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->videoUploadProgress:D

    .line 75
    iput-wide v2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->posterUploadProgress:D

    .line 76
    iput-wide v2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->confirmProgress:D

    .line 78
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->title:Ljava/lang/String;

    .line 79
    iput-boolean p3, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->unlisted:Z

    .line 80
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->description:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/CCVPublish;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->getUploadTicket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/CCVPublish;)D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->ticketProgress:D

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/sharing/CCVPublish;)D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->confirmProgress:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/sharing/CCVPublish;D)D
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->ticketProgress:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/sharing/CCVPublish;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->updateProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/sharing/CCVPublish;Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/CCVPublish;->uploadVideoToS3(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/sharing/CCVPublish;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->confirmUpload()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/sharing/CCVPublish;Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/CCVPublish;->uploadPosterToS3(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/sharing/CCVPublish;)D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->posterUploadProgress:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/adobe/premiereclip/sharing/CCVPublish;D)D
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->posterUploadProgress:D

    return-wide p1
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/sharing/CCVPublish;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/CCVPublish;->notifyCompletion(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/sharing/CCVPublish;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/sharing/CCVPublish;)D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->videoUploadProgress:D

    return-wide v0
.end method

.method private confirmUpload()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 320
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->cancelled:Z

    if-eqz v0, :cond_0

    move v0, v7

    .line 379
    :goto_0
    return v0

    .line 324
    :cond_0
    const-string/jumbo v1, "https://api.ccv.adobe.com/api/v1/videos"

    .line 325
    const-string/jumbo v2, "application/json; charset=UTF-8"

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bearer "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    const-string/jumbo v5, "POST"

    .line 328
    const-string/jumbo v0, "CCV"

    const-string/jumbo v4, "starting video confirm request"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->unlisted:Z

    if-eqz v0, :cond_1

    .line 332
    const-string/jumbo v0, "unlisted"

    .line 336
    :goto_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 337
    const-string/jumbo v6, "title"

    iget-object v8, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->title:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string/jumbo v6, "privacy"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 340
    const-string/jumbo v6, "upload_id"

    iget-object v8, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->uploadId:Ljava/lang/String;

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string/jumbo v6, "info"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string/jumbo v4, "CCV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "confirm video metadata : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    move-object v0, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/sharing/CCVPublish;->httpTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 347
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "error in video confirm request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v7

    .line 349
    goto/16 :goto_0

    .line 333
    :cond_1
    const-string/jumbo v0, "public"

    goto :goto_1

    .line 352
    :cond_2
    :try_start_1
    const-string/jumbo v1, "CCV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 355
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 360
    const-string/jumbo v2, "CCV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "response code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  response data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    .line 363
    :cond_3
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "unexpected response for video confirm request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v7

    .line 364
    goto/16 :goto_0

    .line 367
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    :try_start_3
    const-string/jumbo v1, "CCV"

    const-string/jumbo v2, "json not formed from response for video confirm request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v7

    .line 372
    goto/16 :goto_0

    .line 374
    :catch_1
    move-exception v0

    .line 375
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v7

    .line 376
    goto/16 :goto_0

    .line 377
    :catch_2
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move v0, v7

    .line 379
    goto/16 :goto_0
.end method

.method private getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUploadTicket()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->cancelled:Z

    if-eqz v0, :cond_0

    move v0, v7

    .line 201
    :goto_0
    return v0

    .line 156
    :cond_0
    const-string/jumbo v1, "https://api.ccv.adobe.com/api/v1/uploads"

    .line 157
    const-string/jumbo v2, "application/json"

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bearer "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    const-string/jumbo v5, "POST"

    .line 160
    const-string/jumbo v0, "CCV"

    const-string/jumbo v4, "starting upload ticket request"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string/jumbo v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/sharing/CCVPublish;->httpTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "error in upload ticket request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 165
    goto :goto_0

    .line 168
    :cond_1
    const-string/jumbo v1, "CCV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 176
    const-string/jumbo v3, "CCV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "response code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  response data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    :cond_2
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "unexpected response for upload ticket request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 180
    goto/16 :goto_0

    .line 183
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->s3VideoUrl:Ljava/lang/String;

    .line 186
    const-string/jumbo v1, "posterframe_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->s3PosterUrl:Ljava/lang/String;

    .line 187
    const-string/jumbo v1, "upload_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->uploadId:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->s3PosterUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->s3VideoUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->uploadId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 190
    :cond_4
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "unexpected response for upload ticket request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 191
    goto/16 :goto_0

    .line 194
    :cond_5
    const-string/jumbo v0, "CCV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "s3 video url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->s3VideoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   upload id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->uploadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   s3 poster url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->s3PosterUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string/jumbo v1, "CCV"

    const-string/jumbo v2, "json not formed from response for upload ticket request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v7

    .line 201
    goto/16 :goto_0
.end method

.method private httpFileUploadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 14

    .prologue
    .line 458
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 461
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 462
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 464
    const-string/jumbo v3, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 465
    const-string/jumbo v3, "Accept"

    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    const-string/jumbo v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 467
    const-string/jumbo v3, "Authorization"

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1
    const-string/jumbo v3, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 469
    const-string/jumbo v3, "Content-Type"

    move-object/from16 v0, p4

    invoke-virtual {v2, v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_2
    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 474
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 476
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p6 .. p6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 479
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 480
    if-eqz p6, :cond_4

    .line 481
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 483
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 485
    const/16 v3, 0x400

    .line 486
    new-array v8, v3, [B

    .line 489
    const/4 v3, 0x0

    .line 491
    :goto_0
    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    .line 492
    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 493
    add-int/2addr v3, v9

    .line 495
    if-eqz p7, :cond_3

    .line 496
    int-to-double v10, v3

    long-to-double v12, v6

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    iput-wide v10, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->videoUploadProgress:D

    .line 501
    :goto_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->updateProgress()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 533
    :catch_0
    move-exception v2

    .line 534
    :try_start_2
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 535
    const-string/jumbo v2, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 546
    :goto_2
    return-object v2

    .line 499
    :cond_3
    int-to-double v10, v3

    long-to-double v12, v6

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    :try_start_3
    iput-wide v10, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->posterUploadProgress:D
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 539
    :catch_1
    move-exception v2

    .line 540
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 541
    const-string/jumbo v2, ""
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 504
    :cond_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 505
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 508
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-ge v3, v4, :cond_5

    .line 509
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 513
    :goto_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 515
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 517
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 518
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 544
    :catch_2
    move-exception v2

    .line 545
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 546
    const-string/jumbo v2, ""

    goto :goto_2

    .line 511
    :cond_5
    :try_start_6
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    goto :goto_3

    .line 520
    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{\'code\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 523
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",\'data\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 530
    :goto_5
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v2, v3

    .line 531
    goto/16 :goto_2

    .line 527
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v3

    goto :goto_5
.end method

.method private httpTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 390
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 393
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 394
    invoke-virtual {v0, p5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    const-string/jumbo v1, "Accept"

    invoke-virtual {v0, v1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_0
    const-string/jumbo v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    const-string/jumbo v1, "Authorization"

    invoke-virtual {v0, v1, p3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_1
    const-string/jumbo v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 401
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 404
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 406
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 407
    if-eqz p6, :cond_3

    .line 408
    invoke-virtual {v1, p6}, Ljava/io/DataOutputStream;->write([B)V

    .line 410
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 411
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 414
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_4

    .line 415
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 419
    :goto_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 421
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 423
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 424
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    :try_start_2
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 441
    const-string/jumbo v0, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 452
    :goto_2
    return-object v0

    .line 417
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 426
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\'code\':"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\'data\':"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    :goto_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v0, v1

    .line 437
    goto :goto_2

    .line 433
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    goto :goto_3

    .line 445
    :catch_1
    move-exception v0

    .line 446
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 447
    const-string/jumbo v0, ""
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 450
    :catch_2
    move-exception v0

    .line 451
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 452
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method private notifyCompletion(Z)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/sharing/CCVPublish$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/sharing/CCVPublish$2;-><init>(Lcom/adobe/premiereclip/sharing/CCVPublish;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method private updateProgress()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/sharing/CCVPublish$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/CCVPublish$3;-><init>(Lcom/adobe/premiereclip/sharing/CCVPublish;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method private uploadPosterToS3(Landroid/net/Uri;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 281
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->cancelled:Z

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    return v7

    .line 285
    :cond_0
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "starting poster upload to s3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->s3PosterUrl:Ljava/lang/String;

    .line 288
    const-string/jumbo v5, "PUT"

    .line 290
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "application/octet-stream"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/sharing/CCVPublish;->httpFileUploadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 291
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "error in poster upload request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_1
    const-string/jumbo v1, "CCV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v2, "CCV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "poster upload response : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_2

    const-string/jumbo v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 305
    :cond_2
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "unexpected response for poster upload request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string/jumbo v1, "CCV"

    const-string/jumbo v2, "json not formed from response for poster upload request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 309
    :cond_3
    :try_start_1
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "poster upload to S3 successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private uploadVideoToS3(Landroid/net/Uri;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 242
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->cancelled:Z

    if-eqz v0, :cond_0

    move v7, v8

    .line 276
    :goto_0
    return v7

    .line 246
    :cond_0
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "starting video upload to s3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->s3VideoUrl:Ljava/lang/String;

    .line 249
    const-string/jumbo v5, "PUT"

    .line 251
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "application/octet-stream"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/sharing/CCVPublish;->httpFileUploadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "error in video upload request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 254
    goto :goto_0

    .line 257
    :cond_1
    const-string/jumbo v1, "CCV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v2, "CCV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video upload response : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_2

    const-string/jumbo v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    :cond_2
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "unexpected response for video upload request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 267
    goto/16 :goto_0

    .line 270
    :cond_3
    const-string/jumbo v0, "CCV"

    const-string/jumbo v1, "video upload to S3 successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string/jumbo v1, "CCV"

    const-string/jumbo v2, "json not formed from response for video upload request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v7, v8

    .line 276
    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->cancelled:Z

    .line 98
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUnlisted()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->unlisted:Z

    return v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public shareToCCV(Landroid/net/Uri;Ljava/lang/String;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V
    .locals 2

    .prologue
    .line 101
    iput-object p3, p0, Lcom/adobe/premiereclip/sharing/CCVPublish;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/premiereclip/sharing/CCVPublish$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/premiereclip/sharing/CCVPublish$1;-><init>(Lcom/adobe/premiereclip/sharing/CCVPublish;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method
