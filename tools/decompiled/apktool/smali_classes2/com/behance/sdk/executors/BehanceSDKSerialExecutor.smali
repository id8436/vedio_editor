.class public Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;
.super Ljava/lang/Object;
.source "BehanceSDKSerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x1


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private poolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private threadPoolExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    .line 30
    new-instance v0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$1;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$1;-><init>(Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 38
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->poolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 40
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->poolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v8, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->threadPoolExecutor:Ljava/util/concurrent/Executor;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$2;-><init>(Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->threadPoolExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
