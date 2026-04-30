.class Lcom/twitter/sdk/android/tweetcomposer/g;
.super Ljava/lang/Object;
.source "ComposerController.java"


# instance fields
.field final a:Lcom/twitter/f;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Lcom/twitter/f;

    invoke-direct {v0}, Lcom/twitter/f;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/g;->a:Lcom/twitter/f;

    return-void
.end method


# virtual methods
.method a()Lcom/twitter/f;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/g;->a:Lcom/twitter/f;

    return-object v0
.end method

.method a(Lcom/twitter/sdk/android/core/aj;)Lcom/twitter/sdk/android/core/w;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/af;->a(Lcom/twitter/sdk/android/core/aj;)Lcom/twitter/sdk/android/core/w;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/twitter/sdk/android/tweetcomposer/h;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/i;

    invoke-static {}, Lcom/twitter/sdk/android/tweetcomposer/x;->a()Lcom/twitter/sdk/android/tweetcomposer/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/x;->d()Lcom/twitter/sdk/android/tweetcomposer/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/i;-><init>(Lcom/twitter/sdk/android/tweetcomposer/u;)V

    return-object v0
.end method
