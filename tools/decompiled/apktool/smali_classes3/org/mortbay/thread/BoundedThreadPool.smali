.class public Lorg/mortbay/thread/BoundedThreadPool;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "BoundedThreadPool.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mortbay/thread/ThreadPool;


# static fields
.field private static __id:I


# instance fields
.field private _daemon:Z

.field private _id:I

.field private _idle:Ljava/util/List;

.field private final _joinLock:Ljava/lang/Object;

.field private _lastShrink:J

.field private final _lock:Ljava/lang/Object;

.field _lowThreads:I

.field private _maxIdleTimeMs:I

.field private _maxThreads:I

.field private _minThreads:I

.field private _name:Ljava/lang/String;

.field _priority:I

.field private _queue:Ljava/util/List;

.field private _threads:Ljava/util/Set;

.field private _warned:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_joinLock:Ljava/lang/Object;

    .line 53
    const v0, 0xea60

    iput v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxIdleTimeMs:I

    .line 54
    const/16 v0, 0xff

    iput v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    .line 59
    iput-boolean v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_warned:Z

    .line 60
    iput v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lowThreads:I

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "btpool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget v1, Lorg/mortbay/thread/BoundedThreadPool;->__id:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/mortbay/thread/BoundedThreadPool;->__id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static access$000(Lorg/mortbay/thread/BoundedThreadPool;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_daemon:Z

    return v0
.end method

.method static access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    return-object v0
.end method

.method static access$200(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_queue:Ljava/util/List;

    return-object v0
.end method

.method static access$302(Lorg/mortbay/thread/BoundedThreadPool;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_warned:Z

    return p1
.end method

.method static access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    return-object v0
.end method

.method static access$500(Lorg/mortbay/thread/BoundedThreadPool;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    return v0
.end method

.method static access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

    return-object v0
.end method

.method static access$700(Lorg/mortbay/thread/BoundedThreadPool;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    return v0
.end method

.method static access$800(Lorg/mortbay/thread/BoundedThreadPool;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lastShrink:J

    return-wide v0
.end method

.method static access$802(Lorg/mortbay/thread/BoundedThreadPool;J)J
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lastShrink:J

    return-wide p1
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 77
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/thread/BoundedThreadPool;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x0

    monitor-exit v2

    .line 109
    :goto_0
    return v0

    .line 83
    :cond_1
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 84
    if-lez v0, :cond_2

    .line 86
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;

    .line 87
    invoke-virtual {v0, p1}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->dispatch(Ljava/lang/Runnable;)V

    .line 107
    :goto_1
    monitor-exit v2

    move v0, v1

    .line 109
    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v3, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    if-ge v0, v3, :cond_3

    .line 95
    invoke-virtual {p0, p1}, Lorg/mortbay/thread/BoundedThreadPool;->newThread(Ljava/lang/Runnable;)Lorg/mortbay/thread/BoundedThreadPool$PoolThread;

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_warned:Z

    if-nez v0, :cond_4

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_warned:Z

    .line 102
    const-string/jumbo v0, "Out of threads for {}"

    invoke-static {v0, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    :cond_4
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 323
    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    iget v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    if-gtz v0, :cond_1

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "!0<minThreads<maxThreads"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

    .line 328
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_queue:Ljava/util/List;

    .line 330
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    if-ge v0, v1, :cond_2

    .line 332
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/mortbay/thread/BoundedThreadPool;->newThread(Ljava/lang/Runnable;)Lorg/mortbay/thread/BoundedThreadPool$PoolThread;

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_2
    return-void
.end method

.method protected doStop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 346
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    .line 348
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x64

    if-ge v1, v0, :cond_1

    .line 350
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 352
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 353
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 358
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 369
    :cond_1
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 370
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " threads could not be stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 372
    :cond_2
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_joinLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_joinLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 375
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 376
    return-void

    .line 363
    :cond_3
    mul-int/lit8 v0, v1, 0x64

    int-to-long v2, v0

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 348
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 375
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 365
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public getIdleThreads()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_idle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getLowThreads()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lowThreads:I

    return v0
.end method

.method public getMaxIdleTimeMs()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxIdleTimeMs:I

    return v0
.end method

.method public getMaxThreads()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    return v0
.end method

.method public getMinThreads()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueSize()I
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getThreads()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getThreadsPriority()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    return v0
.end method

.method public isDaemon()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_daemon:Z

    return v0
.end method

.method public isLowOnThreads()Z
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lowThreads:I

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_joinLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/thread/BoundedThreadPool;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_joinLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/thread/BoundedThreadPool;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 233
    :cond_1
    return-void
.end method

.method protected newThread(Ljava/lang/Runnable;)Lorg/mortbay/thread/BoundedThreadPool$PoolThread;
    .locals 5

    .prologue
    .line 381
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    new-instance v0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;-><init>(Lorg/mortbay/thread/BoundedThreadPool;Ljava/lang/Runnable;)V

    .line 384
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool;->_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/mortbay/thread/BoundedThreadPool;->_id:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mortbay/thread/BoundedThreadPool;->_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->setName(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->start()V

    .line 387
    monitor-exit v1

    return-object v0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDaemon(Z)V
    .locals 0

    .prologue
    .line 241
    iput-boolean p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_daemon:Z

    .line 242
    return-void
.end method

.method public setLowThreads(I)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lowThreads:I

    .line 251
    return-void
.end method

.method public setMaxIdleTimeMs(I)V
    .locals 0

    .prologue
    .line 263
    iput p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxIdleTimeMs:I

    .line 264
    return-void
.end method

.method public setMaxThreads(I)V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/mortbay/thread/BoundedThreadPool;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    if-ge p1, v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "!minThreads<maxThreads"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    iput p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    .line 277
    return-void
.end method

.method public setMinThreads(I)V
    .locals 3

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/mortbay/thread/BoundedThreadPool;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    iget v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_maxThreads:I

    if-le p1, v0, :cond_1

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "!0<=minThreads<maxThreads"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    iput p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    .line 290
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/thread/BoundedThreadPool;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool;->_threads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v2, p0, Lorg/mortbay/thread/BoundedThreadPool;->_minThreads:I

    if-ge v0, v2, :cond_2

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool;->newThread(Ljava/lang/Runnable;)Lorg/mortbay/thread/BoundedThreadPool$PoolThread;

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_name:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setThreadsPriority(I)V
    .locals 0

    .prologue
    .line 314
    iput p1, p0, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    .line 315
    return-void
.end method

.method protected stopJob(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 401
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 402
    return-void
.end method
