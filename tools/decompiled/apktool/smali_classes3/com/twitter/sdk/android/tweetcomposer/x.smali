.class public Lcom/twitter/sdk/android/tweetcomposer/x;
.super Ljava/lang/Object;
.source "TweetComposer.java"


# static fields
.field static volatile a:Lcom/twitter/sdk/android/tweetcomposer/x;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field b:Lcom/twitter/sdk/android/core/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/u",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/twitter/sdk/android/core/g;

.field d:Landroid/content/Context;

.field e:Lcom/twitter/sdk/android/tweetcomposer/u;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/v;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/a;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/x;->e:Lcom/twitter/sdk/android/tweetcomposer/u;

    .line 71
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->f()Lcom/twitter/sdk/android/core/u;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/x;->b:Lcom/twitter/sdk/android/core/u;

    .line 72
    invoke-static {}, Lcom/twitter/sdk/android/core/af;->a()Lcom/twitter/sdk/android/core/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/af;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/x;->c:Lcom/twitter/sdk/android/core/g;

    .line 73
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->b()Lcom/twitter/sdk/android/core/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/x;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/v;->a(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/x;->d:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetcomposer/x;->e()V

    .line 76
    return-void
.end method

.method public static a()Lcom/twitter/sdk/android/tweetcomposer/x;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/x;->a:Lcom/twitter/sdk/android/tweetcomposer/x;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lcom/twitter/sdk/android/tweetcomposer/x;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/x;->a:Lcom/twitter/sdk/android/tweetcomposer/x;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/x;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetcomposer/x;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetcomposer/x;->a:Lcom/twitter/sdk/android/tweetcomposer/x;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/twitter/sdk/android/tweetcomposer/x;->a:Lcom/twitter/sdk/android/tweetcomposer/x;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 7

    .prologue
    .line 83
    const-string/jumbo v0, "TweetComposer"

    .line 84
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/aa;

    move-result-object v5

    .line 85
    new-instance v6, Lcom/twitter/sdk/android/tweetcomposer/v;

    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/a;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/x;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/x;->b:Lcom/twitter/sdk/android/core/u;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetcomposer/x;->c:Lcom/twitter/sdk/android/core/g;

    .line 86
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->b()Lcom/twitter/sdk/android/core/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/sdk/android/core/v;->c()Lcom/twitter/sdk/android/core/internal/s;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/a;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Lcom/twitter/sdk/android/core/internal/s;Lcom/twitter/sdk/android/core/internal/scribe/aa;)V

    invoke-direct {v6, v0}, Lcom/twitter/sdk/android/tweetcomposer/v;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/a;)V

    iput-object v6, p0, Lcom/twitter/sdk/android/tweetcomposer/x;->e:Lcom/twitter/sdk/android/tweetcomposer/u;

    .line 88
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "3.1.1.9"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "com.twitter.sdk.android:tweet-composer"

    return-object v0
.end method

.method d()Lcom/twitter/sdk/android/tweetcomposer/u;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/x;->e:Lcom/twitter/sdk/android/tweetcomposer/u;

    return-object v0
.end method
