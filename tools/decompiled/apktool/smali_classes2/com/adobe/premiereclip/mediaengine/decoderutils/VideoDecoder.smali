.class public Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;
.super Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;
.source "VideoDecoder.java"


# static fields
.field protected static FULL_CAPABILITY:Z = false

.field private static final MAX_HEIGHT:I = 0x2d0

.field private static final MIN_HEIGHT:I = 0x168

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field protected static final SOURCE_STATE_NOT_READY:I = 0x0

.field protected static final SOURCE_STATE_READY:I = 0x1

.field protected static final SOURCE_STATE_READY_READ_MAY_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CustomVideoDecoder"


# instance fields
.field protected codec:Landroid/media/MediaCodec;

.field private codecIsAdaptive:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private context:Landroid/content/Context;

.field private decodeOnlyPresentationTimestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

.field private formatHolder:Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;

.field protected inputBuffers:[Ljava/nio/ByteBuffer;

.field protected inputIndex:I

.field private inputStreamEnded:Z

.field private outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected outputBuffers:[Ljava/nio/ByteBuffer;

.field protected outputIndex:I

.field private outputStreamEnded:Z

.field private sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

.field private sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

.field private sourceState:I

.field private trackIndex:I

.field private waitingForFirstSyncFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->FULL_CAPABILITY:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p2, p3, p4}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;-><init>(Ljava/lang/String;II)V

    .line 130
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->context:Landroid/content/Context;

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceUri:Landroid/net/Uri;

    .line 133
    return-void
.end method

.method private canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/adobe/customextractor/Util/Media/MediaFormat;Lcom/adobe/customextractor/Util/Media/MediaFormat;)Z
    .locals 2

    .prologue
    .line 597
    iget-object v0, p4, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    iget-object v1, p3, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    iget v1, p4, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    iget v1, p4, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 347
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->trackIndex:I

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->formatHolder:Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;

    iget-object v5, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/customextractor/ClipSampleSource;->readData(IJLcom/adobe/customextractor/Util/Media/MediaFormatHolder;Lcom/adobe/customextractor/Util/SampleHolder;Z)I

    move-result v0

    .line 351
    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->flushCodec()V

    goto :goto_0
.end method

.method private configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2d0

    const/4 v3, 0x0

    .line 163
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 164
    const-string/jumbo v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 165
    const-string/jumbo v2, "video/avc"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    sget-boolean v2, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->FULL_CAPABILITY:Z

    if-nez v2, :cond_2

    .line 167
    if-le v0, v1, :cond_0

    .line 168
    :goto_0
    if-lt v1, v4, :cond_1

    .line 169
    shr-int/lit8 v0, v0, 0x1

    .line 170
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_0
    :goto_1
    if-lt v0, v4, :cond_1

    .line 174
    shr-int/lit8 v0, v0, 0x1

    .line 175
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    :cond_1
    const-string/jumbo v2, "width"

    invoke-virtual {p2, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 179
    const-string/jumbo v2, "height"

    invoke-virtual {p2, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 180
    const-string/jumbo v2, "max-input-size"

    invoke-virtual {p2, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 184
    :cond_2
    :try_start_0
    const-string/jumbo v2, "CustomVideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Configure codec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_2
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    const-string/jumbo v1, "width"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 188
    const-string/jumbo v1, "height"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 189
    if-le v3, v2, :cond_3

    move v1, v2

    :goto_3
    const/16 v4, 0x168

    if-le v1, v4, :cond_4

    .line 190
    const-string/jumbo v0, "width"

    div-int/lit8 v1, v3, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 191
    const-string/jumbo v0, "height"

    div-int/lit8 v1, v2, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 192
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v1, v3

    .line 189
    goto :goto_3

    .line 194
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private feedInputBuffer(ZJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 357
    const-string/jumbo v0, "CustomVideoDecoder"

    const-string/jumbo v1, "FeedData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 454
    :goto_0
    return v0

    .line 361
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I

    if-gez v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, p2, p3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I

    .line 363
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I

    if-gez v0, :cond_2

    .line 364
    const/4 v0, 0x0

    goto :goto_0

    .line 362
    :cond_1
    const-wide/16 p2, 0x0

    goto :goto_1

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    .line 367
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 372
    :cond_3
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 373
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 374
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 375
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-object v2, v2, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 373
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 377
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    .line 379
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->trackIndex:I

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->formatHolder:Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;

    iget-object v5, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/customextractor/ClipSampleSource;->readData(IJLcom/adobe/customextractor/Util/Media/MediaFormatHolder;Lcom/adobe/customextractor/Util/SampleHolder;Z)I

    move-result v0

    .line 380
    if-eqz p1, :cond_6

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 381
    const/4 v1, 0x2

    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceState:I

    .line 384
    :cond_6
    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 385
    const-string/jumbo v0, "CustomVideoDecoder"

    const-string/jumbo v1, "Nothing read"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    goto :goto_0

    .line 388
    :cond_7
    const/4 v1, -0x5

    if-ne v0, v1, :cond_8

    .line 389
    const-string/jumbo v0, "CustomVideoDecoder"

    const-string/jumbo v1, "Discont read"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->flushCodec()V

    .line 391
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 393
    :cond_8
    const/4 v1, -0x4

    if-ne v0, v1, :cond_a

    .line 394
    const-string/jumbo v0, "CustomVideoDecoder"

    const-string/jumbo v1, "Format read"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 398
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 399
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    .line 402
    :cond_9
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->formatHolder:Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->onInputFormatChanged(Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;)V

    .line 403
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 405
    :cond_a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 406
    const-string/jumbo v0, "CustomVideoDecoder"

    const-string/jumbo v1, "end of stream"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 411
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 412
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    .line 414
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputStreamEnded:Z

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 417
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 423
    :cond_c
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->waitingForFirstSyncFrame:Z

    if-eqz v0, :cond_f

    .line 424
    const-string/jumbo v0, "CustomVideoDecoder"

    const-string/jumbo v1, "WaitingForSyncFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_e

    .line 428
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 429
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 432
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    .line 434
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 436
    :cond_e
    const-string/jumbo v0, "CustomVideoDecoder"

    const-string/jumbo v1, "Sync frame found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->waitingForFirstSyncFrame:Z

    .line 441
    :cond_f
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 442
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-wide v4, v0, Lcom/adobe/customextractor/Util/SampleHolder;->timeUs:J

    .line 443
    const-string/jumbo v0, "CustomVideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FeedData:sampleRead "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-boolean v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->decodeOnly:Z

    if-eqz v0, :cond_10

    .line 445
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_10
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 454
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 451
    :catch_1
    move-exception v0

    .line 452
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private feedMultipleInputBuffer(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 459
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2, p1, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->feedInputBuffer(ZJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->feedInputBuffer(ZJ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->newFrameRequest:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v1

    .line 469
    :cond_2
    return v0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private flushCodec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 713
    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I

    .line 714
    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    .line 715
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->waitingForFirstSyncFrame:Z

    .line 716
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 719
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 720
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    if-eqz v0, :cond_0

    .line 723
    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    .line 725
    :cond_0
    return-void
.end method

.method private getDecodeOnlyIndex(J)I
    .locals 7

    .prologue
    .line 477
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 478
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 479
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    move v0, v1

    .line 483
    :goto_1
    return v0

    .line 478
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 483
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getNextOutputBuffer(J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 488
    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputStreamEnded:Z

    if-eqz v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v1

    .line 492
    :cond_1
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 493
    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    if-ne v3, v2, :cond_3

    .line 494
    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    if-ltz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 497
    :cond_3
    iput v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    .line 499
    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_4

    .line 500
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    .line 501
    iput v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    .line 502
    invoke-direct {p0, v6, v7}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->getNextOutputBuffer(J)Z

    move-result v1

    goto :goto_0

    .line 503
    :cond_4
    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_5

    .line 504
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 505
    iput v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    .line 506
    invoke-direct {p0, v6, v7}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->getNextOutputBuffer(J)Z

    move-result v1

    goto :goto_0

    .line 507
    :cond_5
    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    if-ltz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    .line 512
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputStreamEnded:Z

    .line 513
    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceDuration:J

    iput-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    goto :goto_0

    .line 517
    :cond_6
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->getDecodeOnlyIndex(J)I

    move-result v2

    .line 518
    if-eq v2, v4, :cond_7

    .line 519
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 520
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 521
    iput v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    .line 522
    invoke-direct {p0, v6, v7}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->getNextOutputBuffer(J)Z

    move-result v1

    goto :goto_0

    .line 524
    :cond_7
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_8

    .line 526
    :cond_8
    const-string/jumbo v1, "CustomVideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decoded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    move v1, v0

    .line 528
    goto/16 :goto_0
.end method

.method private getSourceState()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceState:I

    return v0
.end method

.method private handlesMimeType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 270
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initCodec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->checkForDiscontinuity()V

    .line 147
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->readFormat()V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->maybeInitCodec()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isEnded()Z
    .locals 2

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    .line 616
    const-string/jumbo v0, "VideoDecoder"

    const-string/jumbo v1, "stream ended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputStreamEnded:Z

    return v0
.end method

.method private isReady()Z
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeInitCodec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->maybeInitCodec(Z)V

    .line 201
    return-void
.end method

.method private maybeInitCodec(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 205
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->shouldInitCodec()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string/jumbo v0, "VideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maybeinit "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->clipIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iget-object v3, v0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, ""

    .line 211
    if-eqz p1, :cond_2

    .line 215
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v3, v0, p1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderInfo;
    :try_end_0
    .catch Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 222
    :goto_1
    if-nez v1, :cond_1

    .line 223
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    const v5, -0xc34f

    invoke-direct {v0, v4, v2, v5}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;-><init>(Lcom/adobe/customextractor/Util/Media/MediaFormat;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->notifyAndThrowDecoderInitError(Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;)V

    .line 227
    :cond_1
    iget-object v0, v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderInfo;->name:Ljava/lang/String;

    .line 228
    const-string/jumbo v2, "Decoder Init"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v1, v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaCodecUtil$DecoderInfo;->adaptive:Z

    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecIsAdaptive:Z

    move-object v1, v0

    .line 234
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    .line 235
    if-eqz p1, :cond_3

    .line 236
    const-string/jumbo v2, "width"

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iget v4, v4, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 237
    const-string/jumbo v2, "height"

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iget v4, v4, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 238
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 242
    :goto_3
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-direct {p0, v2, v0, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->configureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 244
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 245
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    :goto_4
    iput v7, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I

    .line 258
    iput v7, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    .line 259
    iput-boolean v6, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->waitingForFirstSyncFrame:Z

    .line 260
    const-string/jumbo v0, "Decoder Init"

    const-string/jumbo v1, "Init success "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string/jumbo v1, "CustomVideoDecoder"

    const-string/jumbo v4, "Decoder query exc"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    const v5, -0xc34e

    invoke-direct {v1, v4, v0, v5}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;-><init>(Lcom/adobe/customextractor/Util/Media/MediaFormat;Ljava/lang/Throwable;I)V

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->notifyAndThrowDecoderInitError(Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;)V

    move-object v1, v2

    goto/16 :goto_1

    .line 231
    :cond_2
    iput-boolean v6, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecIsAdaptive:Z

    move-object v1, v0

    goto :goto_2

    .line 240
    :cond_3
    :try_start_2
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 246
    :catch_1
    move-exception v0

    .line 247
    if-nez p1, :cond_4

    sget-boolean v2, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->FULL_CAPABILITY:Z

    if-nez v2, :cond_5

    .line 248
    :cond_4
    new-instance v2, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    invoke-direct {v2, v3, v0, v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;-><init>(Lcom/adobe/customextractor/Util/Media/MediaFormat;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->notifyAndThrowDecoderInitError(Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;)V

    goto :goto_4

    .line 250
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string/jumbo v0, "CustomVideoDecoder"

    const-string/jumbo v1, "Fallback to software video decoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->releaseCodec()V

    .line 253
    invoke-direct {p0, v6}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->maybeInitCodec(Z)V

    goto/16 :goto_0
.end method

.method private notifyAndThrowDecoderInitError(Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder$DecoderInitializationException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private onInputFormatChanged(Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 535
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    .line 536
    iget-object v1, p1, Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    .line 537
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecIsAdaptive:Z

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/adobe/customextractor/Util/Media/MediaFormat;Lcom/adobe/customextractor/Util/Media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigured:Z

    .line 539
    iput v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->releaseCodec()V

    .line 542
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->maybeInitCodec()V

    goto :goto_0
.end method

.method private onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 547
    .line 548
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 549
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 551
    :goto_0
    const-string/jumbo v2, "height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 552
    const-string/jumbo v2, "height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 555
    :goto_1
    const-string/jumbo v3, "stride"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 556
    const-string/jumbo v3, "stride"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 559
    :goto_2
    if-eqz v3, :cond_0

    if-ge v3, v0, :cond_6

    .line 563
    :cond_0
    :goto_3
    const-string/jumbo v3, "slice-height"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 564
    const-string/jumbo v3, "slice-height"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 567
    :goto_4
    if-eqz v3, :cond_1

    if-ge v3, v2, :cond_4

    .line 572
    :cond_1
    :goto_5
    const-string/jumbo v3, "crop-bottom"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "crop-top"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 573
    const-string/jumbo v3, "crop-bottom"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 574
    const-string/jumbo v3, "crop-top"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 582
    :goto_6
    const-string/jumbo v5, "crop-right"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "crop-left"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 583
    const-string/jumbo v1, "crop-right"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 584
    const-string/jumbo v1, "crop-left"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 592
    :goto_7
    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    sub-int v1, v5, v1

    add-int/lit8 v1, v1, 0x1

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v0, v2, v1, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->setCrop(IIII)V

    .line 593
    return-void

    .line 577
    :cond_2
    const-string/jumbo v3, "VideoDecoder"

    const-string/jumbo v4, "Could not find crop param top and bottom"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    add-int/lit8 v3, v2, -0x1

    move v4, v3

    move v3, v1

    goto :goto_6

    .line 587
    :cond_3
    const-string/jumbo v5, "VideoDecoder"

    const-string/jumbo v6, "Could not find crop param right or left"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    add-int/lit8 v5, v0, -0x1

    .line 589
    goto :goto_7

    :cond_4
    move v2, v3

    goto :goto_5

    :cond_5
    move v3, v1

    goto :goto_4

    :cond_6
    move v0, v3

    goto/16 :goto_3

    :cond_7
    move v3, v1

    goto/16 :goto_2

    :cond_8
    move v2, v1

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method private processNextFrame(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 655
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->isEnded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    .line 686
    :goto_0
    return-wide v0

    .line 659
    :cond_0
    :try_start_0
    const-string/jumbo v1, "CustomVideoDecoder"

    const-string/jumbo v2, "ProcessNextFrame"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 661
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->initCodec()V

    .line 662
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    iget-wide v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    invoke-virtual {v1, v4, v5}, Lcom/adobe/customextractor/ClipSampleSource;->continueBuffering(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceState:I

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceState:I

    .line 665
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->getNextOutputBuffer(J)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->isEnded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 667
    :cond_1
    if-nez v0, :cond_2

    .line 668
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->isReleased()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->newFrameRequest:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    .line 686
    :cond_2
    :goto_2
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    goto :goto_0

    .line 662
    :cond_3
    :try_start_1
    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceState:I

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_1

    .line 671
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 672
    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-direct {p0, v4, v5}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->feedMultipleInputBuffer(J)Z

    .line 673
    cmp-long v0, v0, p1

    if-ltz v0, :cond_6

    .line 674
    const-string/jumbo v0, "Frame Drop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout during processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->clipIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 683
    :catch_0
    move-exception v0

    .line 684
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 677
    :cond_6
    const-wide/16 v0, 0x64

    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->getNextOutputBuffer(J)Z

    move-result v0

    .line 679
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->isEnded()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2
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
    .line 340
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->trackIndex:I

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->formatHolder:Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;

    iget-object v5, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/customextractor/ClipSampleSource;->readData(IJLcom/adobe/customextractor/Util/Media/MediaFormatHolder;Lcom/adobe/customextractor/Util/SampleHolder;Z)I

    move-result v0

    .line 341
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->formatHolder:Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->onInputFormatChanged(Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;)V

    .line 344
    :cond_0
    return-void
.end method

.method private releaseCodec()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 728
    const-string/jumbo v0, "CustomVideoDecoder"

    const-string/jumbo v1, "Release Codec"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 730
    iput v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputIndex:I

    .line 731
    iput v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    .line 732
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 733
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 734
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 735
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigured:Z

    .line 736
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecIsAdaptive:Z

    .line 737
    iput v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codecReconfigurationState:I

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 744
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 746
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 747
    throw v0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 744
    :try_start_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 746
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    goto :goto_0

    :catchall_1
    move-exception v0

    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 747
    throw v0

    .line 743
    :catchall_2
    move-exception v0

    .line 744
    :try_start_4
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 746
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 748
    throw v0

    .line 746
    :catchall_3
    move-exception v0

    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    .line 747
    throw v0
.end method

.method private releaseFrame(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 699
    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    if-gez v1, :cond_0

    .line 706
    :goto_0
    return v0

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 705
    const/4 v1, -0x1

    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    goto :goto_0
.end method

.method private renderFrame()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 690
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->releaseFrame(Z)Z

    move-result v0

    .line 691
    if-eqz v0, :cond_0

    .line 692
    const-string/jumbo v1, "CustomVideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RenderFrame done at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    iput-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->renderedTimeStampUs:J

    .line 695
    :cond_0
    return v0
.end method

.method private shouldInitCodec()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->codec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFrameAtTimeInternal(JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 627
    const-string/jumbo v0, "CustomVideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetFrameAtTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 629
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->renderedTimeStampUs:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    .line 631
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->currentTimeStampUs:J

    cmp-long v1, v2, p1

    if-lez v1, :cond_1

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->renderedTimeStampUs:J

    cmp-long v1, v2, p1

    if-gez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->isEnded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 632
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->isReleased()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->newFrameRequest:Z

    if-eqz v1, :cond_4

    .line 651
    :cond_2
    :goto_1
    return v0

    .line 629
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 635
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v6, v2, v4

    .line 636
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-ltz v1, :cond_5

    cmp-long v1, v6, p3

    if-ltz v1, :cond_5

    .line 637
    const-string/jumbo v1, "Frame Drop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "go back from here too "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 641
    :cond_5
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->renderFrame()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    .line 642
    :goto_2
    const-string/jumbo v1, "CustomVideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GetFrameAtTime: Rendered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->isEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    const-wide/32 v2, 0x1c9c380

    .line 645
    const-wide/16 v8, 0x0

    cmp-long v1, p3, v8

    if-ltz v1, :cond_7

    .line 646
    sub-long v2, p3, v6

    .line 648
    :cond_7
    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->processNextFrame(J)J

    goto/16 :goto_0

    .line 641
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onDisabled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->trackIndex:I

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/ClipSampleSource;->disable(I)V

    .line 320
    return-void

    .line 318
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->trackIndex:I

    invoke-virtual {v1, v2}, Lcom/adobe/customextractor/ClipSampleSource;->disable(I)V

    .line 319
    throw v0
.end method

.method public onEnabled(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 278
    new-instance v0, Lcom/adobe/customextractor/ClipSampleSource;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/adobe/customextractor/ClipSampleSource;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    invoke-virtual {v0}, Lcom/adobe/customextractor/ClipSampleSource;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    iput v5, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->trackIndex:I

    move v0, v1

    .line 287
    :goto_0
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    invoke-virtual {v2}, Lcom/adobe/customextractor/ClipSampleSource;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    invoke-virtual {v2, v0}, Lcom/adobe/customextractor/ClipSampleSource;->getNativeTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 289
    const-string/jumbo v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->handlesMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->trackIndex:I

    .line 294
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->trackIndex:I

    if-eq v0, v5, :cond_2

    .line 295
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->trackIndex:I

    invoke-virtual {v0, v2}, Lcom/adobe/customextractor/ClipSampleSource;->getTrackInfo(I)Lcom/adobe/customextractor/Tracks/TrackInfo;

    move-result-object v0

    iget-wide v2, v0, Lcom/adobe/customextractor/Tracks/TrackInfo;->durationUs:J

    iput-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceDuration:J

    .line 296
    new-instance v0, Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/Util/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    .line 297
    new-instance v0, Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;

    invoke-direct {v0}, Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->formatHolder:Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->decodeOnlyPresentationTimestamps:Ljava/util/List;

    .line 299
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 301
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->trackIndex:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/adobe/customextractor/ClipSampleSource;->enable(IJ)V

    .line 302
    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceState:I

    .line 303
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputStreamEnded:Z

    .line 304
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputStreamEnded:Z

    .line 305
    iput v5, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    .line 310
    :goto_1
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 287
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_2
    const-string/jumbo v0, "CustomVideoDecoder"

    const-string/jumbo v1, "Could not find the video track"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onReleased()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    invoke-virtual {v0}, Lcom/adobe/customextractor/ClipSampleSource;->release()V

    .line 757
    :cond_0
    return-void
.end method

.method protected onSurfaceSet()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->releaseCodec()V

    .line 138
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->initCodec()V

    .line 139
    return-void
.end method

.method public seekToInternal(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sampleSource:Lcom/adobe/customextractor/ClipSampleSource;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/ClipSampleSource;->seekToUs(J)V

    .line 329
    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->sourceState:I

    .line 330
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->inputStreamEnded:Z

    .line 331
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputStreamEnded:Z

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->outputIndex:I

    .line 333
    return-void
.end method
