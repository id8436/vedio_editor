.class Lcom/twitter/sdk/android/tweetcomposer/d;
.super Lcom/twitter/sdk/android/core/c;
.source "ComposerController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/a/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/c;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/c;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/d;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/d;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setProfilePhotoView(Lcom/twitter/sdk/android/core/a/q;)V

    .line 90
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/twitter/sdk/android/core/a/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/d;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v1, v0, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/a/q;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setProfilePhotoView(Lcom/twitter/sdk/android/core/a/q;)V

    .line 84
    return-void
.end method
