.class Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;
.super Ljava/lang/Object;
.source "SystemDefaultAudioDecoder.java"

# interfaces
.implements Lcom/adobe/decoderfactory/IAudioDecoder;


# instance fields
.field private audioDecoder:Landroid/media/MediaCodec;

.field private audioFormat:Landroid/media/MediaFormat;

.field private currentOutputBufferState:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;

.field private currentSampleNumber:J

.field private decodeFormatRead:Z

.field private endofInputStream:Z

.field private endofOutputStream:Z

.field private error:Z

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private mediaExtractor:Landroid/media/MediaExtractor;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

.field private requestedSeekSample:J

.field private source:Ljava/lang/String;

.field private sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    .line 29
    iput-boolean v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofInputStream:Z

    .line 32
    iput-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    .line 33
    iput-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->requestedSeekSample:J

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentOutputBufferState:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;

    .line 37
    iput-boolean v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->decodeFormatRead:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;)Lcom/adobe/decoderfactory/AudioInfo;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;)Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private feedMoreEncodedData()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 383
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofInputStream:Z

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 387
    if-ltz v1, :cond_0

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    .line 390
    invoke-direct {p0, v1}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->getInputBufferSDK21(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 395
    :goto_1
    iget-object v3, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 396
    const-wide/16 v4, 0x0

    .line 397
    if-gez v3, :cond_3

    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->hasCacheReachedEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofInputStream:Z

    move v3, v2

    .line 404
    :goto_2
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    iget-boolean v6, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofInputStream:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    :goto_3
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 409
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofInputStream:Z

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    goto :goto_1

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    goto :goto_2

    :cond_4
    move v6, v2

    .line 404
    goto :goto_3
.end method

.method private getDecodedData(Lcom/adobe/decoderfactory/AudioReadData;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 416
    if-eqz p1, :cond_0

    .line 417
    iget-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    const-wide/16 v4, 0x0

    iget-boolean v6, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    iget-boolean v7, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/decoderfactory/AudioReadData;->setAudioData(JJZZLjava/nio/ByteBuffer;)V

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    if-eqz v0, :cond_2

    .line 467
    :cond_1
    :goto_0
    return-void

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-nez v0, :cond_1

    .line 425
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 426
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 427
    if-ltz v2, :cond_6

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 430
    invoke-direct {p0, v2}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->getOutputBufferSDK21(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 435
    :goto_1
    if-eqz p1, :cond_4

    .line 436
    iget v0, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    iget v1, v1, Lcom/adobe/decoderfactory/AudioInfo;->channels:I

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    .line 437
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 438
    iget v0, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 440
    new-instance v0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;

    iget-wide v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;-><init>(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;ILjava/nio/ByteBuffer;J)V

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentOutputBufferState:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;

    .line 444
    iget v0, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 445
    iput-boolean v9, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    .line 448
    :cond_3
    invoke-direct {p0, p1}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->readFromCurrentOutputBuffer(Lcom/adobe/decoderfactory/AudioReadData;)Z

    .line 451
    :cond_4
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    if-eqz v0, :cond_1

    .line 452
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->releaseDecoder()V

    goto :goto_0

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v0, v2

    goto :goto_1

    .line 455
    :cond_6
    const/4 v0, -0x3

    if-ne v2, v0, :cond_7

    .line 456
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 457
    :cond_7
    const/4 v0, -0x2

    if-ne v2, v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 460
    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 461
    const-string/jumbo v2, "channel-count"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 463
    new-instance v0, Lcom/adobe/decoderfactory/AudioInfo;

    sget-object v3, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    iget-object v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v4}, Lcom/adobe/decoderfactory/AudioInfo;->getDuration()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/decoderfactory/AudioInfo;-><init>(IILcom/adobe/decoderfactory/AudioInfo$SampleType;J)V

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    .line 465
    iput-boolean v9, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->decodeFormatRead:Z

    goto/16 :goto_0
.end method

.method private getInputBufferSDK21(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getOutputBufferSDK21(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private internalInitializeDecoder()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 315
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/AudioInfo;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_2

    .line 325
    const-string/jumbo v0, "DecoderFactory"

    const-string/jumbo v1, "Empty audio format"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iput-boolean v7, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_1
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-nez v0, :cond_0

    .line 343
    :try_start_1
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    :goto_2
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->releaseCurrentOutputBuffer()V

    .line 353
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 362
    :goto_3
    iput-boolean v6, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    .line 363
    iput-boolean v6, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofInputStream:Z

    .line 365
    :goto_4
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->decodeFormatRead:Z

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->feedMoreEncodedData()V

    .line 368
    invoke-direct {p0, v8}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->getDecodedData(Lcom/adobe/decoderfactory/AudioReadData;)V

    goto :goto_4

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const-string/jumbo v2, "DecoderFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MediaCodec.createDecoderByType failed for mine type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 336
    iput-boolean v7, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    goto :goto_1

    .line 344
    :catch_1
    move-exception v0

    .line 345
    const-string/jumbo v2, "DecoderFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AudioDecoder.configure failed for type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 346
    iput-boolean v7, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    goto :goto_2

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 359
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_3
.end method

.method private internalInitializeExractor()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x1

    const-wide/16 v6, 0x0

    .line 200
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    :cond_2
    const-string/jumbo v0, "DecoderFactory"

    const-string/jumbo v1, "Empty source"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput-boolean v9, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    goto :goto_0

    .line 210
    :cond_3
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-eqz v0, :cond_4

    .line 220
    iput-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    .line 224
    :try_start_1
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-static {}, Lcom/adobe/decoderfactory/DecoderFactory;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-nez v0, :cond_0

    .line 237
    iput-object v5, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    .line 238
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    move v1, v2

    .line 239
    :goto_3
    if-ge v1, v3, :cond_6

    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_6

    .line 241
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 242
    const-string/jumbo v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 245
    :try_start_2
    iget-object v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 246
    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 240
    :cond_5
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-string/jumbo v1, "DecoderFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MediaExtractor setDataSource failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 216
    iput-boolean v9, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    goto :goto_1

    .line 225
    :catch_1
    move-exception v0

    .line 226
    const-string/jumbo v1, "DecoderFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MediaExtractor setDataSource failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 227
    iput-boolean v9, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    goto :goto_2

    .line 247
    :catch_2
    move-exception v0

    .line 251
    const-string/jumbo v4, "DecoderFactory"

    const-string/jumbo v5, "Exception while selecting track"

    invoke-static {v4, v5, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_7

    .line 257
    const-string/jumbo v0, "DecoderFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio not available with source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iput-boolean v9, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    goto/16 :goto_0

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_b

    .line 266
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 267
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 269
    :try_start_3
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "durationUs"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v0

    .line 270
    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    move-wide v0, v6

    :cond_8
    move-wide v4, v0

    .line 277
    :goto_5
    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    .line 278
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 279
    invoke-static {}, Lcom/adobe/decoderfactory/DecoderFactory;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    iget-object v8, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 282
    const/16 v1, 0x9

    :try_start_4
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    .line 290
    :cond_9
    :goto_6
    cmp-long v0, v4, v6

    if-nez v0, :cond_a

    .line 292
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 293
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 296
    :try_start_5
    invoke-static {}, Lcom/adobe/decoderfactory/DecoderFactory;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    iget-object v8, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 298
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 300
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v0

    int-to-long v4, v0

    move v1, v3

    .line 309
    :goto_7
    new-instance v0, Lcom/adobe/decoderfactory/AudioInfo;

    sget-object v3, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/decoderfactory/AudioInfo;-><init>(IILcom/adobe/decoderfactory/AudioInfo$SampleType;J)V

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    .line 311
    iput-wide v6, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    goto/16 :goto_0

    .line 273
    :catch_3
    move-exception v0

    .line 274
    const-string/jumbo v1, "DecoderFactory"

    const-string/jumbo v4, "Exception while retrieving duration"

    invoke-static {v1, v4, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-wide v4, v6

    goto :goto_5

    .line 285
    :catch_4
    move-exception v0

    .line 286
    const-string/jumbo v1, "DecoderFactory"

    const-string/jumbo v8, "Exception while retrieving duration"

    invoke-static {v1, v8, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    .line 301
    :catch_5
    move-exception v0

    .line 302
    const-string/jumbo v1, "DecoderFactory"

    const-string/jumbo v8, "Exception while retrieving duration using media player"

    invoke-static {v1, v8, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 304
    iput-boolean v9, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    :cond_a
    move v1, v3

    goto :goto_7

    :cond_b
    move-wide v4, v6

    move v1, v2

    goto :goto_7
.end method

.method private internalSeekTo(J)V
    .locals 11

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->releaseCurrentOutputBuffer()V

    .line 486
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    long-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->requestedSeekSample:J

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofInputStream:Z

    .line 493
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 500
    const/16 v3, 0xa

    .line 501
    const v6, 0x30d40

    .line 502
    const/4 v2, 0x0

    move-wide v0, p1

    move-wide v4, p1

    .line 505
    :cond_2
    :goto_1
    if-nez v2, :cond_8

    .line 506
    iget-object v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 507
    iget-object v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 509
    iget-object v7, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    iget-wide v8, v7, Lcom/adobe/decoderfactory/AudioInfo;->durationInMicroSeconds:J

    cmp-long v7, v4, v8

    if-ltz v7, :cond_3

    .line 510
    const-string/jumbo v2, "DecoderFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Seek-Position beyond duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofInputStream:Z

    .line 513
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    .line 515
    const/4 v2, 0x1

    .line 548
    :goto_2
    if-gtz v3, :cond_2

    .line 550
    const-string/jumbo v2, "DecoderFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Seek-Not able to seek properly, Requested: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", last attempted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    .line 554
    const/4 v2, 0x1

    goto :goto_1

    .line 517
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_4

    .line 518
    const-string/jumbo v2, "DecoderFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Seek-Result in negative time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " some error, last attempted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    .line 523
    const/4 v2, 0x1

    goto :goto_2

    .line 525
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_5

    cmp-long v7, v4, p1

    if-gtz v7, :cond_5

    .line 526
    const/4 v2, 0x1

    goto :goto_2

    .line 527
    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-eqz v7, :cond_6

    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-nez v7, :cond_6

    .line 529
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    .line 530
    const/4 v2, 0x1

    .line 532
    const-string/jumbo v7, "DecoderFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Seek-Not able to seek properly, Requested: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", last attempted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 538
    :cond_6
    const-string/jumbo v7, "DecoderFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Seek-Not able to seek properly, Requested: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", last attempted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    int-to-long v8, v6

    sub-long/2addr v0, v8

    .line 543
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gtz v7, :cond_7

    .line 544
    const-wide/16 v0, 0x0

    .line 545
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 558
    :cond_8
    long-to-double v0, v4

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    .line 559
    const-string/jumbo v0, "DecoderFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Seek-Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private readFromCurrentOutputBuffer(Lcom/adobe/decoderfactory/AudioReadData;)Z
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x1

    .line 183
    iget-object v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentOutputBufferState:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;

    if-eqz v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentOutputBufferState:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;

    invoke-virtual {v0, p1}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->readBufferData(Lcom/adobe/decoderfactory/AudioReadData;)Z

    move-result v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->releaseCurrentOutputBuffer()V

    .line 189
    :cond_0
    return v0
.end method

.method private releaseCurrentOutputBuffer()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentOutputBufferState:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentOutputBufferState:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->releaseBuffer()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentOutputBufferState:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;

    .line 197
    :cond_0
    return-void
.end method

.method private releaseDecoder()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 479
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    .line 482
    :cond_0
    return-void
.end method

.method private releaseExtractor()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 474
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalyze()V
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->release()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    .line 162
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "System default"

    return-object v0
.end method

.method public getOutputInfo()Lcom/adobe/decoderfactory/AudioInfo;
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceInfo()Lcom/adobe/decoderfactory/AudioInfo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    return v0
.end method

.method public isEOF()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->release()V

    .line 166
    iput-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    .line 168
    iput-object p1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->source:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->internalInitializeExractor()V

    .line 170
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->internalInitializeDecoder()V

    .line 172
    iget-object v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public declared-synchronized readNextSamples(Lcom/adobe/decoderfactory/AudioReadData;)V
    .locals 9

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    const-wide/16 v4, 0x0

    iget-boolean v6, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    iget-boolean v7, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/decoderfactory/AudioReadData;->setAudioData(JJZZLjava/nio/ByteBuffer;)V

    .line 78
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->internalInitializeExractor()V

    .line 82
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->internalInitializeDecoder()V

    .line 84
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->readFromCurrentOutputBuffer(Lcom/adobe/decoderfactory/AudioReadData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-wide/16 v0, 0x0

    .line 92
    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-nez v2, :cond_7

    .line 96
    iget-wide v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    .line 98
    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    .line 101
    :cond_3
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofInputStream:Z

    if-nez v0, :cond_4

    .line 102
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->feedMoreEncodedData()V

    .line 105
    :cond_4
    invoke-direct {p0, p1}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->getDecodedData(Lcom/adobe/decoderfactory/AudioReadData;)V

    .line 106
    invoke-virtual {p1}, Lcom/adobe/decoderfactory/AudioReadData;->getNoOfSamples()J

    move-result-wide v0

    .line 108
    iget-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->requestedSeekSample:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    iget-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 113
    iget-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->requestedSeekSample:J

    iget-wide v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 114
    iget-wide v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->requestedSeekSample:J

    long-to-double v0, v0

    iget-object v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    .line 115
    invoke-direct {p0, v0, v1}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->internalSeekTo(J)V

    .line 117
    const-wide/16 v0, 0x0

    .line 119
    const-string/jumbo v2, "DecoderFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Seek not working, current sample: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", seek sample: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->requestedSeekSample:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :try_start_2
    const-string/jumbo v1, "Exception in readNextSamples"

    invoke-static {v1, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_5
    :try_start_3
    iget-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->requestedSeekSample:J

    iget-wide v4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 122
    iget-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    .line 124
    const-wide/16 v0, 0x0

    goto/16 :goto_1

    .line 126
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 127
    iget-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    if-eqz v2, :cond_2

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    goto/16 :goto_1

    .line 132
    :cond_7
    iget-boolean v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->endofOutputStream:Z

    if-eqz v2, :cond_8

    .line 133
    const-wide/16 v0, 0x0

    .line 135
    :cond_8
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->requestedSeekSample:J

    .line 136
    iget-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->currentSampleNumber:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->releaseDecoder()V

    .line 146
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->releaseExtractor()V

    .line 147
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->releaseCurrentOutputBuffer()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    .line 149
    return-void
.end method

.method public declared-synchronized seekTo(J)V
    .locals 3

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->internalInitializeExractor()V

    .line 46
    invoke-direct {p0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->internalInitializeDecoder()V

    .line 48
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->error:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 51
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->internalSeekTo(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    :try_start_2
    const-string/jumbo v1, "Exception in seekTo"

    invoke-static {v1, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
