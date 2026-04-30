.class Lcom/twitter/sdk/android/tweetcomposer/f;
.super Ljava/lang/Object;
.source "ComposerController.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/e;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/c;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/c;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/c;->b()V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/c;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCount(I)V

    .line 113
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    sget v2, Lcom/twitter/sdk/android/tweetcomposer/t;->tw__ComposerCharCountOverflow:I

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCountTextStyle(I)V

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/c;->b(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->a(Z)V

    .line 120
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    sget v2, Lcom/twitter/sdk/android/tweetcomposer/t;->tw__ComposerCharCount:I

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCountTextStyle(I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/c;->e:Lcom/twitter/sdk/android/tweetcomposer/g;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/g;->b()Lcom/twitter/sdk/android/tweetcomposer/h;

    move-result-object v0

    const-string/jumbo v1, "tweet"

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/h;->a(Ljava/lang/String;)V

    .line 125
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string/jumbo v2, "EXTRA_USER_TOKEN"

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/c;->b:Lcom/twitter/sdk/android/core/aj;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/aj;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    const-string/jumbo v0, "EXTRA_TWEET_TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string/jumbo v0, "EXTRA_IMAGE_URI"

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v2, v2, Lcom/twitter/sdk/android/tweetcomposer/c;->c:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/c;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 130
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/f;->a:Lcom/twitter/sdk/android/tweetcomposer/c;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/c;->d:Lcom/twitter/sdk/android/tweetcomposer/a;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetcomposer/a;->a()V

    .line 131
    return-void
.end method
