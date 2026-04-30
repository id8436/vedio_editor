.class public Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.super Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.source "MediaCodecVideoTrackRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field public static final MSG_SET_SURFACE:I = 0x1


# instance fields
.field private final allowedJoiningTimeUs:J

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentWidth:I

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrameCount:I

.field private final eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

.field private final frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

.field private joiningDeadlineUs:J

.field private lastReportedHeight:I

.field private lastReportedPixelWidthHeightRatio:F

.field private lastReportedWidth:I

.field private final maxDroppedFrameCountToNotify:I

.field private renderedFirstFrame:Z

.field private reportedDrawnToSurface:Z

.field private surface:Landroid/view/Surface;

.field private final videoScalingMode:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;I)V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZI)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;IJ)V
    .locals 9

    .prologue
    .line 174
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJ)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V
    .locals 13

    .prologue
    .line 212
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJLcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZI)V
    .locals 8

    .prologue
    .line 162
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJ)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJ)V
    .locals 13

    .prologue
    .line 193
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJLcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZIJLcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;Landroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V
    .locals 9

    .prologue
    .line 241
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V

    .line 242
    iput p4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->videoScalingMode:I

    .line 243
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p5

    iput-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    .line 244
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    .line 245
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    .line 246
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maxDroppedFrameCountToNotify:I

    .line 247
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    .line 248
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    .line 249
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    .line 250
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    .line 251
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    .line 252
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    .line 253
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    return-object v0
.end method

.method private dropOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 2

    .prologue
    .line 474
    const-string/jumbo v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 476
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->droppedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->droppedOutputBufferCount:I

    .line 478
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    .line 479
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maxDroppedFrameCountToNotify:I

    if-ne v0, v1, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDroppedFrameCount()V

    .line 482
    :cond_0
    return-void
.end method

.method private maybeNotifyDrawnToSurface()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    if-eqz v0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    .line 531
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Landroid/view/Surface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    goto :goto_0
.end method

.method private maybeNotifyDroppedFrameCount()V
    .locals 7

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    if-nez v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 547
    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    .line 548
    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v4, v0, v4

    .line 549
    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;

    invoke-direct {v6, p0, v2, v4, v5}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$3;-><init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IJ)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    .line 557
    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    goto :goto_0
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 5

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    .line 511
    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    .line 512
    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    .line 513
    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;IIF)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    .line 521
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    .line 522
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    goto :goto_0
.end method

.method private renderOutputBufferImmediate(Landroid/media/MediaCodec;I)V
    .locals 2

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyVideoSizeChanged()V

    .line 486
    const-string/jumbo v0, "renderVideoBufferImmediate"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 488
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    .line 490
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDrawnToSurface()V

    .line 491
    return-void
.end method

.method private renderOutputBufferTimedV21(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyVideoSizeChanged()V

    .line 496
    const-string/jumbo v0, "releaseOutputBufferTimed"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 498
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->renderedOutputBufferCount:I

    .line 500
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDrawnToSurface()V

    .line 501
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    if-ne v0, p1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->reportedDrawnToSurface:Z

    .line 347
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->getState()I

    move-result v0

    .line 348
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 349
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->releaseCodec()V

    .line 350
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeInitCodec()V

    goto :goto_0
.end method

.method private skipOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 2

    .prologue
    .line 467
    const-string/jumbo v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 469
    invoke-static {}, Lcom/google/android/exoplayer/util/TraceUtil;->endSection()V

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->skippedOutputBufferCount:I

    .line 471
    return-void
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z
    .locals 2

    .prologue
    .line 391
    iget-object v0, p4, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iget-object v1, p3, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lcom/google/android/exoplayer/MediaFormat;->width:I

    iget v1, p4, Lcom/google/android/exoplayer/MediaFormat;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lcom/google/android/exoplayer/MediaFormat;->height:I

    iget v1, p4, Lcom/google/android/exoplayer/MediaFormat;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 364
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->videoScalingMode:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 365
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 331
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->setSurface(Landroid/view/Surface;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected handlesMimeType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 258
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->handlesMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReady()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    .line 282
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->codecInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->getSourceState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 285
    :cond_0
    iput-wide v6, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    .line 296
    :cond_1
    :goto_0
    return v0

    .line 287
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    move v0, v1

    .line 289
    goto :goto_0

    .line 290
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 295
    iput-wide v6, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    move v0, v1

    .line 296
    goto :goto_0
.end method

.method public onDisabled()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    .line 316
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    .line 317
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    .line 318
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    .line 319
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedWidth:I

    .line 320
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedHeight:I

    .line 321
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->lastReportedPixelWidthHeightRatio:F

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    invoke-interface {v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;->disable()V

    .line 325
    :cond_0
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onDisabled()V

    .line 326
    return-void
.end method

.method protected onEnabled(JZ)V
    .locals 5

    .prologue
    .line 263
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onEnabled(JZ)V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    .line 265
    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->allowedJoiningTimeUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    invoke-interface {v0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;->enable()V

    .line 271
    :cond_1
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-super {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 372
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentPixelWidthHeightRatio:F

    .line 374
    return-void

    .line 372
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    goto :goto_0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 3

    .prologue
    .line 378
    const-string/jumbo v0, "crop-right"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "crop-left"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "crop-bottom"

    .line 379
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "crop-top"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 380
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v0, "crop-right"

    .line 381
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "crop-left"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 382
    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentWidth:I

    .line 383
    if-eqz v1, :cond_2

    const-string/jumbo v0, "crop-bottom"

    .line 384
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "crop-top"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 385
    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->currentHeight:I

    .line 386
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 381
    :cond_1
    const-string/jumbo v0, "width"

    .line 382
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 384
    :cond_2
    const-string/jumbo v0, "height"

    .line 385
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_2
.end method

.method protected onStarted()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onStarted()V

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameCount:I

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 305
    return-void
.end method

.method protected onStopped()V
    .locals 2

    .prologue
    .line 309
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    .line 310
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->maybeNotifyDroppedFrameCount()V

    .line 311
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onStopped()V

    .line 312
    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 11

    .prologue
    .line 399
    if-eqz p9, :cond_0

    .line 400
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 401
    const/4 v2, 0x1

    .line 463
    :goto_0
    return v2

    .line 405
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v2, p3

    .line 406
    move-object/from16 v0, p7

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v4, p1

    sub-long/2addr v4, v2

    .line 409
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 410
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v2, v6

    .line 414
    iget-object v8, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    if-eqz v8, :cond_1

    .line 415
    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->frameReleaseTimeHelper:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;

    move-object/from16 v0, p7

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v4, v8, v9, v2, v3}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$FrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v2

    .line 417
    sub-long v4, v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 422
    :cond_1
    const-wide/16 v6, -0x7530

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 424
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 425
    const/4 v2, 0x1

    goto :goto_0

    .line 428
    :cond_2
    iget-boolean v6, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    if-nez v6, :cond_3

    .line 429
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBufferImmediate(Landroid/media/MediaCodec;I)V

    .line 430
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    .line 431
    const/4 v2, 0x1

    goto :goto_0

    .line 434
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 435
    const/4 v2, 0x0

    goto :goto_0

    .line 438
    :cond_4
    sget v6, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_5

    .line 440
    const-wide/32 v6, 0xc350

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 441
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBufferTimedV21(Landroid/media/MediaCodec;IJ)V

    .line 442
    const/4 v2, 0x1

    goto :goto_0

    .line 446
    :cond_5
    const-wide/16 v2, 0x7530

    cmp-long v2, v4, v2

    if-gez v2, :cond_7

    .line 447
    const-wide/16 v2, 0x2af8

    cmp-long v2, v4, v2

    if-lez v2, :cond_6

    .line 452
    const-wide/16 v2, 0x2710

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    :try_start_0
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_6
    :goto_1
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBufferImmediate(Landroid/media/MediaCodec;I)V

    .line 458
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 453
    :catch_0
    move-exception v2

    .line 454
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 463
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->seekTo(J)V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderedFirstFrame:Z

    .line 277
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->joiningDeadlineUs:J

    .line 278
    return-void
.end method

.method protected shouldInitCodec()Z
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
