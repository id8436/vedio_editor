.class public Lcom/adobe/premiereclip/sharing/TwitterUpload;
.super Ljava/lang/Object;
.source "TwitterUpload.java"


# static fields
.field public static final consumerKey:Ljava/lang/String; = "W0QnNCGa5PjjVewQZpHD1e9sC"

.field public static final consumerSecret:Ljava/lang/String; = "YKS10jaF14CpUsrocN98yljHJIszQiTt46qs8I6986vQXyPZhn"


# instance fields
.field private cancelled:Z

.field private ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

.field private confirmProgress:D

.field private customTwitterApiClient:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

.field private finalizeProgress:D

.field private initProgress:D

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

.field private mediaId:J

.field private mediaUri:Landroid/net/Uri;

.field private projectTitle:Ljava/lang/String;

.field private sendTweetProgress:D

.field private text:Ljava/lang/String;

.field private videoUploadProgress:D

.field private waitTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3c

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v4, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->waitTime:J

    .line 56
    iput-object v4, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    .line 57
    iput-object v4, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mediaUri:Landroid/net/Uri;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mHandler:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->cancelled:Z

    .line 60
    iput-wide v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->initProgress:D

    .line 61
    iput-wide v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->videoUploadProgress:D

    .line 62
    iput-wide v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->finalizeProgress:D

    .line 63
    iput-wide v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->confirmProgress:D

    .line 64
    iput-wide v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->sendTweetProgress:D

    .line 65
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->projectTitle:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->text:Ljava/lang/String;

    .line 67
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 68
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->f()Lcom/twitter/sdk/android/core/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/u;->b()Lcom/twitter/sdk/android/core/t;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/aj;

    .line 69
    new-instance v1, Ld/ar;

    invoke-direct {v1}, Ld/ar;-><init>()V

    invoke-virtual {v1}, Ld/ar;->y()Ld/at;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 70
    invoke-virtual {v1, v6, v7, v2}, Ld/at;->a(JLjava/util/concurrent/TimeUnit;)Ld/at;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 71
    invoke-virtual {v1, v6, v7, v2}, Ld/at;->b(JLjava/util/concurrent/TimeUnit;)Ld/at;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 72
    invoke-virtual {v1, v6, v7, v2}, Ld/at;->c(JLjava/util/concurrent/TimeUnit;)Ld/at;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ld/at;->a()Ld/ar;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    invoke-direct {v2, v0, v1}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;-><init>(Lcom/twitter/sdk/android/core/aj;Ld/ar;)V

    iput-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->customTwitterApiClient:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/TwitterUpload;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mediaUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/TwitterUpload;[BILjava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->initUpload([BILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/sharing/TwitterUpload;[BIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->uploadChunk([BIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->notifyCompletion(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->finalizeUpload()V

    return-void
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->sendTweet()V

    return-void
.end method

.method static synthetic access$1402(Lcom/adobe/premiereclip/sharing/TwitterUpload;J)J
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->waitTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->waitForStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/sharing/TwitterUpload;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/sharing/TwitterUpload;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->initProgress:D

    return-wide v0
.end method

.method static synthetic access$302(Lcom/adobe/premiereclip/sharing/TwitterUpload;D)D
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->initProgress:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/sharing/TwitterUpload;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->videoUploadProgress:D

    return-wide v0
.end method

.method static synthetic access$402(Lcom/adobe/premiereclip/sharing/TwitterUpload;D)D
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->videoUploadProgress:D

    return-wide p1
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/sharing/TwitterUpload;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->finalizeProgress:D

    return-wide v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/sharing/TwitterUpload;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->confirmProgress:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/sharing/TwitterUpload;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->sendTweetProgress:D

    return-wide v0
.end method

.method static synthetic access$702(Lcom/adobe/premiereclip/sharing/TwitterUpload;D)D
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->sendTweetProgress:D

    return-wide p1
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/sharing/TwitterUpload;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mediaId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/adobe/premiereclip/sharing/TwitterUpload;J)J
    .locals 1

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mediaId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->updateProgress()V

    return-void
.end method

.method private finalizeUpload()V
    .locals 4

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->cancelled:Z

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->notifyCompletion(Z)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->customTwitterApiClient:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->getFinalizeCustomService()Lcom/adobe/premiereclip/sharing/FinalizeVideoUploadAPICustomService;

    move-result-object v0

    const-string/jumbo v1, "FINALIZE"

    iget-wide v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mediaId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/premiereclip/sharing/FinalizeVideoUploadAPICustomService;->finalize(Ljava/lang/String;J)Lf/g;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterUpload$10;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload$10;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    .line 255
    invoke-interface {v0, v1}, Lf/g;->a(Lf/j;)V

    .line 279
    return-void
.end method

.method private initUpload([BILjava/lang/String;)V
    .locals 5

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->cancelled:Z

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->notifyCompletion(Z)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->customTwitterApiClient:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->getInitCustomService()Lcom/adobe/premiereclip/sharing/InitVideoUploadAPICustomService;

    move-result-object v0

    const-string/jumbo v1, "INIT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video/mp4"

    const-string/jumbo v4, "tweet_video"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/sharing/InitVideoUploadAPICustomService;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lf/g;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;[BILjava/lang/String;)V

    .line 166
    invoke-interface {v0, v1}, Lf/g;->a(Lf/j;)V

    .line 181
    return-void
.end method

.method private notifyCompletion(Z)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterUpload$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/sharing/TwitterUpload$2;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method private sendTweet()V
    .locals 4

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->cancelled:Z

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->notifyCompletion(Z)V

    .line 327
    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->finalizeProgress:D

    .line 328
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->updateProgress()V

    .line 330
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->customTwitterApiClient:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->postTweetCustomService()Lcom/adobe/premiereclip/sharing/TweetVideoAPICustomService;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->text:Ljava/lang/String;

    iget-wide v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mediaId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/premiereclip/sharing/TweetVideoAPICustomService;->tweet(Ljava/lang/String;J)Lf/g;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterUpload$12;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload$12;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    invoke-interface {v0, v1}, Lf/g;->a(Lf/j;)V

    .line 347
    return-void
.end method

.method private shareToTwitterViaCCV(Landroid/net/Uri;Ljava/lang/String;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Lcom/adobe/premiereclip/sharing/CCVPublish;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->projectTitle:Ljava/lang/String;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/premiereclip/sharing/CCVPublish;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/sharing/CCVPublish;->shareToCCV(Landroid/net/Uri;Ljava/lang/String;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V

    .line 109
    return-void
.end method

.method private shareToTwitterViaNativeApi(Landroid/net/Uri;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V
    .locals 2

    .prologue
    .line 112
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    .line 113
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mediaUri:Landroid/net/Uri;

    .line 115
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterUpload$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload$1;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method private updateProgress()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterUpload$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload$3;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method private uploadChunk([BIILjava/lang/String;)V
    .locals 10

    .prologue
    const/high16 v1, 0x100000

    const/4 v5, 0x0

    .line 184
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->cancelled:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, v5}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->notifyCompletion(Z)V

    .line 188
    :cond_0
    mul-int v4, p3, v1

    .line 189
    add-int v0, v4, v1

    if-lt v0, p2, :cond_1

    const/4 v5, 0x1

    .line 190
    :cond_1
    new-instance v0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;Ljava/lang/String;[BIZI)V

    .line 200
    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterUpload$6;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload$6;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    .line 210
    new-instance v2, Lcom/adobe/premiereclip/sharing/TwitterUpload$7;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload$7;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    .line 220
    new-instance v3, Lcom/adobe/premiereclip/sharing/TwitterUpload$8;

    invoke-direct {v3, p0, p3}, Lcom/adobe/premiereclip/sharing/TwitterUpload$8;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;I)V

    .line 230
    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->customTwitterApiClient:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->getAppendCustomService()Lcom/adobe/premiereclip/sharing/AppendVideoUploadAPICustomService;

    move-result-object v4

    invoke-interface {v4, v2, v1, v0, v3}, Lcom/adobe/premiereclip/sharing/AppendVideoUploadAPICustomService;->append(Ld/az;Ld/az;Ld/az;Ld/az;)Lf/g;

    move-result-object v0

    new-instance v3, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;

    move-object v4, p0

    move v6, p3

    move v7, p2

    move-object v8, p1

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;ZII[BLjava/lang/String;)V

    .line 231
    invoke-interface {v0, v3}, Lf/g;->a(Lf/j;)V

    .line 248
    return-void
.end method

.method private waitForStatus()V
    .locals 4

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->cancelled:Z

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->notifyCompletion(Z)V

    .line 286
    :cond_0
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->waitTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->sendTweet()V

    .line 321
    :goto_0
    return-void

    .line 291
    :cond_1
    :try_start_0
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->waitTime:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->customTwitterApiClient:Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient;->getStatusCustomService()Lcom/adobe/premiereclip/sharing/StatusVideoUploadAPICustomService;

    move-result-object v0

    const-string/jumbo v1, "STATUS"

    iget-wide v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mediaId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/premiereclip/sharing/StatusVideoUploadAPICustomService;->status(Ljava/lang/String;J)Lf/g;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterUpload$11;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/TwitterUpload$11;-><init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    invoke-interface {v0, v1}, Lf/g;->a(Lf/j;)V

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->mListener:Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->cancelled:Z

    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->cancel()V

    .line 84
    :cond_0
    return-void
.end method

.method public sendTweetViaIntent(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload;->ccvPublish:Lcom/adobe/premiereclip/sharing/CCVPublish;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/CCVPublish;->getUploadId()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://premiereclip.adobe.com/videos/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a04a3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/y;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/tweetcomposer/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetcomposer/y;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/y;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/y;->d()V

    .line 104
    :cond_0
    return-void
.end method

.method public shareToTwitter(Landroid/net/Uri;Ljava/lang/String;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;Z)V
    .locals 0

    .prologue
    .line 87
    if-eqz p4, :cond_0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->shareToTwitterViaCCV(Landroid/net/Uri;Ljava/lang/String;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->shareToTwitterViaNativeApi(Landroid/net/Uri;Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;)V

    goto :goto_0
.end method
