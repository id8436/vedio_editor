.class final Lcom/twitter/sdk/android/tweetcomposer/w;
.super Ljava/lang/Object;
.source "ScribeConstants.java"


# static fields
.field static final a:Lcom/twitter/sdk/android/core/internal/scribe/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/f;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/f;-><init>()V

    const-string/jumbo v1, "tfw"

    .line 38
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    const-string/jumbo v1, "android"

    .line 39
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    const-string/jumbo v1, "composer"

    .line 40
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->c(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/tweetcomposer/w;->a:Lcom/twitter/sdk/android/core/internal/scribe/f;

    .line 37
    return-void
.end method
