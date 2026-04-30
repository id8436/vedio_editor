.class final Lcom/twitter/sdk/android/core/internal/k;
.super Ljava/lang/Object;
.source "AdvertisingInfoServiceStrategy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private a:Z

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/k;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/sdk/android/core/internal/j;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/k;-><init>()V

    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/internal/k;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "getBinder already called"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/internal/k;->a:Z

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/k;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0xc8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/k;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/k;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 122
    return-void
.end method
