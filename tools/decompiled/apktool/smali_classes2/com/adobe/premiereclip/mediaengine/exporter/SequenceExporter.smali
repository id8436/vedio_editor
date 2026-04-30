.class public Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;
.super Ljava/lang/Object;
.source "SequenceExporter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_HANDLE_FRAME_AVAILABLE:I = 0x4

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_RELEASE:I = 0x6

.field private static final MSG_RENDER_FRAME:I = 0x3

.field private static final MSG_STOP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Export Task"


# instance fields
.field private allRendered:Z

.field private bumperAdded:Z

.field private bumperPath:Ljava/lang/String;

.field private canAddBumper:Z

.field private context:Landroid/content/Context;

.field private currentTimeStampUs:J

.field private ended:Z

.field private glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

.field private listenerWrapper:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

.field private mEglCore:Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;

.field private mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

.field private mExportFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field private mExportThread:Landroid/os/HandlerThread;

.field private mFrameNum:I

.field private mHandler:Landroid/os/Handler;

.field private mInputWindowSurface:Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;

.field private mVideoEncoder:Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;

.field private released:Z

.field private renderedTimeStampUs:J

.field private sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

.field private sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->context:Landroid/content/Context;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->released:Z

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->released:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->ended:Z

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->releaseInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mExportThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mExportFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addPromoRollClip()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->bumperPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Editor;->createBumperClip(Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setBumper()V

    .line 210
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 211
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->resetClips()V

    .line 213
    :cond_0
    return-void
.end method

.method private endExport(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 460
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->ended:Z

    if-eqz v0, :cond_1

    .line 493
    :cond_0
    return-void

    .line 463
    :cond_1
    const-string/jumbo v0, "Export Task"

    const-string/jumbo v1, "Ending export"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v4, v5}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->access$900(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;D)V

    .line 468
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->bumperAdded:Z

    if-eqz v0, :cond_2

    .line 469
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->removePromoClip()V

    .line 470
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->bumperAdded:Z

    .line 472
    :cond_2
    const/4 v0, 0x0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mVideoEncoder:Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;

    if-eqz v1, :cond_3

    .line 475
    if-nez p1, :cond_6

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->stopEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->ended:Z

    .line 481
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->resetOverlayTrack()V

    .line 482
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->resetClips()V

    .line 483
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->resetPosition()V

    .line 484
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->allRendered:Z

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->access$1000(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;Z)V

    .line 485
    iget-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->allRendered:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_5

    .line 486
    :cond_4
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mOutputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 487
    const-string/jumbo v2, "Export Task"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Incomplete file deleted - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_5
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->allRendered:Z

    .line 490
    if-eqz v0, :cond_0

    .line 491
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move v1, v3

    .line 475
    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleFrameAvailable()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 407
    const-string/jumbo v0, "Export Task"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handling frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mFrameNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->renderedTimeStampUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mVideoEncoder:Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->drainEncoder(Z)V

    .line 409
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->renderedTimeStampUs:J

    long-to-double v2, v2

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->access$900(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;D)V

    .line 410
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mExportFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 411
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mFrameNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mFrameNum:I

    .line 412
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mInputWindowSurface:Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->renderedTimeStampUs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->setPresentationTime(J)V

    .line 413
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mInputWindowSurface:Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->swapBuffers()Z

    .line 415
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 416
    return-void
.end method

.method private prepare(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 303
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->canAddBumper:Z

    if-eqz v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->addPromoRollClip()V

    .line 305
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->bumperAdded:Z

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSize()[I

    move-result-object v1

    .line 309
    aget v0, v1, v3

    .line 310
    const v4, 0xf4240

    .line 311
    const/16 v2, 0x168

    if-le v0, v2, :cond_3

    const/16 v2, 0x1e0

    if-gt v0, v2, :cond_3

    .line 312
    const v4, 0x2625a0

    .line 322
    :cond_2
    :goto_1
    const v5, 0xbb80

    .line 323
    const/4 v6, 0x2

    .line 324
    const/high16 v7, 0x20000

    .line 325
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    aget v2, v1, v9

    aget v3, v1, v3

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 332
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getEglContext()Landroid/opengl/EGLContext;

    move-result-object v8

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;-><init>(Ljava/io/File;IIIIIILandroid/opengl/EGLContext;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    .line 334
    iput-boolean v9, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->released:Z

    .line 335
    iput-boolean v9, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->ended:Z

    .line 336
    iput-boolean v9, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->allRendered:Z

    .line 337
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->prepareEncoder()V

    .line 339
    const-string/jumbo v0, "Export Task"

    const-string/jumbo v1, "Started encoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput v9, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mFrameNum:I

    .line 341
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->currentTimeStampUs:J

    .line 342
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->renderedTimeStampUs:J

    .line 344
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$1;-><init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDraw(Ljava/lang/Runnable;)V

    .line 356
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->requestRender()V

    .line 357
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->setClipRendering(I)V

    .line 359
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 360
    return-void

    .line 313
    :cond_3
    const/16 v2, 0x2d0

    if-gt v0, v2, :cond_4

    .line 314
    const v4, 0x4c4b40

    goto :goto_1

    .line 315
    :cond_4
    const/16 v2, 0x438

    if-gt v0, v2, :cond_5

    .line 316
    const v4, 0x7a1200

    goto :goto_1

    .line 317
    :cond_5
    const/16 v2, 0x5a0

    if-gt v0, v2, :cond_6

    .line 318
    const v4, 0xf42400

    goto :goto_1

    .line 319
    :cond_6
    const/16 v2, 0x870

    if-gt v0, v2, :cond_2

    .line 320
    const v4, 0x2625a00

    goto :goto_1
.end method

.method private prepareEncoder()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 275
    :try_start_0
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget v1, v1, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoWidth:I

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget v2, v2, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoHeight:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget v3, v3, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoBitRate:I

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget v4, v4, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioSampleRate:I

    iget-object v5, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget v5, v5, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioChannel:I

    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget v6, v6, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioBitrate:I

    iget-object v7, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    iget-object v9, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget v9, v9, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioSampleRate:I

    iget-object v10, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget v10, v10, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioChannel:I

    .line 281
    invoke-static {v7, v8, v9, v10}, Lcom/adobe/premiereclip/project/sequence/Sequence;->convertSequenceToAudioSequence(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/Sequence;II)Lcom/adobe/audiomixer/IAudioSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget-object v8, v8, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mOutputFile:Ljava/io/File;

    invoke-direct/range {v0 .. v8}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;-><init>(IIIIIILcom/adobe/audiomixer/IAudioSequence;Ljava/io/File;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mVideoEncoder:Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEncoderConfig:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    invoke-direct {v0, v1, v11}, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEglCore:Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;

    .line 290
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEglCore:Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mVideoEncoder:Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v0, v1, v2, v11}, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;-><init>(Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mInputWindowSurface:Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;

    .line 291
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mInputWindowSurface:Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->makeCurrent()V

    .line 292
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private prepareOverlayTrack()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    .line 224
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->canAddBumper:Z

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, v6}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 231
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v4

    sget-object v5, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v4, v5, :cond_0

    .line 234
    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/adobe/premiereclip/project/sequence/Clip;->setEndTimeUs(J)V

    .line 238
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 239
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->bumperPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Editor;->createBumperClip(Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v0

    .line 241
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-static {v2, v3, v0, v1, v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->createEmptyVideoClip(JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1, v0, v6}, Lcom/adobe/premiereclip/project/sequence/Sequence;->addClipToTrack(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 240
    goto :goto_1
.end method

.method private releaseEGL()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEglCore:Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEglCore:Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->release()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mEglCore:Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private releaseEncoder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mVideoEncoder:Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->release()V

    .line 449
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mInputWindowSurface:Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mInputWindowSurface:Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->release()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mInputWindowSurface:Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->releaseEGL()V

    .line 457
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private releaseInternal()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    return-void
.end method

.method private removePromoClip()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isBumper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->removeClip(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 221
    :cond_0
    return-void
.end method

.method private renderFrame()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 367
    const-string/jumbo v0, "Export Task"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Render Frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->currentTimeStampUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->allRendered:Z

    .line 370
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 402
    :goto_0
    return-void

    .line 373
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 374
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->currentTimeStampUs:J

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->getFrameAtTime(JJLjava/util/List;)V

    .line 375
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->currentTimeStampUs:J

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->renderedTimeStampUs:J

    .line 377
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->currentTimeStampUs:J

    const-wide/32 v2, 0x8235

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->currentTimeStampUs:J

    .line 378
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->currentTimeStampUs:J

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->currentTimeStampUs:J

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$2;

    invoke-direct {v1, p0, v6}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$2;-><init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDraw(Ljava/lang/Runnable;)V

    .line 393
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$3;-><init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDrawEnd(Ljava/lang/Runnable;)V

    .line 401
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method private resetOverlayTrack()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 250
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, v2, v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->removeClipFromTrack(II)Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 254
    :cond_0
    return-void
.end method

.method private stopEncoder(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 423
    if-eqz p1, :cond_0

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mVideoEncoder:Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->releaseEncoder()V

    .line 433
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    const/4 v1, 0x5

    const-string/jumbo v2, "Export Task"

    const-string/jumbo v3, "This will prevent release of resources - muxer, video encoder, audio encoder"

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public exportSequence(Ljava/io/File;ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 259
    const-string/jumbo v0, "Export Task"

    const-string/jumbo v1, "creating thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iput-boolean p2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->canAddBumper:Z

    .line 261
    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->bumperPath:Ljava/lang/String;

    .line 262
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->prepareOverlayTrack()V

    .line 263
    new-instance v0, Landroid/os/HandlerThread;

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

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mExportThread:Landroid/os/HandlerThread;

    .line 264
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mExportThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 265
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mExportThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mHandler:Landroid/os/Handler;

    .line 266
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 524
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 557
    :goto_0
    return v0

    .line 526
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->prepare(Ljava/io/File;)V

    move v0, v1

    .line 527
    goto :goto_0

    .line 530
    :pswitch_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->renderFrame()V

    move v0, v1

    .line 531
    goto :goto_0

    .line 534
    :pswitch_3
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->handleFrameAvailable()V

    move v0, v1

    .line 535
    goto :goto_0

    .line 538
    :pswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->endExport(Z)V

    move v0, v1

    .line 539
    goto :goto_0

    .line 542
    :pswitch_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->endExport(Z)V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 543
    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    :goto_1
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 551
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 552
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->released:Z

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    invoke-static {v0, v2}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;->access$1000(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;Z)V

    :cond_0
    move v0, v1

    .line 557
    goto :goto_0

    .line 549
    :catch_1
    move-exception v0

    goto :goto_1

    .line 524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public init(Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;)V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 188
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setModeToExport()V

    .line 189
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    .line 190
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->getGlView()Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 191
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mExportFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 192
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 505
    monitor-enter p0

    .line 506
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->released:Z

    if-eqz v0, :cond_1

    .line 507
    monitor-exit p0

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->released:Z

    .line 510
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->releaseInternal()V

    .line 513
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;)V
    .locals 1

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;-><init>(Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$ListenerWrapper;

    goto :goto_0
.end method
