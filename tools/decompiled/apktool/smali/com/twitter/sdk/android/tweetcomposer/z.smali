.class Lcom/twitter/sdk/android/tweetcomposer/z;
.super Lcom/twitter/sdk/android/core/c;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/aj;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/aj;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/z;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/z;->a:Lcom/twitter/sdk/android/core/aj;

    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/z;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/z;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/ah;)V

    .line 93
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/twitter/sdk/android/core/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/z;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/z;->a:Lcom/twitter/sdk/android/core/aj;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetcomposer/z;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/a/h;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/aj;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
