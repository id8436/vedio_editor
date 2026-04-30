.class final Lcom/google/android/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MSG_CUSTOM:I = 0x9

.field private static final MSG_DO_SOME_WORK:I = 0x7

.field public static final MSG_ERROR:I = 0x3

.field private static final MSG_INCREMENTAL_PREPARE:I = 0x2

.field private static final MSG_PREPARE:I = 0x1

.field private static final MSG_RELEASE:I = 0x5

.field private static final MSG_SEEK_TO:I = 0x6

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x3

.field public static final MSG_SET_PLAY_WHEN_READY_ACK:I = 0x2

.field private static final MSG_SET_RENDERER_ENABLED:I = 0x8

.field public static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_STOP:I = 0x4

.field private static final PREPARE_INTERVAL_MS:I = 0xa

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private volatile bufferedPositionUs:J

.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private volatile durationUs:J

.field private elapsedRealtimeUs:J

.field private final enabledRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/TrackRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private final mediaClock:Lcom/google/android/exoplayer/MediaClock;

.field private final minBufferUs:J

.field private final minRebufferUs:J

.field private playWhenReady:Z

.field private volatile positionUs:J

.field private rebuffering:Z

.field private released:Z

.field private final rendererEnabledFlags:[Z

.field private renderers:[Lcom/google/android/exoplayer/TrackRenderer;

.field private state:I

.field private timeSourceTrackRenderer:Lcom/google/android/exoplayer/TrackRenderer;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z[ZII)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    .line 79
    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    .line 89
    iput-boolean p2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    .line 90
    array-length v1, p3

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererEnabledFlags:[Z

    .line 91
    int-to-long v2, p4

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minBufferUs:J

    .line 92
    int-to-long v2, p5

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minRebufferUs:J

    .line 93
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererEnabledFlags:[Z

    aget-boolean v2, p3, v0

    aput-boolean v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    .line 98
    iput-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    .line 99
    iput-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    .line 101
    new-instance v0, Lcom/google/android/exoplayer/MediaClock;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaClock;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer/MediaClock;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/google/android/exoplayer/util/PriorityHandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":Handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/util/PriorityHandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method private doSomeWork()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 389
    const-string/jumbo v0, "doSomeWork"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 391
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    .line 393
    :goto_0
    const/4 v6, 0x1

    .line 394
    const/4 v5, 0x1

    .line 395
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->updatePositionUs()V

    .line 396
    const/4 v4, 0x0

    move v14, v4

    move v4, v5

    move v5, v6

    move-wide v6, v0

    move v1, v14

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    .line 401
    iget-wide v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/android/exoplayer/TrackRenderer;->doSomeWork(JJ)V

    .line 402
    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .line 403
    :goto_2
    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererReadyOrEnded(Lcom/google/android/exoplayer/TrackRenderer;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 405
    :goto_3
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_4

    .line 396
    :cond_0
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 391
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 402
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 403
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 409
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->getDurationUs()J

    move-result-wide v8

    .line 410
    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->getBufferedPositionUs()J

    move-result-wide v10

    .line 411
    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_5

    .line 412
    const-wide/16 v6, -0x1

    goto :goto_4

    .line 413
    :cond_5
    const-wide/16 v12, -0x3

    cmp-long v0, v10, v12

    if-eqz v0, :cond_0

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    if-eqz v0, :cond_6

    const-wide/16 v12, -0x2

    cmp-long v0, v8, v12

    if-eqz v0, :cond_6

    cmp-long v0, v10, v8

    if-gez v0, :cond_0

    .line 419
    :cond_6
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_4

    .line 423
    :cond_7
    iput-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    .line 425
    if-eqz v5, :cond_c

    .line 426
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 427
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    .line 439
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 441
    :cond_a
    const/4 v1, 0x7

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->scheduleNextOperation(IJJ)V

    .line 446
    :cond_b
    :goto_6
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 447
    return-void

    .line 428
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    if-eqz v4, :cond_d

    .line 429
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 430
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v0, :cond_8

    .line 431
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_5

    .line 433
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    if-nez v4, :cond_8

    .line 434
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 435
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 436
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_5

    .line 442
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 443
    const/4 v1, 0x7

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->scheduleNextOperation(IJJ)V

    goto :goto_6
.end method

.method private ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 594
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->stop()V

    .line 596
    :cond_0
    return-void
.end method

.method private incrementalPrepareInternal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 264
    const/4 v1, 0x1

    .line 265
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 266
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v4

    if-nez v4, :cond_0

    .line 267
    iget-object v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/exoplayer/TrackRenderer;->prepare()I

    move-result v4

    .line 268
    if-nez v4, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    if-nez v1, :cond_2

    .line 276
    const/4 v1, 0x2

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->scheduleNextOperation(IJJ)V

    .line 318
    :goto_1
    return-void

    .line 280
    :cond_2
    const-wide/16 v4, 0x0

    .line 281
    const/4 v2, 0x1

    .line 282
    const/4 v1, 0x1

    .line 283
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 284
    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v3, v3, v0

    .line 285
    iget-object v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererEnabledFlags:[Z

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 286
    iget-wide v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/google/android/exoplayer/TrackRenderer;->enable(JZ)V

    .line 287
    iget-object v6, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 289
    :goto_3
    if-eqz v1, :cond_5

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererReadyOrEnded(Lcom/google/android/exoplayer/TrackRenderer;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 290
    :goto_4
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_6

    .line 283
    :cond_3
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 288
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 289
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 294
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/exoplayer/TrackRenderer;->getDurationUs()J

    move-result-wide v6

    .line 295
    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_7

    .line 296
    const-wide/16 v4, -0x1

    goto :goto_5

    .line 297
    :cond_7
    const-wide/16 v8, -0x2

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    .line 300
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_5

    .line 305
    :cond_8
    iput-wide v4, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    .line 307
    if-eqz v2, :cond_a

    .line 309
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 317
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 311
    :cond_a
    if-eqz v1, :cond_b

    const/4 v0, 0x4

    :goto_7
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 312
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 313
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_6

    .line 311
    :cond_b
    const/4 v0, 0x3

    goto :goto_7
.end method

.method private prepareInternal([Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 250
    iput-boolean v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 251
    iput-object p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    move v0, v1

    .line 252
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 253
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer/TrackRenderer;->isTimeSource()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->timeSourceTrackRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 255
    aget-object v2, p1, v0

    iput-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->timeSourceTrackRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 254
    goto :goto_1

    .line 258
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 260
    return-void
.end method

.method private release(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 3

    .prologue
    .line 525
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->release()V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 533
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 528
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 529
    :catch_1
    move-exception v0

    .line 531
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private releaseInternal()V
    .locals 1

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->resetInternal()V

    .line 484
    monitor-enter p0

    .line 485
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 486
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 487
    monitor-exit p0

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private rendererReadyOrEnded(Lcom/google/android/exoplayer/TrackRenderer;)Z
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 321
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v1

    .line 324
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    .line 325
    goto :goto_0

    .line 327
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 330
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getDurationUs()J

    move-result-wide v4

    .line 331
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getBufferedPositionUs()J

    move-result-wide v6

    .line 332
    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minRebufferUs:J

    .line 333
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    cmp-long v8, v6, v10

    if-eqz v8, :cond_3

    const-wide/16 v8, -0x3

    cmp-long v8, v6, v8

    if-eqz v8, :cond_3

    iget-wide v8, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-gez v2, :cond_3

    cmp-long v2, v4, v10

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    cmp-long v2, v6, v4

    if-ltz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    .line 332
    :cond_5
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->minBufferUs:J

    goto :goto_1
.end method

.method private resetInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/MediaClock;->stop()V

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v1, v1, v0

    .line 499
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopAndDisable(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 500
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->release(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 502
    :cond_1
    iput-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    .line 503
    iput-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->timeSourceTrackRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 504
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 505
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    goto :goto_0
.end method

.method private scheduleNextOperation(IJJ)V
    .locals 4

    .prologue
    .line 451
    add-long v0, p2, p4

    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 453
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private seekToInternal(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 462
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    .line 463
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/MediaClock;->stop()V

    .line 464
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer/MediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer/MediaClock;->setPositionUs(J)V

    .line 465
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    .line 468
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    .line 470
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 471
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/TrackRenderer;->seekTo(J)V

    .line 468
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 473
    :cond_2
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private sendMessageInternal(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 539
    :try_start_0
    check-cast p2, Landroid/util/Pair;

    .line 540
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 542
    monitor-enter p0

    .line 543
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 544
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 545
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 551
    :cond_0
    return-void

    .line 545
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 542
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 543
    :try_start_3
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 544
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 545
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 546
    throw v0

    .line 545
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 344
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 345
    iput-boolean p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    .line 346
    if-nez p1, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    .line 348
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->updatePositionUs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 360
    return-void

    .line 350
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 351
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 359
    throw v0

    .line 353
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setRendererEnabledInternal(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 555
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererEnabledFlags:[Z

    aget-boolean v1, v1, p1

    if-ne v1, p2, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rendererEnabledFlags:[Z

    aput-boolean p2, v1, p1

    .line 560
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-eq v1, v3, :cond_0

    .line 564
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer/TrackRenderer;

    aget-object v1, v1, p1

    .line 565
    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v2

    .line 566
    if-eq v2, v0, :cond_2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 572
    :cond_2
    if-eqz p2, :cond_5

    .line 573
    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 574
    :goto_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/exoplayer/TrackRenderer;->enable(JZ)V

    .line 575
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    if-eqz v0, :cond_3

    .line 577
    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->start()V

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 573
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 581
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->timeSourceTrackRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    if-ne v1, v0, :cond_6

    .line 584
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->getCurrentPositionUs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/MediaClock;->setPositionUs(J)V

    .line 586
    :cond_6
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 588
    invoke-virtual {v1}, Lcom/google/android/exoplayer/TrackRenderer;->disable()V

    goto :goto_0
.end method

.method private setState(I)V
    .locals 3

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_0

    .line 244
    iput p1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->state:I

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    :cond_0
    return-void
.end method

.method private startRenderers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 364
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/MediaClock;->start()V

    move v1, v0

    .line 365
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->start()V

    .line 365
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method private stopAndDisable(Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 3

    .prologue
    .line 510
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 511
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 512
    invoke-virtual {p1}, Lcom/google/android/exoplayer/TrackRenderer;->disable()V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 516
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 517
    :catch_1
    move-exception v0

    .line 519
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopInternal()V
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->rebuffering:Z

    .line 479
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->resetInternal()V

    .line 480
    return-void
.end method

.method private stopRenderers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/MediaClock;->stop()V

    .line 372
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/TrackRenderer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 372
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method private updatePositionUs()V
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->timeSourceTrackRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->enabledRenderers:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->timeSourceTrackRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->timeSourceTrackRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 379
    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->timeSourceTrackRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/TrackRenderer;->getCurrentPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer/MediaClock;

    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/MediaClock;->setPositionUs(J)V

    .line 385
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    .line 386
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplayer/MediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized blockingSendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 5

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_1

    .line 157
    const-string/jumbo v0, "ExoPlayerImplInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sent message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") after release. Message ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    .line 161
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 162
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesProcessed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v0, :cond_0

    .line 164
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBufferedPosition()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 120
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->bufferedPositionUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 4

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->positionUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 125
    iget-wide v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->durationUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 189
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 238
    :goto_0
    return v0

    .line 191
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/exoplayer/TrackRenderer;

    check-cast v0, [Lcom/google/android/exoplayer/TrackRenderer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->prepareInternal([Lcom/google/android/exoplayer/TrackRenderer;)V

    move v0, v1

    .line 192
    goto :goto_0

    .line 195
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->incrementalPrepareInternal()V

    move v0, v1

    .line 196
    goto :goto_0

    .line 199
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    move v0, v1

    .line 200
    goto :goto_0

    .line 203
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->doSomeWork()V

    move v0, v1

    .line 204
    goto :goto_0

    .line 207
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->seekToInternal(J)V

    move v0, v1

    .line 208
    goto :goto_0

    .line 211
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopInternal()V

    move v0, v1

    .line 212
    goto :goto_0

    .line 215
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->releaseInternal()V

    move v0, v1

    .line 216
    goto :goto_0

    .line 219
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->sendMessageInternal(ILjava/lang/Object;)V

    move v0, v1

    .line 220
    goto :goto_0

    .line 223
    :pswitch_8
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->setRendererEnabledInternal(IZ)V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 224
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string/jumbo v2, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Internal track renderer error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 232
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopInternal()V

    move v0, v1

    .line 233
    goto :goto_0

    .line 234
    :catch_1
    move-exception v0

    .line 235
    const-string/jumbo v2, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Internal runtime error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 237
    invoke-direct {p0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->stopInternal()V

    move v0, v1

    .line 238
    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public varargs prepare([Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 178
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 183
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void
.end method

.method public sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 150
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->customMessagesSent:I

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void

    :cond_0
    move v0, v1

    .line 134
    goto :goto_0
.end method

.method public setRendererEnabled(IZ)V
    .locals 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method
