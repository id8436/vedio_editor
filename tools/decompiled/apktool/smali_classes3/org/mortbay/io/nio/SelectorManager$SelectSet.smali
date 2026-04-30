.class public Lorg/mortbay/io/nio/SelectorManager$SelectSet;
.super Ljava/lang/Object;
.source "SelectorManager.java"


# instance fields
.field private _busyKey:Ljava/nio/channels/SelectionKey;

.field private _busyKeyCount:I

.field private transient _change:I

.field private transient _changes:[Ljava/util/List;

.field private transient _idleTimeout:Lorg/mortbay/thread/Timeout;

.field private transient _jvmBug:I

.field private _jvmFix0:I

.field private _jvmFix1:I

.field private _jvmFix2:I

.field private _log:J

.field private _monitorNext:J

.field private _monitorStart:J

.field private transient _nextSet:I

.field private _paused:I

.field private _pausing:Z

.field private transient _retryTimeout:Lorg/mortbay/thread/Timeout;

.field private volatile _selecting:Z

.field private transient _selector:Ljava/nio/channels/Selector;

.field private _selects:I

.field private transient _setID:I

.field private final this$0:Lorg/mortbay/io/nio/SelectorManager;


# direct methods
.method constructor <init>(Lorg/mortbay/io/nio/SelectorManager;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 304
    iput-object p1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput p2, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_setID:I

    .line 307
    new-instance v0, Lorg/mortbay/thread/Timeout;

    invoke-direct {v0, p0}, Lorg/mortbay/thread/Timeout;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    .line 308
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {p1}, Lorg/mortbay/io/nio/SelectorManager;->getMaxIdleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    .line 309
    new-instance v0, Lorg/mortbay/thread/Timeout;

    invoke-direct {v0, p0}, Lorg/mortbay/thread/Timeout;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    .line 310
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    .line 313
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 314
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_changes:[Ljava/util/List;

    .line 315
    iput v4, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_change:I

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorStart:J

    .line 317
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorStart:J

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$000()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    .line 318
    iget-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorStart:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_log:J

    .line 319
    return-void
.end method


# virtual methods
.method public addChange(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_changes:[Ljava/util/List;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_changes:[Ljava/util/List;

    iget v2, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_change:I

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    monitor-exit v1

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 333
    if-nez p2, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 339
    :goto_0
    return-void

    .line 335
    :cond_0
    instance-of v0, p2, Lorg/mortbay/io/EndPoint;

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0, p2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_1
    new-instance v0, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;

    invoke-direct {v0, p1, p2}, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;-><init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cancelIdle(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 1

    .prologue
    .line 344
    monitor-enter p0

    .line 346
    :try_start_0
    invoke-virtual {p1}, Lorg/mortbay/thread/Timeout$Task;->cancel()V

    .line 347
    monitor-exit p0

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doSelect()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    .line 364
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_changes:[Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 366
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_changes:[Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_change:I

    aget-object v5, v2, v4

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_change:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_change:I

    .line 368
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    .line 369
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 370
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-ge v4, v2, :cond_c

    .line 379
    :try_start_3
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 381
    instance-of v3, v2, Lorg/mortbay/io/EndPoint;

    if-eqz v3, :cond_2

    .line 384
    check-cast v2, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .line 385
    invoke-virtual {v2}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->doUpdateKey()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 375
    :cond_0
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 367
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 779
    :catch_0
    move-exception v2

    .line 781
    :try_start_6
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    .line 791
    :goto_3
    return-void

    .line 387
    :cond_2
    :try_start_7
    instance-of v3, v2, Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Lorg/mortbay/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 438
    :catch_1
    move-exception v2

    .line 440
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v3}, Lorg/mortbay/io/nio/SelectorManager;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 441
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 456
    :catchall_1
    move-exception v2

    :try_start_9
    invoke-interface {v5}, Ljava/util/List;->clear()V

    throw v2
    :try_end_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 783
    :catch_2
    move-exception v2

    .line 785
    :try_start_a
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto :goto_3

    .line 391
    :cond_3
    :try_start_b
    instance-of v3, v2, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;

    if-eqz v3, :cond_5

    .line 394
    move-object v0, v2

    check-cast v0, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;

    move-object v3, v0

    .line 395
    iget-object v2, v3, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;->_channel:Ljava/nio/channels/SelectableChannel;

    .line 396
    iget-object v6, v3, Lorg/mortbay/io/nio/SelectorManager$ChangeSelectableChannel;->_attachment:Ljava/lang/Object;

    .line 398
    instance-of v3, v2, Ljava/nio/channels/SocketChannel;

    if-eqz v3, :cond_4

    move-object v0, v2

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 400
    const/4 v3, 0x1

    invoke-virtual {v2, v10, v3, v6}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 401
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    check-cast v2, Ljava/nio/channels/SocketChannel;

    move-object/from16 v0, p0

    invoke-virtual {v6, v2, v0, v3}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v2

    .line 402
    invoke-virtual {v3, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-virtual {v2}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 445
    :catch_3
    move-exception v2

    .line 447
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v3}, Lorg/mortbay/io/nio/SelectorManager;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 448
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    .line 405
    :cond_4
    :try_start_d
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    const/16 v3, 0x8

    invoke-virtual {v2, v10, v3, v6}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    goto/16 :goto_2

    .line 410
    :cond_5
    instance-of v3, v2, Ljava/nio/channels/SocketChannel;

    if-eqz v3, :cond_7

    .line 412
    check-cast v2, Ljava/nio/channels/SocketChannel;

    .line 414
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 416
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v10, v3, v6}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 417
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v0, p0

    invoke-virtual {v6, v2, v0, v3}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v2

    .line 418
    invoke-virtual {v3, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual {v2}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V

    goto/16 :goto_2

    .line 421
    :cond_6
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    const/16 v3, 0x8

    const/4 v6, 0x0

    invoke-virtual {v2, v10, v3, v6}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    goto/16 :goto_2

    .line 426
    :cond_7
    instance-of v3, v2, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v3, :cond_8

    .line 428
    check-cast v2, Ljava/nio/channels/ServerSocketChannel;

    .line 429
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v3

    const/16 v6, 0x10

    invoke-virtual {v2, v3, v6}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    goto/16 :goto_2

    .line 431
    :cond_8
    instance-of v3, v2, Lorg/mortbay/io/nio/SelectorManager$ChangeTask;

    if-eqz v3, :cond_9

    .line 433
    check-cast v2, Lorg/mortbay/io/nio/SelectorManager$ChangeTask;

    invoke-interface {v2}, Lorg/mortbay/io/nio/SelectorManager$ChangeTask;->run()V

    goto/16 :goto_2

    .line 436
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 443
    :cond_a
    :try_start_e
    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 450
    :cond_b
    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    .line 456
    :cond_c
    :try_start_f
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 462
    monitor-enter p0
    :try_end_f
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 464
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v2, v6, v7}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v2, v6, v7}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v2}, Lorg/mortbay/io/nio/SelectorManager;->access$100(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    invoke-virtual {v10}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v4}, Lorg/mortbay/io/nio/SelectorManager;->access$100(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v3}, Lorg/mortbay/io/nio/SelectorManager;->access$200(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    .line 470
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v2}, Lorg/mortbay/thread/Timeout;->getTimeToNext()J

    move-result-wide v4

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v2}, Lorg/mortbay/thread/Timeout;->getTimeToNext()J

    move-result-wide v2

    .line 472
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 475
    const-wide/16 v8, 0x3e8

    .line 476
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-ltz v11, :cond_31

    cmp-long v11, v8, v4

    if-lez v11, :cond_31

    .line 478
    :goto_5
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_30

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_30

    cmp-long v8, v4, v2

    if-lez v8, :cond_30

    move-wide v8, v2

    .line 482
    :goto_6
    const-wide/16 v2, 0x2

    cmp-long v2, v8, v2

    if-lez v2, :cond_24

    .line 485
    :try_start_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_pausing:Z
    :try_end_11
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v2, :cond_d

    .line 489
    :try_start_12
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$400()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 498
    :cond_d
    :goto_7
    :try_start_13
    invoke-virtual {v10, v8, v9}, Ljava/nio/channels/Selector;->select(J)I

    move-result v3

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v2, v4, v5}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v2, v4, v5}, Lorg/mortbay/thread/Timeout;->setNow(J)V

    .line 502
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    .line 507
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    cmp-long v2, v4, v12

    if-lez v2, :cond_f

    .line 509
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$000()I

    move-result v11

    mul-int/2addr v2, v11

    int-to-long v12, v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorStart:J

    sub-long v14, v4, v14

    div-long/2addr v12, v14

    long-to-int v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    .line 510
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$500()I

    move-result v11

    if-le v2, v11, :cond_18

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_pausing:Z

    .line 511
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_pausing:Z

    if-eqz v2, :cond_e

    .line 512
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_paused:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_paused:I

    .line 514
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    .line 515
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    .line 516
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorStart:J

    .line 517
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$000()I

    move-result v2

    int-to-long v12, v2

    add-long/2addr v12, v4

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_monitorNext:J

    .line 520
    :cond_f
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_log:J

    cmp-long v2, v4, v12

    if-lez v2, :cond_13

    .line 522
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_paused:I

    if-lez v2, :cond_10

    .line 523
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v11, " Busy selector - injecting delay "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget v11, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_paused:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v11, " times"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 525
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix2:I

    if-lez v2, :cond_11

    .line 526
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v11, " JVM BUG(s) - injecting delay"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget v11, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix2:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v11, " times"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 528
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix1:I

    if-lez v2, :cond_19

    .line 529
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v11, " JVM BUG(s) - recreating selector "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget v11, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix1:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v11, " times, canceled keys "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget v11, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v11, " times"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 533
    :cond_12
    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_paused:I

    .line 534
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix2:I

    .line 535
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix1:I

    .line 536
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I

    .line 537
    const-wide/32 v12, 0xea60

    add-long/2addr v12, v4

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_log:J

    .line 541
    :cond_13
    if-nez v3, :cond_21

    const-wide/16 v12, 0xa

    cmp-long v2, v8, v12

    if-lez v2, :cond_21

    sub-long v6, v4, v6

    const-wide/16 v12, 0x2

    div-long/2addr v8, v12

    cmp-long v2, v6, v8

    if-gez v2, :cond_21

    .line 544
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    .line 545
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$600()I
    :try_end_13
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-result v3

    if-le v2, v3, :cond_1a

    .line 549
    :try_start_14
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$600()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_14

    .line 550
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix2:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix2:I

    .line 552
    :cond_14
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$400()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :cond_15
    :goto_a
    move-wide v6, v4

    .line 657
    :goto_b
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    if-eqz v2, :cond_16

    invoke-virtual {v10}, Ljava/nio/channels/Selector;->isOpen()Z
    :try_end_15
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-result v2

    if-nez v2, :cond_25

    .line 789
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto/16 :goto_3

    .line 469
    :cond_17
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v3}, Lorg/mortbay/io/nio/SelectorManager;->access$300(Lorg/mortbay/io/nio/SelectorManager;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/mortbay/thread/Timeout;->setDuration(J)V

    goto/16 :goto_4

    .line 472
    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    throw v2
    :try_end_17
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 789
    :catchall_3
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    throw v2

    .line 491
    :catch_4
    move-exception v2

    .line 493
    :try_start_18
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 510
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 531
    :cond_19
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I

    if-lez v2, :cond_12

    .line 532
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v11, " JVM BUG(s) - canceled keys "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget v11, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v11, " times"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 554
    :catch_5
    move-exception v2

    .line 556
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 559
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$600()I

    move-result v3

    if-ne v2, v3, :cond_1e

    .line 561
    monitor-enter p0
    :try_end_18
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 564
    :try_start_19
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix1:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix1:I

    .line 566
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v3

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 568
    :cond_1b
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 570
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 571
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 574
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    .line 575
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    .line 577
    if-nez v2, :cond_1c

    .line 578
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    goto :goto_c

    .line 593
    :catchall_4
    move-exception v2

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    throw v2
    :try_end_1a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 580
    :cond_1c
    :try_start_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    goto :goto_c

    .line 582
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 583
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 586
    :try_start_1c
    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 592
    :goto_d
    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto/16 :goto_3

    .line 588
    :catch_6
    move-exception v2

    .line 590
    :try_start_1e
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto :goto_d

    .line 595
    :cond_1e
    :try_start_1f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmBug:I

    rem-int/lit8 v2, v2, 0x20

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_15

    .line 598
    const/4 v3, 0x0

    .line 599
    invoke-virtual {v10}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 600
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 602
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 603
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v5

    if-nez v5, :cond_2f

    .line 605
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 606
    add-int/lit8 v2, v3, 0x1

    :goto_f
    move v3, v2

    .line 608
    goto :goto_e

    .line 609
    :cond_1f
    if-lez v3, :cond_20

    .line 610
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_jvmFix0:I
    :try_end_1f
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1f .. :try_end_1f} :catch_2
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 789
    :cond_20
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto/16 :goto_3

    .line 615
    :cond_21
    :try_start_20
    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$700()I

    move-result v2

    if-lez v2, :cond_15

    const/4 v2, 0x1

    if-ne v3, v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$500()I

    move-result v3

    if-le v2, v3, :cond_15

    .line 618
    invoke-virtual {v10}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_busyKey:Ljava/nio/channels/SelectionKey;

    if-ne v2, v3, :cond_23

    .line 621
    move-object/from16 v0, p0

    iget v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_busyKeyCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_busyKeyCount:I

    invoke-static {}, Lorg/mortbay/io/nio/SelectorManager;->access$700()I

    move-result v6

    if-le v3, v6, :cond_22

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    instance-of v3, v3, Ljava/nio/channels/ServerSocketChannel;

    if-nez v3, :cond_22

    .line 623
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .line 624
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Busy Key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 626
    if-eqz v3, :cond_22

    .line 628
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    new-instance v7, Lorg/mortbay/io/nio/SelectorManager$SelectSet$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v3}, Lorg/mortbay/io/nio/SelectorManager$SelectSet$1;-><init>(Lorg/mortbay/io/nio/SelectorManager$SelectSet;Lorg/mortbay/io/nio/SelectChannelEndPoint;)V

    invoke-virtual {v6, v7}, Lorg/mortbay/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    .line 647
    :cond_22
    :goto_10
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_busyKey:Ljava/nio/channels/SelectionKey;

    goto/16 :goto_a

    .line 646
    :cond_23
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_busyKeyCount:I

    goto :goto_10

    .line 652
    :cond_24
    invoke-virtual {v10}, Ljava/nio/channels/Selector;->selectNow()I

    .line 653
    move-object/from16 v0, p0

    iget v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selects:I

    goto/16 :goto_b

    .line 661
    :cond_25
    invoke-virtual {v10}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 662
    :cond_26
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 664
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;
    :try_end_20
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 668
    :try_start_21
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-nez v3, :cond_27

    .line 670
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 671
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .line 672
    if-eqz v3, :cond_26

    .line 673
    invoke-virtual {v3}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->doUpdateKey()V
    :try_end_21
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_21 .. :try_end_21} :catch_7
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    goto :goto_11

    .line 751
    :catch_7
    move-exception v2

    .line 753
    :try_start_22
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_22
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_22 .. :try_end_22} :catch_2
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    goto :goto_11

    .line 677
    :cond_27
    :try_start_23
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    .line 679
    instance-of v4, v3, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v4, :cond_28

    .line 681
    check-cast v3, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    .line 682
    invoke-virtual {v3}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V
    :try_end_23
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_23 .. :try_end_23} :catch_7
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    goto :goto_11

    .line 755
    :catch_8
    move-exception v3

    .line 757
    :try_start_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v4}, Lorg/mortbay/io/nio/SelectorManager;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 758
    invoke-static {v3}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 762
    :goto_12
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    instance-of v3, v3, Ljava/nio/channels/ServerSocketChannel;

    if-nez v3, :cond_26

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 764
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 766
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_24
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    goto :goto_11

    .line 684
    :cond_28
    :try_start_25
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v3, v2}, Lorg/mortbay/io/nio/SelectorManager;->acceptChannel(Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;

    move-result-object v3

    .line 687
    if-eqz v3, :cond_26

    .line 690
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 693
    move-object/from16 v0, p0

    iget v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v8}, Lorg/mortbay/io/nio/SelectorManager;->access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v8

    array-length v8, v8

    rem-int/2addr v4, v8

    move-object/from16 v0, p0

    iput v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    .line 696
    move-object/from16 v0, p0

    iget v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_setID:I

    if-ne v4, v8, :cond_29

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v4}, Lorg/mortbay/io/nio/SelectorManager;->access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v8}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    .line 700
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v9}, Lorg/mortbay/io/nio/SelectorManager;->access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v9

    move-object/from16 v0, p0

    iget v11, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    aget-object v9, v9, v11

    invoke-virtual {v8, v3, v9, v4}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v3

    .line 701
    invoke-virtual {v4, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    if-eqz v3, :cond_26

    .line 703
    invoke-virtual {v3}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V

    goto/16 :goto_11

    .line 708
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v4}, Lorg/mortbay/io/nio/SelectorManager;->access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    aget-object v4, v4, v8

    invoke-virtual {v4, v3}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-static {v3}, Lorg/mortbay/io/nio/SelectorManager;->access$800(Lorg/mortbay/io/nio/SelectorManager;)[Lorg/mortbay/io/nio/SelectorManager$SelectSet;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_nextSet:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    goto/16 :goto_11

    .line 712
    :cond_2a
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 715
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SocketChannel;
    :try_end_25
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_25 .. :try_end_25} :catch_7
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 719
    :try_start_26
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->finishConnect()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_9
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    move-result v3

    .line 727
    if-eqz v3, :cond_2b

    .line 729
    const/4 v3, 0x1

    :try_start_27
    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v4, v0, v2}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v3

    .line 731
    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-virtual {v3}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V

    goto/16 :goto_11

    .line 736
    :cond_2b
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_27
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_27 .. :try_end_27} :catch_7
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    goto/16 :goto_11

    .line 721
    :catch_9
    move-exception v8

    .line 723
    :try_start_28
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    invoke-virtual {v9, v4, v8, v3}, Lorg/mortbay/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    .line 736
    :try_start_29
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto/16 :goto_11

    .line 727
    :catchall_5
    move-exception v3

    .line 736
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    throw v3

    .line 743
    :cond_2c
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SocketChannel;

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    move-object/from16 v0, p0

    invoke-virtual {v4, v3, v0, v2}, Lorg/mortbay/io/nio/SelectorManager;->newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/mortbay/io/nio/SelectChannelEndPoint;

    move-result-object v3

    .line 745
    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 747
    invoke-virtual {v3}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->dispatch()V
    :try_end_29
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_29 .. :try_end_29} :catch_7
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_8
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    goto/16 :goto_11

    .line 760
    :cond_2d
    :try_start_2a
    invoke-static {v3}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 772
    :cond_2e
    invoke-virtual {v10}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v2, v6, v7}, Lorg/mortbay/thread/Timeout;->tick(J)V

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v2, v6, v7}, Lorg/mortbay/thread/Timeout;->tick(J)V
    :try_end_2a
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2a .. :try_end_2a} :catch_2
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    .line 789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto/16 :goto_3

    :cond_2f
    move v2, v3

    goto/16 :goto_f

    :cond_30
    move-wide v8, v4

    goto/16 :goto_6

    :cond_31
    move-wide v4, v8

    goto/16 :goto_5
.end method

.method public getManager()Lorg/mortbay/io/nio/SelectorManager;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->this$0:Lorg/mortbay/io/nio/SelectorManager;

    return-object v0
.end method

.method public getNow()J
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0}, Lorg/mortbay/thread/Timeout;->getNow()J

    move-result-wide v0

    return-wide v0
.end method

.method getSelector()Ljava/nio/channels/Selector;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public scheduleIdle(Lorg/mortbay/thread/Timeout$Task;)V
    .locals 4

    .prologue
    .line 808
    monitor-enter p0

    .line 810
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0}, Lorg/mortbay/thread/Timeout;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 811
    monitor-exit p0

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {p1, v0}, Lorg/mortbay/thread/Timeout$Task;->schedule(Lorg/mortbay/thread/Timeout;)V

    .line 814
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleTimeout(Lorg/mortbay/thread/Timeout$Task;J)V
    .locals 2

    .prologue
    .line 820
    monitor-enter p0

    .line 822
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/thread/Timeout;->schedule(Lorg/mortbay/thread/Timeout$Task;J)V

    .line 823
    monitor-exit p0

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 843
    const/4 v0, 0x1

    .line 844
    :goto_0
    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 847
    iget-boolean v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto :goto_0

    .line 850
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 851
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 853
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 856
    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    .line 859
    instance-of v2, v0, Lorg/mortbay/io/EndPoint;

    if-eqz v2, :cond_1

    .line 861
    check-cast v0, Lorg/mortbay/io/EndPoint;

    .line 864
    :try_start_0
    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 866
    :catch_0
    move-exception v0

    .line 868
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 873
    :cond_2
    monitor-enter p0

    .line 875
    :try_start_1
    iget-boolean v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    .line 876
    :goto_2
    if-eqz v0, :cond_3

    .line 878
    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 879
    iget-boolean v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selecting:Z

    goto :goto_2

    .line 882
    :cond_3
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_idleTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0}, Lorg/mortbay/thread/Timeout;->cancelAll()V

    .line 883
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_retryTimeout:Lorg/mortbay/thread/Timeout;

    invoke-virtual {v0}, Lorg/mortbay/thread/Timeout;->cancelAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_4

    .line 887
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 893
    :cond_4
    :goto_3
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 894
    monitor-exit p0

    .line 895
    return-void

    .line 889
    :catch_1
    move-exception v0

    .line 891
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public wakeup()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lorg/mortbay/io/nio/SelectorManager$SelectSet;->_selector:Ljava/nio/channels/Selector;

    .line 830
    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 832
    :cond_0
    return-void
.end method
