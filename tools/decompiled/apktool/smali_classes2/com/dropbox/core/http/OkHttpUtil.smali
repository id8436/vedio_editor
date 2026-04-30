.class final Lcom/dropbox/core/http/OkHttpUtil;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNotSameThreadExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 5

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 23
    :try_start_0
    new-instance v0, Lcom/dropbox/core/http/OkHttpUtil$1;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttpUtil$1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 28
    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OkHttp dispatcher uses same-thread executor. This is not supported by the SDK and may result in dead-locks. Please configure your Dispatcher to use an ExecutorService that runs tasks on separate threads."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unable to verify OkHttp dispatcher executor."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 33
    :catch_1
    move-exception v0

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unable to verify OkHttp dispatcher executor."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :cond_0
    return-void
.end method
