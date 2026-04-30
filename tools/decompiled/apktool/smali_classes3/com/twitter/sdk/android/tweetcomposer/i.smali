.class Lcom/twitter/sdk/android/tweetcomposer/i;
.super Ljava/lang/Object;
.source "ComposerScribeClientImpl.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/h;


# instance fields
.field private final a:Lcom/twitter/sdk/android/tweetcomposer/u;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/u;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "scribeClient must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/i;->a:Lcom/twitter/sdk/android/tweetcomposer/u;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/w;->a:Lcom/twitter/sdk/android/core/internal/scribe/f;

    const-string/jumbo v1, ""

    .line 40
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 41
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    const-string/jumbo v1, "impression"

    .line 42
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/f;->a()Lcom/twitter/sdk/android/core/internal/scribe/e;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/i;->a:Lcom/twitter/sdk/android/tweetcomposer/u;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Lcom/twitter/sdk/android/tweetcomposer/u;->a(Lcom/twitter/sdk/android/core/internal/scribe/e;Ljava/util/List;)V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/w;->a:Lcom/twitter/sdk/android/core/internal/scribe/f;

    const-string/jumbo v1, ""

    .line 50
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    const-string/jumbo v1, "click"

    .line 52
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/f;->a()Lcom/twitter/sdk/android/core/internal/scribe/e;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/i;->a:Lcom/twitter/sdk/android/tweetcomposer/u;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Lcom/twitter/sdk/android/tweetcomposer/u;->a(Lcom/twitter/sdk/android/core/internal/scribe/e;Ljava/util/List;)V

    .line 55
    return-void
.end method
