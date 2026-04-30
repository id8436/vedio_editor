.class public Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;
.super Ljava/lang/Object;
.source "VideoEncoderCore.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final FRAME_RATE:I = 0x1e

.field private static final IFRAME_INTERVAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Encoder"

.field private static final TIMEOUT_USEC:I = 0x2710

.field private static final VERBOSE:Z = true

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mAudioChannel:I

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private mAudioInputBuffers:[Ljava/nio/ByteBuffer;

.field private mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mAudioSampleRate:I

.field private mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

.field private mAudioTrackIndex:I

.field private mEndOfInputAudioStream:Z

.field private mEndOfOutputAudioStream:Z

.field private mInputSurface:Landroid/view/Surface;

.field private mLastProcessedAudioSample:I

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mVideoEncoder:Landroid/media/MediaCodec;

.field private mVideoTrackIndex:I


# direct methods
.method public constructor <init>(IIIIIILcom/adobe/audiomixer/IAudioSequence;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p7, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->InitializeVideo(III)V

    .line 92
    invoke-direct {p0, p4, p5, p6}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->InitializeAudio(III)V

    .line 101
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-virtual {p8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    .line 104
    iput v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoTrackIndex:I

    .line 105
    iput v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioTrackIndex:I

    .line 106
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxerStarted:Z

    .line 107
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mEndOfInputAudioStream:Z

    .line 108
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mEndOfOutputAudioStream:Z

    .line 109
    return-void
.end method

.method private InitializeAudio(III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 147
    const-string/jumbo v0, "audio/mp4a-latm"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "bitrate"

    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 151
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSampleRate:I

    .line 152
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioChannel:I

    .line 156
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSampleRate:I

    invoke-interface {v1, v2}, Lcom/adobe/audiomixer/IAudioSequence;->setSampleRate(I)V

    .line 157
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioChannel:I

    invoke-interface {v1, v2}, Lcom/adobe/audiomixer/IAudioSequence;->setChannels(I)V

    .line 161
    const-string/jumbo v1, "audio/mp4a-latm"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 162
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 163
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mLastProcessedAudioSample:I

    .line 166
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioInputBuffers:[Ljava/nio/ByteBuffer;

    .line 167
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private InitializeVideo(III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 112
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 113
    const-string/jumbo v0, "video/avc"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 119
    const-string/jumbo v1, "bitrate"

    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 120
    const-string/jumbo v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 121
    const-string/jumbo v1, "i-frame-interval"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 123
    const-string/jumbo v1, "Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 132
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OMX.MTK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x438

    if-ne p2, v1, :cond_0

    .line 133
    const-string/jumbo v1, "height"

    const/16 v2, 0x430

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 137
    const-string/jumbo v1, "Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encoder debug video format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mInputSurface:Landroid/view/Surface;

    .line 139
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 140
    return-void
.end method

.method private WriteAudioSamples(J)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const-wide/16 v2, -0x1

    .line 328
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    if-nez v0, :cond_1

    .line 358
    :cond_0
    return-void

    .line 333
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mEndOfOutputAudioStream:Z

    if-nez v0, :cond_0

    .line 338
    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    .line 339
    long-to-double v0, p1

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v6

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSampleRate:I

    int-to-double v6, v4

    mul-double/2addr v0, v6

    double-to-long v0, v0

    .line 341
    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mLastProcessedAudioSample:I

    int-to-long v6, v4

    cmp-long v4, v0, v6

    if-ltz v4, :cond_0

    .line 347
    :goto_0
    const/4 v4, 0x0

    .line 348
    :cond_2
    :goto_1
    if-nez v4, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->feedAudioInputToDecoder()V

    .line 350
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->feedAudioDecoderOutputToMuxer()V

    .line 352
    iget-boolean v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mEndOfOutputAudioStream:Z

    if-eqz v6, :cond_3

    move v4, v5

    .line 353
    goto :goto_1

    .line 354
    :cond_3
    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mLastProcessedAudioSample:I

    int-to-long v6, v6

    cmp-long v6, v6, v0

    if-ltz v6, :cond_2

    iget-boolean v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxerStarted:Z

    if-eqz v6, :cond_2

    move v4, v5

    .line 356
    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method private feedAudioDecoderOutputToMuxer()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 403
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mEndOfOutputAudioStream:Z

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 407
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 409
    const/4 v0, -0x3

    if-ne v1, v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 412
    :cond_2
    const/4 v0, -0x2

    if-ne v1, v0, :cond_4

    .line 413
    const-string/jumbo v0, "Encoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audio format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioTrackIndex:I

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 419
    iput-boolean v7, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxerStarted:Z

    goto :goto_0

    .line 420
    :cond_4
    if-gez v1, :cond_5

    .line 421
    const-string/jumbo v0, "Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected result from audio encoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 426
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 429
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxerStarted:Z

    if-eqz v0, :cond_8

    .line 430
    const/4 v0, 0x0

    .line 431
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_9

    .line 432
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->getOutputBufferAPI21(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 437
    :cond_7
    :goto_1
    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioTrackIndex:I

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_8

    .line 438
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 439
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 441
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioTrackIndex:I

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v0, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 443
    const-string/jumbo v0, "Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " audio bytes to muxer, ts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_8
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 451
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 452
    iput-boolean v7, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mEndOfOutputAudioStream:Z

    goto/16 :goto_0

    .line 433
    :cond_9
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioInputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_7

    .line 434
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    goto :goto_1
.end method

.method private feedAudioInputToDecoder()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 366
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mEndOfInputAudioStream:Z

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 370
    if-ltz v1, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 372
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    .line 373
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->getInputBufferAPI21(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 378
    :cond_2
    :goto_1
    new-instance v3, Lcom/adobe/audiomixer/VideoTime;

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mLastProcessedAudioSample:I

    int-to-long v4, v4

    iget v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSampleRate:I

    int-to-long v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    .line 380
    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v4, v3, v0}, Lcom/adobe/audiomixer/IAudioSequence;->readSamples(Lcom/adobe/audiomixer/VideoTime;Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 381
    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioChannel:I

    mul-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 383
    invoke-virtual {v3}, Lcom/adobe/audiomixer/VideoTime;->getTimeInMS()J

    move-result-wide v4

    .line 384
    if-gtz v6, :cond_3

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mEndOfInputAudioStream:Z

    .line 387
    :cond_3
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mLastProcessedAudioSample:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mLastProcessedAudioSample:I

    .line 389
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioChannel:I

    mul-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x2

    iget-boolean v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mEndOfInputAudioStream:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    :goto_2
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 374
    :cond_4
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioInputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_2

    .line 375
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    goto :goto_1

    :cond_5
    move v6, v2

    .line 389
    goto :goto_2
.end method

.method private getInputBufferAPI21(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getOutputBufferAPI21(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public drainEncoder(Z)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 222
    const-string/jumbo v0, "Encoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drainEncoder("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz p1, :cond_0

    .line 227
    const-string/jumbo v0, "Encoder"

    const-string/jumbo v2, "sending EOS to encoder"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move v0, v5

    .line 234
    :goto_0
    if-nez v0, :cond_10

    .line 235
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v3, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 236
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 238
    if-nez p1, :cond_1

    move v0, v1

    move-object v2, v4

    :goto_1
    move-object v4, v2

    .line 324
    goto :goto_0

    .line 242
    :cond_1
    const-string/jumbo v2, "Encoder"

    const-string/jumbo v3, "no output available, spinning to await EOS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto :goto_1

    .line 245
    :cond_2
    const/4 v3, -0x3

    if-ne v2, v3, :cond_3

    .line 247
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_1

    .line 248
    :cond_3
    const/4 v3, -0x2

    if-ne v2, v3, :cond_6

    .line 250
    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxerStarted:Z

    if-eqz v2, :cond_4

    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "format changed twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_4
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 254
    const-string/jumbo v3, "Encoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "encoder output format changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoTrackIndex:I

    .line 258
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_5

    .line 259
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->WriteAudioSamples(J)V

    :goto_2
    move-object v2, v4

    .line 264
    goto :goto_1

    .line 261
    :cond_5
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    .line 262
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxerStarted:Z

    goto :goto_2

    .line 264
    :cond_6
    if-gez v2, :cond_7

    .line 265
    const-string/jumbo v3, "Encoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto/16 :goto_1

    .line 269
    :cond_7
    aget-object v3, v4, v2

    .line 270
    if-nez v3, :cond_8

    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encoderOutputBuffer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_8
    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_9

    .line 279
    const-string/jumbo v6, "Encoder"

    const-string/jumbo v7, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v5, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 284
    :cond_9
    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_b

    .line 285
    iget-boolean v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxerStarted:Z

    if-nez v6, :cond_a

    .line 286
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_a
    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 291
    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v7, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    iget v7, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoTrackIndex:I

    iget-object v8, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v6, v7, v3, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 295
    const-string/jumbo v3, "Encoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bytes to muxer, ts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_b
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 304
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_c

    .line 305
    if-nez p1, :cond_f

    .line 306
    const-string/jumbo v0, "Encoder"

    const-string/jumbo v2, "reached end of stream unexpectedly"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v0, v1

    .line 316
    :cond_c
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 317
    if-nez p1, :cond_d

    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_e

    .line 320
    :cond_d
    const-wide/16 v2, -0x1

    .line 322
    :cond_e
    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->WriteAudioSamples(J)V

    move-object v2, v4

    goto/16 :goto_1

    .line 309
    :cond_f
    const-string/jumbo v0, "Encoder"

    const-string/jumbo v2, "end of stream reached"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 325
    :cond_10
    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    const-string/jumbo v0, "Encoder"

    const-string/jumbo v1, "releasing encoder objects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 186
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 187
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 191
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 192
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_3

    .line 197
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxerStarted:Z

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 201
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v0}, Lcom/adobe/audiomixer/IAudioSequence;->release()V

    .line 205
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/VideoEncoderCore;->mAudioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    .line 207
    :cond_4
    return-void
.end method
