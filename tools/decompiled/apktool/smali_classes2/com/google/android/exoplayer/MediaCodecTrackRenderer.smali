.class public abstract Lcom/google/android/exoplayer/MediaCodecTrackRenderer;
.super Lcom/google/android/exoplayer/TrackRenderer;
.source "MediaCodecTrackRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field protected static final SOURCE_STATE_NOT_READY:I = 0x0

.field protected static final SOURCE_STATE_READY:I = 0x1

.field protected static final SOURCE_STATE_READY_READ_MAY_FAIL:I = 0x2


# instance fields
.field private codec:Landroid/media/MediaCodec;

.field public final codecCounters:Lcom/google/android/exoplayer/CodecCounters;

.field private codecHotswapTimeMs:J

.field private codecIsAdaptive:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private currentPositionUs:J

.field private final decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private drmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private final drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

.field protected final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

.field private format:Lcom/google/android/exoplayer/MediaFormat;

.field private final formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private openedDrmSession:Z

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private final playClearSamplesWithoutKeys:Z

.field private final sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private final source:Lcom/google/android/exoplayer/SampleSource;

.field private sourceState:I

.field private trackIndex:I

.field private waitingForFirstSyncFrame:Z

.field private waitingForKeys:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Lcom/google/android/exoplayer/TrackRenderer;-><init>()V

    .line 203
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 204
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    .line 205
    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    .line 206
    iput-boolean p3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->playClearSamplesWithoutKeys:Z

    .line 207
    iput-object p4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    .line 208
    iput-object p5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    .line 209
    new-instance v0, Lcom/google/android/exoplayer/CodecCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer/CodecCounters;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    .line 210
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 211
    new-instance v0, Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    .line 213
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 214
    return-void

    :cond_0
    move v0, v1

    .line 203
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    return-object v0
.end method

.method private checkForDiscontinuity()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->currentPositionUs:J

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 472
    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->flushCodec()V

    goto :goto_0
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 765
    :goto_0
    return v0

    .line 732
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 736
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 737
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    .line 738
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->outputFormatChangedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->outputFormatChangedCount:I

    .line 739
    const/4 v0, 0x1

    goto :goto_0

    .line 740
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 741
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 742
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->outputBuffersChangedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->outputBuffersChangedCount:I

    .line 743
    const/4 v0, 0x1

    goto :goto_0

    .line 744
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v0, :cond_4

    .line 745
    const/4 v0, 0x0

    goto :goto_0

    .line 748
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    .line 750
    const/4 v0, 0x0

    goto :goto_0

    .line 753
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getDecodeOnlyIndex(J)I

    move-result v0

    .line 754
    iget-object v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    aget-object v7, v1, v2

    iget-object v8, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    const/4 v10, 0x1

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 756
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 757
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 761
    :goto_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 762
    const/4 v0, 0x1

    goto :goto_0

    .line 754
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 759
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->currentPositionUs:J

    goto :goto_2

    .line 765
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private feedInputBuffer(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0

    .line 509
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    if-gez v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 511
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    if-gez v0, :cond_1

    .line 512
    const/4 v0, 0x0

    goto :goto_0

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 519
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-eqz v0, :cond_4

    .line 521
    const/4 v0, -0x3

    .line 538
    :cond_3
    :goto_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 539
    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 526
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 528
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 526
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 530
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 532
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->currentPositionUs:J

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 533
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 534
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    goto :goto_1

    .line 541
    :cond_7
    const/4 v1, -0x5

    if-ne v0, v1, :cond_8

    .line 542
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->flushCodec()V

    .line 543
    const/4 v0, 0x1

    goto :goto_0

    .line 545
    :cond_8
    const/4 v1, -0x4

    if-ne v0, v1, :cond_a

    .line 546
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 550
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 552
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 553
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 555
    :cond_a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 556
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 561
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 563
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 566
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    .line 569
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 573
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    if-eqz v0, :cond_f

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v0, v0, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 578
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 581
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 583
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 585
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    .line 587
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v0, v0, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 588
    :goto_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldWaitForKeys(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    .line 589
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-eqz v1, :cond_11

    .line 590
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 587
    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 593
    :cond_11
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 594
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v1, v1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    sub-int v1, v3, v1

    .line 595
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v4, v2, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 596
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-boolean v2, v2, Lcom/google/android/exoplayer/SampleHolder;->decodeOnly:Z

    if-eqz v2, :cond_12

    .line 597
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_12
    if-eqz v0, :cond_13

    .line 600
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getFrameworkCryptoInfo(Lcom/google/android/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 606
    :goto_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 607
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 612
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 604
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 608
    :catch_1
    move-exception v0

    .line 609
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    .line 610
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private flushCodec()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 478
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    .line 479
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 480
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 481
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 485
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 491
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    .line 494
    iput v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 496
    :cond_0
    return-void

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    goto :goto_0
.end method

.method private getDecodeOnlyIndex(J)I
    .locals 7

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 803
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 804
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    move v0, v1

    .line 808
    :goto_1
    return v0

    .line 803
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getFrameworkCryptoInfo(Lcom/google/android/exoplayer/SampleHolder;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/CryptoInfo;->getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    .line 618
    if-nez p1, :cond_0

    .line 628
    :goto_0
    return-object v0

    .line 624
    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_1

    .line 625
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 627
    :cond_1
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_0
.end method

.method private isWithinHotswapPeriod()Z
    .locals 6

    .prologue
    .line 718
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 336
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private notifyCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Landroid/media/MediaCodec$CryptoException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    :cond_0
    return-void
.end method

.method private notifyDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$1;-><init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 788
    :cond_0
    return-void
.end method

.method private readFormat()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->currentPositionUs:J

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 462
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V

    .line 465
    :cond_0
    return-void
.end method

.method private shouldWaitForKeys(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 632
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-nez v1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v0

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getState()I

    move-result v1

    .line 636
    if-nez v1, :cond_2

    .line 637
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 639
    :cond_2
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->playClearSamplesWithoutKeys:Z

    if-nez v1, :cond_0

    .line 641
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method protected final codecInitialized()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 269
    return-void
.end method

.method protected doPrepare()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/SampleSource;->prepare()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    if-nez v1, :cond_1

    .line 237
    :goto_0
    return v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 227
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/SampleSource;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/SampleSource;->getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer/TrackInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->handlesMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    .line 233
    const/4 v0, 0x1

    goto :goto_0

    .line 237
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected doSomeWork(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 438
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer/SampleSource;->continueBuffering(J)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    if-nez v1, :cond_5

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    .line 441
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->checkForDiscontinuity()V

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v0, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->readFormat()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 449
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drainOutputBuffer(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->feedInputBuffer(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->feedInputBuffer(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 454
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/CodecCounters;->ensureUpdated()V

    .line 458
    return-void

    .line 438
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getBufferedPositionUs()J
    .locals 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource;->getBufferedPositionUs()J

    move-result-wide v0

    .line 411
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getCurrentPositionUs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected getCurrentPositionUs()J
    .locals 2

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method protected getDurationUs()J
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource;->getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer/TrackInfo;->durationUs:J

    return-wide v0
.end method

.method protected final getSourceState()I
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    return v0
.end method

.method protected handlesMimeType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method protected final haveFormat()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEnded()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    if-gez v0, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->isWithinHotswapPeriod()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 703
    :goto_0
    return v0

    .line 704
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final maybeInitCodec()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->shouldInitCodec()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const-string/jumbo v0, "Codec"

    const-string/jumbo v1, "Init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v3, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    .line 280
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    if-nez v0, :cond_2

    .line 282
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    const-string/jumbo v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-nez v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->open(Ljava/util/Map;Ljava/lang/String;)V

    .line 286
    iput-boolean v7, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getState()I

    move-result v0

    .line 289
    if-nez v0, :cond_4

    .line 290
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 291
    :cond_4
    if-eq v0, v8, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->getMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v1

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    .line 303
    :goto_1
    :try_start_0
    invoke-static {v3, v0}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 309
    :goto_2
    if-nez v0, :cond_6

    .line 310
    new-instance v3, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    const v5, -0xc34f

    invoke-direct {v3, v4, v2, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 314
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    .line 315
    iget-boolean v0, v0, Lcom/google/android/exoplayer/DecoderInfo;->adaptive:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    .line 317
    :try_start_1
    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/MediaFormat;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->getState()I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_4
    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    .line 327
    iput v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 328
    iput v6, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 329
    iput-boolean v7, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForFirstSyncFrame:Z

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->codecInitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->codecInitCount:I

    goto/16 :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    new-instance v3, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    const v5, -0xc34e

    invoke-direct {v3, v4, v0, v5}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    move-object v0, v2

    goto :goto_2

    .line 322
    :catch_1
    move-exception v0

    .line 323
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer/MediaFormat;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->notifyAndThrowDecoderInitError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    goto :goto_3

    .line 326
    :cond_7
    const-wide/16 v0, -0x1

    goto :goto_4

    :cond_8
    move-object v1, v2

    goto :goto_1
.end method

.method protected onDisabled()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 354
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Ljava/util/Map;

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->close()V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource;->disable(I)V

    .line 367
    return-void

    .line 364
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource;->disable(I)V

    .line 365
    throw v0

    .line 358
    :catchall_1
    move-exception v0

    .line 359
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmSessionManager:Lcom/google/android/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/DrmSessionManager;->close()V

    .line 361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->openedDrmSession:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource;->disable(I)V

    .line 366
    throw v0

    .line 364
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    iget v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/SampleSource;->disable(I)V

    .line 365
    throw v0
.end method

.method protected onEnabled(JZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    iget v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource;->enable(IJ)V

    .line 255
    iput v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    .line 256
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    .line 257
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    .line 258
    iput-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    .line 259
    iput-wide p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->currentPositionUs:J

    .line 260
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 653
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 654
    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 655
    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormatHolder;->drmInitData:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->drmInitData:Ljava/util/Map;

    .line 656
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iput-boolean v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    .line 658
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 663
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->releaseCodec()V

    .line 661
    invoke-virtual {p0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->maybeInitCodec()V

    goto :goto_0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    .prologue
    .line 674
    return-void
.end method

.method protected onReleased()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource;->release()V

    .line 396
    return-void
.end method

.method protected onStarted()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 371
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecHotswapTimeMs:J

    .line 372
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputIndex:I

    .line 373
    iput v4, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputIndex:I

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    iput-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 376
    iput-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 377
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigured:Z

    .line 378
    iput-boolean v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecIsAdaptive:Z

    .line 379
    iput v3, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecReconfigurationState:I

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    iget v1, v0, Lcom/google/android/exoplayer/CodecCounters;->codecReleaseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/CodecCounters;->codecReleaseCount:I

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    iput-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    .line 391
    :cond_0
    return-void

    .line 387
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    .line 388
    throw v0

    .line 384
    :catchall_1
    move-exception v0

    .line 385
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 387
    iput-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    .line 389
    throw v0

    .line 387
    :catchall_2
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    .line 388
    throw v0
.end method

.method protected seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 417
    iput-wide p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->currentPositionUs:J

    .line 418
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/SampleSource;->seekToUs(J)V

    .line 419
    iput v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->sourceState:I

    .line 420
    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->inputStreamEnded:Z

    .line 421
    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->outputStreamEnded:Z

    .line 422
    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->waitingForKeys:Z

    .line 423
    return-void
.end method

.method protected shouldInitCodec()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
