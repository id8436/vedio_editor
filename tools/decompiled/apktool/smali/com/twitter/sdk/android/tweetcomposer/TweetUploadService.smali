.class public Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;
.super Landroid/app/IntentService;
.source "TweetUploadService.java"


# instance fields
.field a:Lcom/twitter/sdk/android/tweetcomposer/ab;

.field b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/ab;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetcomposer/ab;-><init>()V

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ab;)V

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ab;)V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "TweetUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a:Lcom/twitter/sdk/android/tweetcomposer/ab;

    .line 68
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "EXTRA_TWEET_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "EXTRA_RETRY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method a(Lcom/twitter/sdk/android/core/ah;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->b:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Landroid/content/Intent;)V

    .line 137
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "TweetUploadService"

    const-string/jumbo v2, "Post Tweet failed"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->stopSelf()V

    .line 139
    return-void
.end method

.method a(Lcom/twitter/sdk/android/core/aj;Landroid/net/Uri;Lcom/twitter/sdk/android/core/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/aj;",
            "Landroid/net/Uri;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a:Lcom/twitter/sdk/android/tweetcomposer/ab;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ab;->a(Lcom/twitter/sdk/android/core/aj;)Lcom/twitter/sdk/android/core/w;

    move-result-object v0

    .line 123
    invoke-static {p0, p2}, Lcom/twitter/sdk/android/tweetcomposer/o;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 124
    if-nez v1, :cond_0

    .line 125
    new-instance v0, Lcom/twitter/sdk/android/core/ah;

    const-string/jumbo v1, "Uri file path resolved to null"

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/ah;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/ah;)V

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {v2}, Lcom/twitter/sdk/android/tweetcomposer/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Ld/an;->a(Ljava/lang/String;)Ld/an;

    move-result-object v1

    invoke-static {v1, v2}, Ld/az;->create(Ld/an;Ljava/io/File;)Ld/az;

    move-result-object v1

    .line 132
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/w;->getMediaService()Lcom/twitter/sdk/android/core/services/MediaService;

    move-result-object v0

    invoke-interface {v0, v1, v3, v3}, Lcom/twitter/sdk/android/core/services/MediaService;->upload(Ld/az;Ld/az;Ld/az;)Lf/g;

    move-result-object v0

    invoke-interface {v0, p3}, Lf/g;->a(Lf/j;)V

    goto :goto_0
.end method

.method a(Lcom/twitter/sdk/android/core/aj;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 83
    if-eqz p3, :cond_0

    .line 84
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/z;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/z;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/aj;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/aj;Landroid/net/Uri;Lcom/twitter/sdk/android/core/c;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/aj;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Lcom/twitter/sdk/android/core/aj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a:Lcom/twitter/sdk/android/tweetcomposer/ab;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ab;->a(Lcom/twitter/sdk/android/core/aj;)Lcom/twitter/sdk/android/core/w;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/w;->getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/twitter/sdk/android/core/services/StatusesService;->update(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lf/g;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/aa;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/aa;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;)V

    .line 105
    invoke-interface {v0, v1}, Lf/g;->a(Lf/j;)V

    .line 118
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 72
    const-string/jumbo v0, "EXTRA_USER_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 73
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->b:Landroid/content/Intent;

    .line 74
    new-instance v1, Lcom/twitter/sdk/android/core/aj;

    const-wide/16 v2, -0x1

    const-string/jumbo v4, ""

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/sdk/android/core/aj;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    .line 76
    const-string/jumbo v0, "EXTRA_TWEET_TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string/jumbo v0, "EXTRA_IMAGE_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 79
    invoke-virtual {p0, v1, v2, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/aj;Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    return-void
.end method
