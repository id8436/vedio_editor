.class public Lorg/mortbay/thread/QueuedThreadPool$PoolThread;
.super Ljava/lang/Thread;
.source "QueuedThreadPool.java"


# instance fields
.field _job:Ljava/lang/Runnable;

.field private final this$0:Lorg/mortbay/thread/QueuedThreadPool;


# direct methods
.method constructor <init>(Lorg/mortbay/thread/QueuedThreadPool;)V
    .locals 1

    .prologue
    .line 559
    iput-object p1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 560
    invoke-static {p1}, Lorg/mortbay/thread/QueuedThreadPool;->access$100(Lorg/mortbay/thread/QueuedThreadPool;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->setDaemon(Z)V

    .line 561
    invoke-static {p1}, Lorg/mortbay/thread/QueuedThreadPool;->access$200(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->setPriority(I)V

    .line 562
    return-void
.end method


# virtual methods
.method dispatch(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 662
    monitor-enter p0

    .line 664
    :try_start_0
    iput-object p1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 665
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 666
    monitor-exit p0

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 570
    move-object v2, v0

    move v0, v1

    .line 574
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-virtual {v3}, Lorg/mortbay/thread/QueuedThreadPool;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 577
    if-eqz v2, :cond_0

    .line 582
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move v0, v1

    .line 585
    :cond_0
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 588
    :try_start_1
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$400(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v2

    if-lez v2, :cond_3

    .line 590
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$410(Lorg/mortbay/thread/QueuedThreadPool;)I

    .line 591
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$500(Lorg/mortbay/thread/QueuedThreadPool;)[Ljava/lang/Runnable;

    move-result-object v2

    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$600(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v4

    aget-object v2, v2, v4

    .line 592
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$500(Lorg/mortbay/thread/QueuedThreadPool;)[Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$608(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v5

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 593
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$600(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v4

    iget-object v5, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$500(Lorg/mortbay/thread/QueuedThreadPool;)[Ljava/lang/Runnable;

    move-result-object v5

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 594
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$602(Lorg/mortbay/thread/QueuedThreadPool;I)I

    .line 595
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 632
    :catch_0
    move-exception v0

    .line 634
    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 638
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 640
    :try_start_4
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 641
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 642
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 644
    :try_start_5
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 645
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 646
    monitor-enter p0

    .line 648
    :try_start_6
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 649
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 652
    if-eqz v0, :cond_2

    .line 654
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    :goto_1
    invoke-virtual {v1, v0}, Lorg/mortbay/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 657
    :cond_2
    return-void

    .line 599
    :cond_3
    :try_start_7
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 600
    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$800(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v4

    if-le v2, v4, :cond_5

    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$900(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v4

    if-gt v2, v4, :cond_4

    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v4}, Lorg/mortbay/thread/QueuedThreadPool;->access$1100(Lorg/mortbay/thread/QueuedThreadPool;)I

    move-result v4

    if-le v2, v4, :cond_5

    .line 604
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 605
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$1200(Lorg/mortbay/thread/QueuedThreadPool;)J

    move-result-wide v6

    sub-long v6, v4, v6

    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-virtual {v2}, Lorg/mortbay/thread/QueuedThreadPool;->getMaxIdleTimeMs()I

    move-result v2

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-lez v2, :cond_5

    .line 607
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0, v4, v5}, Lorg/mortbay/thread/QueuedThreadPool;->access$1202(Lorg/mortbay/thread/QueuedThreadPool;J)J

    .line 608
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 609
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 638
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 640
    :try_start_8
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 641
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 642
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 644
    :try_start_9
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 645
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 646
    monitor-enter p0

    .line 648
    :try_start_a
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 649
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 652
    if-eqz v0, :cond_2

    .line 654
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    goto :goto_1

    .line 613
    :cond_5
    if-nez v0, :cond_6

    .line 616
    :try_start_b
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    const/4 v0, 0x1

    .line 619
    :cond_6
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 623
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 625
    :try_start_d
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    if-nez v2, :cond_7

    .line 626
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-virtual {v2}, Lorg/mortbay/thread/QueuedThreadPool;->getMaxIdleTimeMs()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 627
    :cond_7
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 628
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 629
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 638
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/QueuedThreadPool;->access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 640
    :try_start_f
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 641
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 642
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v1}, Lorg/mortbay/thread/QueuedThreadPool;->access$1300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 644
    :try_start_10
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v2}, Lorg/mortbay/thread/QueuedThreadPool;->access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 645
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 646
    monitor-enter p0

    .line 648
    :try_start_11
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 649
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 652
    if-eqz v1, :cond_8

    .line 654
    iget-object v2, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-virtual {v2, v1}, Lorg/mortbay/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 638
    :cond_8
    throw v0

    .line 641
    :catchall_3
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw v0

    .line 645
    :catchall_4
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v0

    .line 649
    :catchall_5
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw v0

    .line 641
    :catchall_6
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    throw v0

    .line 645
    :catchall_7
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v0

    .line 649
    :catchall_8
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    throw v0

    .line 641
    :catchall_9
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw v0

    .line 645
    :catchall_a
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v0

    .line 649
    :catchall_b
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    throw v0

    .line 638
    :cond_9
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 640
    :try_start_1b
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1000(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 641
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 642
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$1300(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 644
    :try_start_1c
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/mortbay/thread/QueuedThreadPool;->access$700(Lorg/mortbay/thread/QueuedThreadPool;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 645
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    .line 646
    monitor-enter p0

    .line 648
    :try_start_1d
    iget-object v0, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->_job:Ljava/lang/Runnable;

    .line 649
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    .line 652
    if-eqz v0, :cond_2

    .line 654
    iget-object v1, p0, Lorg/mortbay/thread/QueuedThreadPool$PoolThread;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    goto/16 :goto_1

    .line 641
    :catchall_c
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    throw v0

    .line 645
    :catchall_d
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    throw v0

    .line 649
    :catchall_e
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    throw v0
.end method
