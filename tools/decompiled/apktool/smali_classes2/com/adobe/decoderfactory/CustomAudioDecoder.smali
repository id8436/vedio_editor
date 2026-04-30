.class public Lcom/adobe/decoderfactory/CustomAudioDecoder;
.super Ljava/lang/Object;
.source "CustomAudioDecoder.java"

# interfaces
.implements Lcom/adobe/decoderfactory/IAudioDecoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomAudioDecoder"


# instance fields
.field private audioDecoder:Landroid/media/MediaCodec;

.field private audioFormat:Landroid/media/MediaFormat;

.field private currentSampleNumber:J

.field private decodeFormatRead:Z

.field private endofInputStream:Z

.field private endofOutputStream:Z

.field private error:Z

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field private mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

.field private requestedSeekSample:J

.field private source:Ljava/lang/String;

.field private sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    .line 34
    iput-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofInputStream:Z

    .line 37
    iput-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    .line 38
    iput-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->requestedSeekSample:J

    .line 40
    iput-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->decodeFormatRead:Z

    return-void
.end method

.method private feedMoreEncodedData()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofInputStream:Z

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 325
    if-ltz v1, :cond_0

    .line 327
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    .line 328
    invoke-direct {p0, v1}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->getInputBufferSDK21(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 333
    :goto_1
    iget-object v3, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v3, v0, v2}, Lcom/adobe/customextractor/extractor/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 334
    const-wide/16 v4, 0x0

    .line 335
    const/4 v0, -0x2

    if-ne v3, v0, :cond_3

    .line 336
    const-string/jumbo v0, "CustomAudioDecoder"

    const-string/jumbo v3, "FeedData: Nothing read"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 347
    :goto_2
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    iget-boolean v6, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofInputStream:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    :goto_3
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 352
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofInputStream:Z

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->advance()V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    goto :goto_1

    .line 339
    :cond_3
    const/4 v0, -0x1

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->hasCacheReachedEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofInputStream:Z

    .line 341
    const-string/jumbo v0, "CustomAudioDecoder"

    const-string/jumbo v3, "FeedData: End of stream"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 342
    goto :goto_2

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 345
    const-string/jumbo v0, "CustomAudioDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FeedData: samplesize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " present Time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move v6, v2

    .line 347
    goto :goto_3
.end method

.method private getDecodedData(Lcom/adobe/decoderfactory/AudioReadData;)V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    const-wide/16 v4, 0x0

    iget-boolean v6, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    iget-boolean v7, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/decoderfactory/AudioReadData;->setAudioData(JJZZLjava/nio/ByteBuffer;)V

    .line 362
    :cond_0
    iget-boolean v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    if-eqz v1, :cond_2

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-nez v1, :cond_1

    .line 368
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 369
    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v10, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11

    .line 370
    if-ltz v11, :cond_6

    .line 372
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 373
    invoke-direct {p0, v11}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->getOutputBufferSDK21(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 377
    :goto_1
    if-eqz p1, :cond_3

    .line 378
    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    iget v2, v2, Lcom/adobe/decoderfactory/AudioInfo;->channels:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    .line 379
    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 380
    iget v2, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 381
    iget-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    int-to-long v4, v1

    iget v1, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    move v6, v0

    :goto_2
    iget-boolean v7, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/decoderfactory/AudioReadData;->setAudioData(JJZZLjava/nio/ByteBuffer;)V

    .line 388
    :cond_3
    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v11, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 389
    iget v0, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 390
    iput-boolean v9, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    .line 391
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->releaseDecoder()V

    goto :goto_0

    .line 375
    :cond_4
    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v8, v1, v11

    goto :goto_1

    :cond_5
    move v6, v9

    .line 381
    goto :goto_2

    .line 394
    :cond_6
    const/4 v0, -0x3

    if-ne v11, v0, :cond_7

    .line 395
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 396
    :cond_7
    const/4 v0, -0x2

    if-ne v11, v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 398
    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 399
    const-string/jumbo v2, "channel-count"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 400
    const-string/jumbo v0, "CustomAudioDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Format Read: sampleRate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " channels "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Lcom/adobe/decoderfactory/AudioInfo;

    sget-object v3, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    iget-object v4, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v4}, Lcom/adobe/decoderfactory/AudioInfo;->getDuration()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/decoderfactory/AudioInfo;-><init>(IILcom/adobe/decoderfactory/AudioInfo$SampleType;J)V

    iput-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    .line 402
    iput-boolean v9, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->decodeFormatRead:Z

    goto/16 :goto_0
.end method

.method private getInputBufferSDK21(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

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
    .line 464
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private internalInitializeDecoder()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 174
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/AudioInfo;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_2

    .line 184
    const-string/jumbo v0, "CustomAudioDecoder"

    const-string/jumbo v1, "Empty audio format"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iput-boolean v7, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_1
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1, v6, v6, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 202
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 211
    :goto_2
    iput-boolean v5, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    .line 212
    iput-boolean v5, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofInputStream:Z

    .line 214
    :goto_3
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->decodeFormatRead:Z

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->feedMoreEncodedData()V

    .line 217
    invoke-direct {p0, v6}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->getDecodedData(Lcom/adobe/decoderfactory/AudioReadData;)V

    goto :goto_3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string/jumbo v2, "CustomAudioDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MediaCodec.createDecoderByType failed for mine type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 195
    iput-boolean v7, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    goto :goto_1

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 208
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_2
.end method

.method private internalInitializeExtractor()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    .line 66
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    :cond_2
    const-string/jumbo v0, "CustomAudioDecoder"

    const-string/jumbo v1, "Empty source"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-boolean v10, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    goto :goto_0

    .line 76
    :cond_3
    new-instance v0, Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-static {}, Lcom/adobe/decoderfactory/DecoderFactory;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/extractor/MediaExtractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    .line 77
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    const-string/jumbo v1, "Audio"

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->setTrackType(Ljava/lang/String;)V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->setDataSource(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-eqz v0, :cond_4

    .line 86
    iput-boolean v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-static {}, Lcom/adobe/decoderfactory/DecoderFactory;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/adobe/customextractor/extractor/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-nez v0, :cond_0

    .line 103
    iput-object v5, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    .line 104
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getTrackCount()I

    move-result v1

    move v0, v2

    .line 105
    :goto_3
    if-ge v0, v1, :cond_7

    iget-object v3, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-nez v3, :cond_7

    .line 107
    iget-object v3, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v3, v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v3

    .line 108
    if-nez v3, :cond_6

    .line 106
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string/jumbo v1, "CustomAudioDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Custom MediaExtractor setDataSource failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 82
    iput-boolean v10, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    .line 91
    const-string/jumbo v1, "CustomAudioDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Custom MediaExtractor setDataSource failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 92
    iput-boolean v10, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    goto :goto_2

    .line 111
    :cond_6
    iget-object v4, v3, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    .line 112
    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 113
    invoke-virtual {v3}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    .line 114
    iget-object v3, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v3, v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->selectTrack(I)V

    goto :goto_4

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_8

    .line 119
    const-string/jumbo v0, "CustomAudioDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio not available with source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-boolean v10, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    goto/16 :goto_0

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_b

    .line 128
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 129
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "channel-count"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 131
    :try_start_2
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    const-string/jumbo v3, "durationUs"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v4

    .line 136
    :goto_5
    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    .line 137
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 138
    invoke-static {}, Lcom/adobe/decoderfactory/DecoderFactory;->getCurrentContext()Landroid/content/Context;

    move-result-object v3

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 141
    const/16 v3, 0x9

    :try_start_3
    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    .line 149
    :cond_9
    :goto_6
    cmp-long v0, v4, v6

    if-nez v0, :cond_a

    .line 151
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 152
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 155
    :try_start_4
    invoke-static {}, Lcom/adobe/decoderfactory/DecoderFactory;->getCurrentContext()Landroid/content/Context;

    move-result-object v3

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 157
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 159
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    int-to-long v4, v0

    .line 168
    :cond_a
    :goto_7
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0, v6, v7, v10}, Lcom/adobe/customextractor/extractor/MediaExtractor;->seekTo(JI)V

    .line 169
    new-instance v0, Lcom/adobe/decoderfactory/AudioInfo;

    sget-object v3, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/decoderfactory/AudioInfo;-><init>(IILcom/adobe/decoderfactory/AudioInfo$SampleType;J)V

    iput-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    .line 170
    iput-wide v6, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    goto/16 :goto_0

    .line 132
    :catch_2
    move-exception v0

    .line 133
    const-string/jumbo v3, "CustomAudioDecoder"

    const-string/jumbo v4, "Exception while retrieving duration"

    invoke-static {v3, v4, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-wide v4, v6

    goto :goto_5

    .line 144
    :catch_3
    move-exception v0

    .line 145
    const-string/jumbo v3, "CustomAudioDecoder"

    const-string/jumbo v8, "Exception while retrieving duration from metadataretriever"

    invoke-static {v3, v8, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    .line 160
    :catch_4
    move-exception v0

    .line 161
    const-string/jumbo v3, "CustomAudioDecoder"

    const-string/jumbo v8, "Exception while retrieving duration using media player"

    invoke-static {v3, v8, v0}, Lcom/adobe/cliputils/ClipLogger;->ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 163
    iput-boolean v10, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    goto :goto_7

    :cond_b
    move-wide v4, v6

    move v1, v2

    goto :goto_7
.end method

.method private internalSeekTo(J)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 418
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    long-to-double v0, p1

    div-double/2addr v0, v6

    iget-object v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->requestedSeekSample:J

    .line 422
    iput-boolean v8, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    .line 423
    iput-boolean v8, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofInputStream:Z

    .line 425
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 427
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->seekTo(JI)V

    .line 429
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    .line 430
    long-to-double v0, v0

    div-double/2addr v0, v6

    iget-object v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    double-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    goto :goto_0
.end method

.method private releaseDecoder()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 231
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    .line 234
    :cond_0
    return-void
.end method

.method private releaseExtractor()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->release()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalyze()V
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->release()V

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    .line 451
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "Custom decoder"

    return-object v0
.end method

.method public getOutputInfo()Lcom/adobe/decoderfactory/AudioInfo;
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceInfo()Lcom/adobe/decoderfactory/AudioInfo;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->sourceInfo:Lcom/adobe/decoderfactory/AudioInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    return v0
.end method

.method public isEOF()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    return v0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->release()V

    .line 48
    iput-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    .line 50
    iput-object p1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->source:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->internalInitializeExtractor()V

    .line 52
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->internalInitializeDecoder()V

    .line 54
    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public declared-synchronized readNextSamples(Lcom/adobe/decoderfactory/AudioReadData;)V
    .locals 10

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "CustomAudioDecoder"

    const-string/jumbo v1, "ReadNextSample ------------ "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    const-wide/16 v4, 0x0

    iget-boolean v6, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    iget-boolean v7, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/decoderfactory/AudioReadData;->setAudioData(JJZZLjava/nio/ByteBuffer;)V

    .line 248
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    if-eqz v0, :cond_2

    .line 249
    :cond_0
    const-string/jumbo v0, "CustomAudioDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End of stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->internalInitializeExtractor()V

    .line 254
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->internalInitializeDecoder()V

    .line 256
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-nez v0, :cond_1

    .line 259
    const-wide/16 v4, 0x0

    .line 260
    const-wide/16 v6, -0x1

    .line 261
    const/4 v0, 0x0

    move-wide v2, v4

    .line 262
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-nez v1, :cond_8

    .line 266
    iget-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    .line 268
    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v1}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    .line 271
    :cond_3
    iget-boolean v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofInputStream:Z

    if-nez v1, :cond_4

    .line 272
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->feedMoreEncodedData()V

    .line 275
    :cond_4
    invoke-direct {p0, p1}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->getDecodedData(Lcom/adobe/decoderfactory/AudioReadData;)V

    .line 276
    invoke-virtual {p1}, Lcom/adobe/decoderfactory/AudioReadData;->getNoOfSamples()J

    move-result-wide v4

    .line 278
    iget-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->requestedSeekSample:J

    const-wide/16 v8, -0x1

    cmp-long v1, v2, v8

    if-eqz v1, :cond_c

    iget-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    const-wide/16 v8, -0x1

    cmp-long v1, v2, v8

    if-eqz v1, :cond_c

    .line 280
    const-string/jumbo v1, "CustomAudioDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ReadNextSample:requestedSeek "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->requestedSeekSample:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->mediaExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    .line 282
    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-nez v1, :cond_b

    .line 283
    long-to-double v2, v2

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v6

    iget-object v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v1}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v1, v2

    int-to-long v2, v1

    .line 285
    :goto_2
    const-string/jumbo v1, "CustomAudioDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ReadNextSample:CurrentFeedSample "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-wide v6, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->requestedSeekSample:J

    cmp-long v1, v6, v2

    if-gez v1, :cond_6

    .line 287
    const-string/jumbo v1, "CustomAudioDecoder"

    const-string/jumbo v2, "ReadNextSample:temp > request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    add-int/lit8 v0, v0, 0x1

    .line 289
    const/16 v1, 0x2710

    if-le v0, v1, :cond_5

    .line 290
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    .line 292
    :cond_5
    const-wide/16 v2, -0x1

    .line 293
    const-wide/16 v4, 0x0

    :goto_3
    move-wide v6, v2

    move-wide v2, v4

    .line 306
    goto/16 :goto_1

    .line 295
    :cond_6
    iget-wide v6, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->requestedSeekSample:J

    add-long v8, v2, v4

    cmp-long v1, v6, v8

    if-lez v1, :cond_7

    .line 296
    const-string/jumbo v1, "CustomAudioDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ReadNextSample:Pushing samples towards seek: samplesRead "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    add-long/2addr v2, v4

    .line 298
    iput-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    .line 299
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 302
    :cond_7
    const-string/jumbo v1, "CustomAudioDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ReadNextSample:Seek Complete: currentSN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->requestedSeekSample:J

    .line 304
    iput-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 308
    :cond_8
    :try_start_2
    iget-wide v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    invoke-virtual {p1}, Lcom/adobe/decoderfactory/AudioReadData;->getStartSampleNumber()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 309
    const-string/jumbo v0, "CustomAudioDecoder"

    const-string/jumbo v1, "ReadNextSample: currSN changed after decode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-wide v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    invoke-virtual {p1, v0, v1}, Lcom/adobe/decoderfactory/AudioReadData;->setStartSampleNumber(J)V

    .line 313
    :cond_9
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->endofOutputStream:Z

    if-eqz v0, :cond_a

    .line 314
    const-wide/16 v0, 0x0

    .line 316
    :goto_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->requestedSeekSample:J

    .line 317
    iget-wide v2, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->currentSampleNumber:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_a
    move-wide v0, v2

    goto :goto_4

    :cond_b
    move-wide v2, v6

    goto/16 :goto_2

    :cond_c
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->releaseDecoder()V

    .line 61
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->releaseExtractor()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->audioFormat:Landroid/media/MediaFormat;

    .line 63
    return-void
.end method

.method public declared-synchronized seekTo(J)V
    .locals 3

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "CustomAudioDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->internalInitializeExtractor()V

    .line 409
    invoke-direct {p0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->internalInitializeDecoder()V

    .line 411
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->error:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/decoderfactory/CustomAudioDecoder;->outputInfo:Lcom/adobe/decoderfactory/AudioInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 414
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->internalSeekTo(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
