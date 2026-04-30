.class public Lorg/mortbay/thread/BoundedThreadPool$PoolThread;
.super Ljava/lang/Thread;
.source "BoundedThreadPool.java"


# instance fields
.field _job:Ljava/lang/Runnable;

.field private final this$0:Lorg/mortbay/thread/BoundedThreadPool;


# direct methods
.method constructor <init>(Lorg/mortbay/thread/BoundedThreadPool;)V
    .locals 1

    .prologue
    .line 416
    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 417
    invoke-static {p1}, Lorg/mortbay/thread/BoundedThreadPool;->access$000(Lorg/mortbay/thread/BoundedThreadPool;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->setDaemon(Z)V

    .line 418
    iget v0, p1, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->setPriority(I)V

    .line 419
    return-void
.end method

.method constructor <init>(Lorg/mortbay/thread/BoundedThreadPool;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 423
    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 424
    invoke-static {p1}, Lorg/mortbay/thread/BoundedThreadPool;->access$000(Lorg/mortbay/thread/BoundedThreadPool;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->setDaemon(Z)V

    .line 425
    iget v0, p1, Lorg/mortbay/thread/BoundedThreadPool;->_priority:I

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->setPriority(I)V

    .line 426
    iput-object p2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 427
    return-void
.end method


# virtual methods
.method dispatch(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 530
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 534
    :cond_1
    :try_start_1
    iput-object p1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 535
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 536
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 437
    .line 439
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 441
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 442
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 443
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 445
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v0}, Lorg/mortbay/thread/BoundedThreadPool;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 447
    if-eqz v1, :cond_1

    .line 451
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .line 452
    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 512
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 514
    :try_start_5
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 515
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 518
    monitor-enter p0

    .line 520
    :try_start_6
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 521
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 522
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v2}, Lorg/mortbay/thread/BoundedThreadPool;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v2, v1}, Lorg/mortbay/thread/BoundedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 512
    :cond_0
    throw v0

    .line 456
    :cond_1
    :try_start_7
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 459
    :try_start_8
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$200(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 461
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$200(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 462
    monitor-exit v3

    move-object v1, v0

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lorg/mortbay/thread/BoundedThreadPool;->access$302(Lorg/mortbay/thread/BoundedThreadPool;Z)Z

    .line 469
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v4, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/BoundedThreadPool;->access$500(Lorg/mortbay/thread/BoundedThreadPool;)I

    move-result v4

    if-gt v0, v4, :cond_3

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v4, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/BoundedThreadPool;->access$700(Lorg/mortbay/thread/BoundedThreadPool;)I

    move-result v4

    if-le v0, v4, :cond_5

    .line 473
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 474
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$800(Lorg/mortbay/thread/BoundedThreadPool;)J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v0}, Lorg/mortbay/thread/BoundedThreadPool;->getMaxIdleTimeMs()I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-lez v0, :cond_5

    .line 476
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0, v4, v5}, Lorg/mortbay/thread/BoundedThreadPool;->access$802(Lorg/mortbay/thread/BoundedThreadPool;J)J

    .line 477
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 512
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 514
    :try_start_9
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 515
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 518
    monitor-enter p0

    .line 520
    :try_start_a
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 521
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 522
    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v1}, Lorg/mortbay/thread/BoundedThreadPool;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 523
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    :goto_1
    invoke-virtual {v1, v0}, Lorg/mortbay/thread/BoundedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 525
    :cond_4
    return-void

    .line 483
    :cond_5
    :try_start_b
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 488
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 490
    :try_start_d
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    if-nez v0, :cond_6

    .line 491
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v0}, Lorg/mortbay/thread/BoundedThreadPool;->getMaxIdleTimeMs()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 492
    :cond_6
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 493
    const/4 v1, 0x0

    :try_start_e
    iput-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 494
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 502
    :try_start_f
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 504
    :try_start_10
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v3}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 505
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    :goto_2
    move-object v1, v0

    goto/16 :goto_0

    .line 484
    :catchall_2
    move-exception v0

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 494
    :catchall_3
    move-exception v0

    :goto_3
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 496
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 498
    :try_start_15
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 502
    :try_start_16
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 504
    :try_start_17
    iget-object v3, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v3}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 505
    monitor-exit v1

    goto :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v0

    .line 502
    :catchall_5
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 504
    :try_start_19
    iget-object v2, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/BoundedThreadPool;->access$600(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 505
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 502
    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 515
    :catchall_6
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    throw v0

    .line 521
    :catchall_7
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    throw v0

    .line 515
    :catchall_8
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    throw v0

    .line 521
    :catchall_9
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    throw v0

    .line 505
    :catchall_a
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    :try_start_20
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    :catchall_b
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    :try_start_22
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 512
    :cond_7
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$100(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 514
    :try_start_23
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/BoundedThreadPool;->access$400(Lorg/mortbay/thread/BoundedThreadPool;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 515
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    .line 518
    monitor-enter p0

    .line 520
    :try_start_24
    iget-object v0, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 521
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    .line 522
    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    invoke-virtual {v1}, Lorg/mortbay/thread/BoundedThreadPool;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 523
    iget-object v1, p0, Lorg/mortbay/thread/BoundedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/BoundedThreadPool;

    goto/16 :goto_1

    .line 515
    :catchall_c
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    throw v0

    .line 521
    :catchall_d
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    throw v0

    .line 494
    :catchall_e
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3
.end method
