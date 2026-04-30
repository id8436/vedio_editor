.class public final Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;
.super Ljava/lang/Object;
.source "CustomFrameRetriever.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomFrameRetriever"

.field private static TARGET_HEIGHT:I

.field private static TARGET_WIDTH:I

.field private static instance:Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;


# instance fields
.field private customFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

.field private decoderInit:Z

.field private endOfInputStream:Z

.field private endOfOutputStream:Z

.field private extractor:Lcom/adobe/customextractor/ClipExtractor;

.field private extractorInit:Z

.field private format:Landroid/media/MediaFormat;

.field private frameBuffered:Z

.field private glCore:Lcom/adobe/customextractor/FrameResources/GLCore;

.field private inputBuffers:[Ljava/nio/ByteBuffer;

.field mSurface:Landroid/view/Surface;

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mimeType:Ljava/lang/String;

.field private outputFormat:Landroid/media/MediaFormat;

.field private outputHeight:I

.field private outputWidth:I

.field private rotation:I

.field private sourceHeight:I

.field private sourceWidth:I

.field private thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private codecConfigure(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    .prologue
    .line 231
    const-string/jumbo v0, "ThumbLog"

    const-string/jumbo v1, "Before config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 233
    const-string/jumbo v0, "ThumbLog"

    const-string/jumbo v1, "After config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method private drawThumbnail()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->glCore:Lcom/adobe/customextractor/FrameResources/GLCore;

    invoke-virtual {v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->waitForFrame()V

    .line 342
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "stride"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "stride"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "slice-height"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "slice-height"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 357
    :goto_1
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "crop-bottom"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "crop-top"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "crop-bottom"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 359
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v3, "crop-top"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    move v8, v2

    .line 367
    :goto_2
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "crop-right"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "crop-left"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "crop-right"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "crop-left"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    move v9, v0

    .line 376
    :goto_3
    const-string/jumbo v0, "ThumbLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Crop t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " r "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " l "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->glCore:Lcom/adobe/customextractor/FrameResources/GLCore;

    iget v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputWidth:I

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputHeight:I

    iget v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->rotation:I

    sub-int v6, v9, v6

    add-int/lit8 v6, v6, 0x1

    sub-int v7, v8, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/customextractor/FrameResources/GLCore;->drawFrame(IIIIIII)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->pixelsToBitmap([ILjava/nio/ByteOrder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->thumbnail:Landroid/graphics/Bitmap;

    .line 382
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "height"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_1

    .line 362
    :cond_2
    const-string/jumbo v0, "VideoDecoder"

    const-string/jumbo v2, "Could not find crop param top and bottom"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    add-int/lit8 v0, v5, -0x1

    move v7, v1

    move v8, v0

    goto/16 :goto_2

    .line 372
    :cond_3
    const-string/jumbo v0, "VideoDecoder"

    const-string/jumbo v2, "Could not find crop param right or left"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    add-int/lit8 v0, v4, -0x1

    move v6, v1

    move v9, v0

    .line 374
    goto/16 :goto_3
.end method

.method private feedInput()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfInputStream:Z

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 266
    if-ltz v1, :cond_0

    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_2

    .line 269
    invoke-direct {p0, v1}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->getInputBufferSDK21(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 274
    :goto_1
    iget-object v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v3, v0, v2}, Lcom/adobe/customextractor/ClipExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 275
    const-string/jumbo v0, "ThumbLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Flag - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v5}, Lcom/adobe/customextractor/ClipExtractor;->getSampleFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-wide/16 v4, 0x0

    .line 277
    const/4 v0, -0x2

    if-ne v3, v0, :cond_3

    .line 278
    const-string/jumbo v0, "ThumbLog"

    const-string/jumbo v3, "FeedData:SampleNotFound"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 287
    :goto_2
    const-string/jumbo v0, "ThumbLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sample size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " presenetationTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    iget-boolean v6, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfInputStream:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x4

    :goto_3
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 291
    iget-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfInputStream:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/ClipExtractor;->advance()V

    goto/16 :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    goto :goto_1

    .line 280
    :cond_3
    const/4 v0, -0x1

    if-ne v3, v0, :cond_4

    .line 281
    const-string/jumbo v0, "ThumbLog"

    const-string/jumbo v3, "FeedData:Endofstream"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfInputStream:Z

    move v3, v2

    .line 283
    goto :goto_2

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/ClipExtractor;->getSampleTime()J

    move-result-wide v4

    goto :goto_2

    :cond_5
    move v6, v2

    .line 289
    goto :goto_3
.end method

.method private getDecodedOutput()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v6, 0x1

    .line 298
    iget-boolean v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfOutputStream:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 302
    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 303
    const/4 v3, -0x2

    if-ne v1, v3, :cond_3

    .line 304
    const-string/jumbo v1, "ThumbLog"

    const-string/jumbo v3, "Output format changed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputFormat:Landroid/media/MediaFormat;

    .line 315
    :goto_1
    iget v1, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 316
    const-string/jumbo v1, "ThumbLog"

    const-string/jumbo v3, "decode: end of output"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iput-boolean v6, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfOutputStream:Z

    .line 320
    :cond_2
    if-ltz v0, :cond_0

    .line 321
    const-string/jumbo v1, "ThumbLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Decoded at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 323
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->drawThumbnail()V

    .line 324
    iput-boolean v6, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->frameBuffered:Z

    .line 325
    iget v0, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 326
    iput-boolean v6, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfOutputStream:Z

    .line 327
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->releaseDecoder()V

    goto :goto_0

    .line 307
    :cond_3
    const/4 v3, -0x3

    if-ne v1, v3, :cond_4

    .line 308
    const-string/jumbo v1, "ThumbLog"

    const-string/jumbo v3, "output buffers changed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 311
    :cond_4
    if-gez v1, :cond_5

    .line 312
    const-string/jumbo v0, "DecodeFail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Decode: outputIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private getInputBufferSDK21(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->instance:Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;

    invoke-direct {v0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;-><init>()V

    sput-object v0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->instance:Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;

    .line 63
    :cond_0
    sget-object v0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->instance:Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;

    return-object v0
.end method

.method private getOutputBufferSDK21(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private initDecoder(Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 237
    const-string/jumbo v0, "ThumbLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Initializing decoder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractorInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->format:Landroid/media/MediaFormat;

    if-nez v0, :cond_2

    :cond_0
    move v2, v1

    .line 258
    :cond_1
    :goto_0
    return v2

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->format:Landroid/media/MediaFormat;

    const-string/jumbo v3, "mime"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    :try_start_0
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    .line 246
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->format:Landroid/media/MediaFormat;

    invoke-direct {p0, v0, v4}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->codecConfigure(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 247
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_3

    .line 249
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->inputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    .line 256
    :goto_1
    iput-boolean v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfInputStream:Z

    .line 257
    iput-boolean v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfOutputStream:Z

    .line 258
    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string/jumbo v4, "ThumbLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initDecoder:Could not create decoder (mimeType) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " software "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 254
    goto :goto_1
.end method

.method private initExtractor()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 174
    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v1}, Lcom/adobe/customextractor/ClipExtractor;->getTrackCount()I

    move-result v3

    move v1, v0

    .line 176
    :goto_0
    if-ge v1, v3, :cond_3

    .line 177
    iget-object v4, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v4, v1}, Lcom/adobe/customextractor/ClipExtractor;->getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v4

    .line 178
    if-nez v4, :cond_1

    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    iget-object v5, v4, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/adobe/customextractor/Util/Media/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    invoke-virtual {v4}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->format:Landroid/media/MediaFormat;

    .line 184
    iput-object v4, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->customFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    .line 185
    iget-object v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->customFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iget v3, v3, Lcom/adobe/customextractor/Util/Media/MediaFormat;->width:I

    iput v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    .line 186
    iget-object v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->customFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iget v3, v3, Lcom/adobe/customextractor/Util/Media/MediaFormat;->height:I

    iput v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    .line 187
    iget-object v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->customFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iget v3, v3, Lcom/adobe/customextractor/Util/Media/MediaFormat;->rotation:I

    iput v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->rotation:I

    .line 188
    iget-object v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->customFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iget-object v3, v3, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mimeType:Ljava/lang/String;

    .line 189
    const-string/jumbo v3, "ThumbLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rotation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->rotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_1
    if-eq v1, v2, :cond_2

    .line 194
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/ClipExtractor;->selectTrack(I)V

    .line 195
    const/4 v0, 0x1

    .line 198
    :goto_2
    return v0

    .line 197
    :cond_2
    const-string/jumbo v1, "CustomFrameRetriever"

    const-string/jumbo v2, "Could not find the video track"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private pixelsToBitmap([ILjava/nio/ByteOrder;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/high16 v8, 0xff0000

    const v7, 0xff00

    const/high16 v6, -0x1000000

    const/4 v2, 0x0

    .line 387
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    move v0, v2

    .line 388
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 389
    aget v1, p1, v0

    .line 391
    and-int v3, v1, v6

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    .line 392
    and-int v4, v1, v8

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    .line 393
    and-int v5, v1, v7

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    .line 394
    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 395
    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v3

    and-int/lit16 v3, v5, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    and-int/lit16 v3, v4, 0xff

    or-int/2addr v1, v3

    aput v1, p1, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 399
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 400
    aget v1, p1, v0

    .line 402
    and-int v3, v1, v6

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    .line 403
    and-int v4, v1, v8

    ushr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    .line 404
    and-int v5, v1, v7

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    .line 405
    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 406
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    and-int/lit16 v3, v5, 0xff

    or-int/2addr v1, v3

    aput v1, p1, v0

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    :cond_1
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputWidth:I

    iget v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    iget v3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputWidth:I

    iget v6, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputWidth:I

    iget v7, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputHeight:I

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 411
    return-object v0
.end method

.method private recycleThumbnail()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->thumbnail:Landroid/graphics/Bitmap;

    .line 156
    :cond_0
    return-void
.end method

.method private releaseDecoder()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mediaCodec:Landroid/media/MediaCodec;

    .line 171
    :cond_1
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string/jumbo v1, "ThumbLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ReleaseDecoder mediaCodec.stop in illegal state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private releaseInternal()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->releaseDecoder()V

    .line 145
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->glCore:Lcom/adobe/customextractor/FrameResources/GLCore;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->glCore:Lcom/adobe/customextractor/FrameResources/GLCore;

    invoke-virtual {v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->release()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->glCore:Lcom/adobe/customextractor/FrameResources/GLCore;

    .line 149
    :cond_0
    return-void
.end method

.method private saveBitmapToFile()V
    .locals 4

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/thumb1.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 433
    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->thumbnail:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    const-string/jumbo v1, "ThumbLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SaveBitmap fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private seekTo(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfOutputStream:Z

    .line 334
    iput-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfInputStream:Z

    .line 335
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/ClipExtractor;->seekTo(J)V

    .line 336
    return-void
.end method

.method private setupGl()V
    .locals 3

    .prologue
    .line 120
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputWidth:I

    .line 122
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputHeight:I

    .line 128
    :goto_0
    new-instance v0, Lcom/adobe/customextractor/FrameResources/GLCore;

    invoke-direct {v0}, Lcom/adobe/customextractor/FrameResources/GLCore;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->glCore:Lcom/adobe/customextractor/FrameResources/GLCore;

    .line 129
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->glCore:Lcom/adobe/customextractor/FrameResources/GLCore;

    iget v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputWidth:I

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/customextractor/FrameResources/GLCore;->createMemSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->glCore:Lcom/adobe/customextractor/FrameResources/GLCore;

    invoke-virtual {v1, v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 131
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->glCore:Lcom/adobe/customextractor/FrameResources/GLCore;

    invoke-virtual {v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->createSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mSurface:Landroid/view/Surface;

    .line 132
    return-void

    .line 125
    :cond_1
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputWidth:I

    .line 126
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->outputHeight:I

    goto :goto_0
.end method

.method private transformClipDimensions()V
    .locals 5

    .prologue
    const v4, 0xffffff0

    const/4 v3, 0x1

    .line 203
    const-string/jumbo v0, "ThumbLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "configure w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    :cond_0
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    sget v1, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->TARGET_HEIGHT:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    sget v1, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->TARGET_WIDTH:I

    if-le v0, v1, :cond_2

    .line 206
    :cond_1
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    .line 207
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    .line 208
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    rem-int/lit8 v0, v0, 0x2

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_0

    .line 212
    :cond_2
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    rem-int/lit8 v0, v0, 0x2

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_4

    .line 213
    :cond_3
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    .line 214
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    .line 221
    :cond_4
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    add-int/lit8 v0, v0, 0xf

    and-int/2addr v0, v4

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    .line 222
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    add-int/lit8 v0, v0, 0xf

    and-int/2addr v0, v4

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    .line 224
    const-string/jumbo v0, "ThumbLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "configure new w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->format:Landroid/media/MediaFormat;

    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 226
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->format:Landroid/media/MediaFormat;

    const-string/jumbo v1, "height"

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 227
    const-string/jumbo v0, "ThumbLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "configure new w "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->sourceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method


# virtual methods
.method public getFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->rotation:I

    return v0
.end method

.method public prepare(JLcom/adobe/customextractor/ClipExtractor;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-object p3, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractor:Lcom/adobe/customextractor/ClipExtractor;

    .line 72
    sput p5, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->TARGET_HEIGHT:I

    .line 73
    sput p4, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->TARGET_WIDTH:I

    .line 74
    iput-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->decoderInit:Z

    .line 75
    iput-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->frameBuffered:Z

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->thumbnail:Landroid/graphics/Bitmap;

    .line 78
    const-string/jumbo v1, "ThumbLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CustomFrameRet:prepare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string/jumbo v1, "ThumbLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CustomFrameRet:targetH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " targetW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->initExtractor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractorInit:Z

    .line 82
    iget-boolean v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->extractorInit:Z

    if-eqz v1, :cond_3

    .line 83
    const-string/jumbo v1, "ThumbLog"

    const-string/jumbo v2, "Prepare:ExtactorInit done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->transformClipDimensions()V

    .line 85
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->setupGl()V

    .line 86
    invoke-direct {p0, v0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->initDecoder(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->decoderInit:Z

    .line 87
    iget-boolean v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->decoderInit:Z

    if-eqz v1, :cond_2

    .line 88
    const-string/jumbo v1, "ThumbLog"

    const-string/jumbo v2, "DecoderInit true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->seekTo(J)V

    .line 90
    iput-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->frameBuffered:Z

    .line 91
    :goto_0
    iget-boolean v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->frameBuffered:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->endOfOutputStream:Z

    if-nez v1, :cond_0

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->feedInput()V

    .line 94
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->getDecodedOutput()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    const-string/jumbo v2, "ThumbLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal State codec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->decoderInit:Z

    .line 99
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->releaseInternal()V

    .line 116
    :goto_1
    return v0

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->frameBuffered:Z

    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo v0, "ThumbLog"

    const-string/jumbo v1, "Found frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->frameBuffered:Z

    goto :goto_1

    .line 109
    :cond_2
    const-string/jumbo v1, "ThumbLog"

    const-string/jumbo v2, "Could not init decoder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->releaseInternal()V

    goto :goto_1

    .line 114
    :cond_3
    const-string/jumbo v1, "ThumbLog"

    const-string/jumbo v2, "Prepare:Could not prepare extractor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->releaseInternal()V

    .line 141
    return-void
.end method
