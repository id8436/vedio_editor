.class Lcom/twitter/sdk/android/tweetcomposer/aa;
.super Lcom/twitter/sdk/android/core/c;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/a/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/aa;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/aa;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/ah;)V

    .line 116
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/twitter/sdk/android/core/a/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/aa;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/a/o;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/a/o;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(J)V

    .line 110
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/aa;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->stopSelf()V

    .line 111
    return-void
.end method
