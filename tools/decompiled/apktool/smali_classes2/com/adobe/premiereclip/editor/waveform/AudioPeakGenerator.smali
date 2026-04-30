.class public Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;
.super Ljava/lang/Object;
.source "AudioPeakGenerator.java"


# static fields
.field private static final AUDIO_BUFFER_SIZE:I = 0x10000

.field private static final DEFAULT_BLOCK_SIZE:I = 0x400

.field private static final NUM_CHANNELS:I = 0x2

.field public static final PER_BITMAP_SIZE:I = 0xc8


# instance fields
.field private cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

.field private final listenerLock:Ljava/lang/Object;

.field private ready:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

.field private waveListener:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->listenerLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;-><init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    .line 61
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;-><init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->ready:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    .line 62
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->generateWaveform(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->onPeakDataGenerated(Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->onFullPeakDataGenerated(Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->listenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;)Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->waveListener:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->getFullAudioPeakData(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->getAudioPeakData(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V

    return-void
.end method

.method private addMaxPeak([[FILcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 376
    new-array v4, v6, [F

    move v3, v2

    .line 377
    :goto_0
    if-ge v3, v6, :cond_2

    .line 378
    const v0, -0x800001

    move v1, v2

    .line 379
    :goto_1
    if-ge v1, p2, :cond_1

    .line 380
    aget-object v5, p1, v3

    aget v5, v5, v1

    cmpl-float v5, v5, v0

    if-lez v5, :cond_0

    .line 381
    aget-object v0, p1, v3

    aget v0, v0, v1

    .line 379
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 384
    :cond_1
    aput v0, v4, v3

    .line 377
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {p3}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    return-void
.end method

.method private addMinPeak([[FILcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 391
    new-array v4, v6, [F

    move v3, v2

    .line 392
    :goto_0
    if-ge v3, v6, :cond_2

    .line 393
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    move v1, v2

    .line 394
    :goto_1
    if-ge v1, p2, :cond_1

    .line 395
    aget-object v5, p1, v3

    aget v5, v5, v1

    cmpg-float v5, v5, v0

    if-gez v5, :cond_0

    .line 396
    aget-object v0, p1, v3

    aget v0, v0, v1

    .line 394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 399
    :cond_1
    aput v0, v4, v3

    .line 392
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {p3}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method private displayAudioPeaks([[FLcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 20

    .prologue
    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    const-string/jumbo v2, "AudioPeaks"

    const-string/jumbo v3, "displaypeaks cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    .line 590
    :goto_0
    return-void

    .line 492
    :cond_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    .line 493
    move-object/from16 v0, p2

    iget v4, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startY:F

    .line 494
    move-object/from16 v0, p2

    iget v5, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    .line 495
    move-object/from16 v0, p2

    iget v6, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endY:F

    .line 497
    move-object/from16 v0, p3

    iget v2, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    move-object/from16 v0, p3

    iget v7, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    sub-float/2addr v2, v7

    float-to-int v7, v2

    .line 498
    move-object/from16 v0, p3

    iget v2, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endY:F

    move-object/from16 v0, p3

    iget v8, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startY:F

    sub-float/2addr v2, v8

    float-to-int v0, v2

    move/from16 v16, v0

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, "waveform"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 501
    invoke-static/range {v17 .. v17}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 502
    if-nez v2, :cond_a

    .line 503
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 504
    move/from16 v0, v16

    invoke-static {v7, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 505
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 506
    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0xff

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 508
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 509
    const/16 v8, 0xff

    const/16 v9, 0xb4

    const/16 v10, 0xb4

    const/16 v11, 0xb4

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 510
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 512
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 513
    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 514
    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 515
    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 516
    const/16 v8, 0xff

    const/16 v9, 0xe0

    const/16 v10, 0xe0

    const/16 v11, 0xe0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 519
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 520
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 523
    const/4 v3, 0x0

    move v5, v3

    :goto_1
    const/4 v3, 0x2

    if-ge v5, v3, :cond_3

    move v3, v15

    .line 524
    :goto_2
    move/from16 v0, v18

    if-ge v3, v0, :cond_2

    .line 525
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v8}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 526
    const-string/jumbo v2, "AudioPeaks"

    const-string/jumbo v3, "displaypeaks cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    goto/16 :goto_0

    .line 530
    :cond_1
    sub-int v8, v3, v15

    aget-object v8, p1, v8

    aget v8, v8, v5

    .line 531
    sub-float v9, v6, v4

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    .line 532
    int-to-float v9, v3

    move/from16 v0, v16

    int-to-float v10, v0

    sub-float/2addr v10, v4

    int-to-float v11, v3

    move/from16 v0, v16

    int-to-float v12, v0

    sub-float/2addr v12, v8

    move-object v8, v2

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 523
    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 536
    :cond_3
    const/16 v3, 0xff

    const/16 v5, 0x80

    const/16 v8, 0x80

    const/16 v9, 0x80

    invoke-static {v3, v5, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 537
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 538
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 539
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 540
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 542
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 544
    const/4 v5, 0x0

    .line 545
    const/4 v3, 0x0

    move/from16 v19, v3

    move v3, v5

    move/from16 v5, v19

    :goto_3
    const/4 v8, 0x2

    if-ge v5, v8, :cond_5

    .line 546
    const/4 v8, 0x0

    aget-object v8, p1, v8

    aget v8, v8, v5

    cmpg-float v8, v3, v8

    if-gez v8, :cond_4

    .line 547
    const/4 v3, 0x0

    aget-object v3, p1, v3

    aget v3, v3, v5

    .line 545
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 550
    :cond_5
    sub-float v5, v6, v4

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 552
    int-to-float v5, v15

    move/from16 v0, v16

    int-to-float v8, v0

    sub-float v3, v8, v3

    invoke-virtual {v9, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 554
    add-int/lit8 v3, v15, 0x1

    move v8, v3

    :goto_4
    move/from16 v0, v18

    if-ge v8, v0, :cond_9

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 556
    const-string/jumbo v2, "AudioPeaks"

    const-string/jumbo v3, "displaypeaks cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    goto/16 :goto_0

    .line 560
    :cond_6
    const/4 v5, 0x0

    .line 561
    const/4 v3, 0x0

    move/from16 v19, v3

    move v3, v5

    move/from16 v5, v19

    :goto_5
    const/4 v10, 0x2

    if-ge v5, v10, :cond_8

    .line 562
    sub-int v10, v8, v15

    aget-object v10, p1, v10

    aget v10, v10, v5

    cmpg-float v10, v3, v10

    if-gez v10, :cond_7

    .line 563
    sub-int v3, v8, v15

    aget-object v3, p1, v3

    aget v3, v3, v5

    .line 561
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 566
    :cond_8
    sub-float v5, v6, v4

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 567
    int-to-float v5, v8

    move/from16 v0, v16

    int-to-float v10, v0

    sub-float v3, v10, v3

    invoke-virtual {v9, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 554
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_4

    .line 570
    :cond_9
    invoke-virtual {v2, v9, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 572
    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 573
    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v2, v14

    .line 576
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 577
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    .line 580
    new-instance v2, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v2, v0, v3, v1}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$4;-><init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private displayFullAudioPeaks([[F[[FLcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 26

    .prologue
    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    const-string/jumbo v3, "FullAudioPeaks"

    const-string/jumbo v4, "displaypeaks cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    .line 692
    :goto_0
    return-void

    .line 600
    :cond_0
    const-string/jumbo v3, "FullAudioPeak"

    const-string/jumbo v4, "start drawing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    move-object/from16 v0, p3

    iget v0, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    move/from16 v16, v0

    .line 602
    move-object/from16 v0, p3

    iget v3, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startY:F

    .line 603
    move-object/from16 v0, p3

    iget v0, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    move/from16 v17, v0

    .line 604
    move-object/from16 v0, p3

    iget v4, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endY:F

    .line 606
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 607
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 608
    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 609
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 610
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 611
    const/16 v5, 0xff

    const/16 v6, 0x70

    const/16 v7, 0x37

    const/16 v9, 0xa1

    invoke-static {v5, v6, v7, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 612
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 614
    sub-float v5, v17, v16

    float-to-int v0, v5

    move/from16 v18, v0

    .line 615
    sub-float v3, v4, v3

    float-to-int v0, v3

    move/from16 v19, v0

    .line 617
    div-int/lit8 v3, v19, 0x2

    int-to-float v9, v3

    .line 618
    move/from16 v0, v19

    int-to-float v3, v0

    const v4, 0x3ea3d70a    # 0.32f

    mul-float v20, v3, v4

    .line 620
    move-object/from16 v0, p4

    iget v3, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    move-object/from16 v0, p4

    iget v4, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    sub-float/2addr v3, v4

    move/from16 v0, v18

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    .line 621
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p6 .. p6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "waveform"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 624
    const/4 v4, 0x0

    .line 626
    const/4 v3, 0x0

    move v14, v3

    move v15, v4

    :goto_1
    move/from16 v0, v21

    if-ge v14, v0, :cond_7

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 628
    invoke-static/range {v24 .. v24}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 630
    if-nez v3, :cond_6

    .line 631
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 632
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 633
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 635
    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 637
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 638
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v25

    .line 640
    const/4 v4, 0x0

    move v13, v4

    :goto_2
    const/4 v4, 0x2

    if-ge v13, v4, :cond_5

    move v11, v12

    .line 641
    :goto_3
    move/from16 v0, v25

    if-ge v11, v0, :cond_4

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 643
    const-string/jumbo v3, "FullAudioPeaks"

    const-string/jumbo v4, "displaypeaks cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    goto/16 :goto_0

    .line 647
    :cond_1
    add-int v4, v15, v11

    sub-int/2addr v4, v12

    aget-object v4, p1, v4

    aget v4, v4, v13

    .line 648
    add-int v5, v15, v11

    sub-int/2addr v5, v12

    aget-object v5, p2, v5

    aget v5, v5, v13

    .line 650
    mul-float v4, v4, v20

    .line 651
    mul-float v6, v5, v20

    .line 655
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    const/4 v5, 0x0

    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    .line 656
    add-float v5, v9, v4

    .line 657
    add-float v7, v9, v6

    .line 666
    :goto_4
    int-to-float v4, v11

    int-to-float v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 641
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_3

    .line 658
    :cond_2
    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const/4 v4, 0x0

    cmpg-float v4, v6, v4

    if-gez v4, :cond_3

    .line 659
    const-string/jumbo v3, "FullPixels"

    const-string/jumbo v4, "error in values"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    goto/16 :goto_0

    .line 664
    :cond_3
    sub-float v7, v9, v6

    move v5, v9

    goto :goto_4

    .line 640
    :cond_4
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_2

    .line 669
    :cond_5
    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v6, v0

    move v5, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 671
    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 672
    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v3, v10

    .line 674
    :cond_6
    add-int v4, v15, v18

    .line 675
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    const-string/jumbo v3, "FullAudioBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bitmap : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    move v15, v4

    goto/16 :goto_1

    .line 680
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    .line 682
    new-instance v3, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p6

    invoke-direct {v3, v0, v1, v2}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$5;-><init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private declared-synchronized generateWaveform(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V
    .locals 8

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setNotReadyState()V

    .line 698
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v6

    .line 700
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->getWaveformBitmapsIfAvailable(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :goto_0
    monitor-exit p0

    return-void

    .line 705
    :cond_0
    :try_start_1
    const-string/jumbo v0, "FullAudioPeaks"

    const-string/jumbo v1, "starting file read"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string/jumbo v7, "waveform"

    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$6;-><init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V

    invoke-static {v6, v7, v0}, Lcom/adobe/premiereclip/util/JsonReader;->readDataFromJSONFile(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/util/JsonReader$IDataReadHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAudioPeakData(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V
    .locals 19

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    .line 233
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/adobe/decoderfactory/AudioDecoderCache;->Instance()Lcom/adobe/decoderfactory/AudioDecoderCache;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/decoderfactory/AudioDecoderCache;->getDecoder(ILjava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;

    move-result-object v8

    .line 120
    if-nez v8, :cond_1

    .line 121
    const-string/jumbo v2, "AudioPeaks"

    const-string/jumbo v3, "error creating decoder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v2

    .line 230
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    goto :goto_0

    .line 125
    :cond_1
    const-wide/16 v2, 0x0

    :try_start_1
    invoke-interface {v8, v2, v3}, Lcom/adobe/decoderfactory/IAudioDecoder;->seekTo(J)V

    .line 126
    invoke-interface {v8}, Lcom/adobe/decoderfactory/IAudioDecoder;->getOutputInfo()Lcom/adobe/decoderfactory/AudioInfo;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getChannels()I

    move-result v9

    .line 129
    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v3

    .line 130
    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getDuration()J

    move-result-wide v4

    .line 131
    int-to-double v2, v3

    long-to-double v6, v4

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v10

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    .line 133
    const/16 v2, 0x400

    .line 134
    const-wide/32 v6, 0x4c4b40

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 135
    const/16 v2, 0x80

    move v6, v2

    .line 140
    :goto_1
    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 141
    new-instance v14, Lcom/adobe/decoderfactory/AudioReadData;

    invoke-direct {v14, v2}, Lcom/adobe/decoderfactory/AudioReadData;-><init>(Ljava/nio/ByteBuffer;)V

    .line 143
    const-wide/16 v10, 0x0

    .line 144
    int-to-long v2, v6

    div-long v4, v12, v2

    .line 146
    const-string/jumbo v2, "AudioPeaks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "audio decoding : no of samples : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "  no of blocks in sample data : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " no of channels : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v2, 0x2

    filled-new-array {v2, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 149
    const/4 v3, 0x0

    .line 151
    new-instance v7, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

    const/4 v12, 0x2

    invoke-direct {v7, v12, v4, v5}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;-><init>(IJ)V

    .line 153
    :goto_2
    invoke-interface {v8}, Lcom/adobe/decoderfactory/IAudioDecoder;->isEOF()Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v4

    if-nez v4, :cond_c

    .line 154
    invoke-interface {v8, v14}, Lcom/adobe/decoderfactory/IAudioDecoder;->readNextSamples(Lcom/adobe/decoderfactory/AudioReadData;)V

    .line 155
    invoke-virtual {v14}, Lcom/adobe/decoderfactory/AudioReadData;->getNoOfSamples()J

    move-result-wide v12

    .line 156
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-lez v4, :cond_10

    .line 158
    invoke-virtual {v14}, Lcom/adobe/decoderfactory/AudioReadData;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 159
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v15

    .line 160
    const/4 v4, 0x1

    if-le v9, v4, :cond_7

    .line 161
    const/4 v4, 0x0

    move v5, v4

    :goto_3
    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v4, v16, v12

    if-gez v4, :cond_b

    .line 162
    const/4 v4, 0x0

    :goto_4
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v4, v0, :cond_3

    .line 163
    aget-object v16, v2, v4

    invoke-virtual {v15}, Ljava/nio/ShortBuffer;->get()S

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x47000000    # 32768.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    aput v17, v16, v3

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 136
    :cond_2
    const-wide/32 v6, 0x989680

    cmp-long v3, v4, v6

    if-gez v3, :cond_11

    .line 137
    const/16 v2, 0x100

    move v6, v2

    goto/16 :goto_1

    .line 165
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 167
    if-ne v3, v6, :cond_5

    .line 168
    if-eqz v2, :cond_4

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->addMaxPeak([[FILcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;)V

    .line 171
    :cond_4
    const/4 v3, 0x0

    .line 174
    :cond_5
    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v16, v9, -0x2

    move/from16 v0, v16

    if-ge v4, v0, :cond_6

    .line 175
    invoke-virtual {v15}, Ljava/nio/ShortBuffer;->get()S

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 161
    :cond_6
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 179
    :cond_7
    const/4 v4, 0x0

    move v5, v4

    :goto_6
    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v4, v16, v12

    if-gez v4, :cond_b

    .line 180
    invoke-virtual {v15}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    int-to-float v4, v4

    const/high16 v16, 0x47000000    # 32768.0f

    div-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 182
    const/4 v4, 0x0

    :goto_7
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v4, v0, :cond_8

    .line 183
    aget-object v17, v2, v4

    aput v16, v17, v3

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 185
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 187
    if-ne v3, v6, :cond_a

    .line 188
    if-eqz v2, :cond_9

    .line 189
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->addMaxPeak([[FILcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;)V

    .line 191
    :cond_9
    const/4 v3, 0x0

    .line 179
    :cond_a
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6

    .line 195
    :cond_b
    add-long v4, v10, v12

    :goto_8
    move-wide v10, v4

    .line 197
    goto/16 :goto_2

    .line 199
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v2

    if-nez v2, :cond_f

    .line 200
    invoke-virtual {v7}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v8, v2

    .line 201
    long-to-int v2, v8

    mul-int/lit8 v2, v2, 0x2

    new-array v12, v2, [F

    .line 202
    const/4 v2, 0x0

    move v4, v2

    :goto_9
    int-to-long v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_e

    .line 203
    invoke-virtual {v7}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 204
    const/4 v3, 0x0

    :goto_a
    const/4 v5, 0x2

    if-ge v3, v5, :cond_d

    .line 205
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    .line 206
    aget v6, v2, v3

    aput v6, v12, v5

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 202
    :cond_d
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_9

    .line 209
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v13, "waveform"

    new-instance v2, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$2;-><init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    invoke-static {v12, v9, v13, v2}, Lcom/adobe/premiereclip/util/JsonWriter;->writeDataToJsonFile([FLjava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;)V

    .line 223
    const-string/jumbo v2, "AudioPeaks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "audio decoding : no of peaks in clip : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " totalSamples : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 226
    :cond_f
    const-string/jumbo v2, "AudioPeaks"

    const-string/jumbo v3, "audio decoding cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_10
    move-wide v4, v10

    goto/16 :goto_8

    :cond_11
    move v6, v2

    goto/16 :goto_1
.end method

.method private getFullAudioPeakData(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V
    .locals 20

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    .line 373
    :goto_0
    return-void

    .line 242
    :cond_0
    const-string/jumbo v2, "FullAudioPeaks"

    const-string/jumbo v3, "will start decoding"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_0
    invoke-static {}, Lcom/adobe/decoderfactory/AudioDecoderCache;->Instance()Lcom/adobe/decoderfactory/AudioDecoderCache;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/decoderfactory/AudioDecoderCache;->getDecoder(ILjava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;

    move-result-object v11

    .line 246
    if-nez v11, :cond_1

    .line 247
    const-string/jumbo v2, "FullAudioPeaks"

    const-string/jumbo v3, "error creating decoder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v2

    .line 370
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    goto :goto_0

    .line 251
    :cond_1
    const-wide/16 v2, 0x0

    :try_start_1
    invoke-interface {v11, v2, v3}, Lcom/adobe/decoderfactory/IAudioDecoder;->seekTo(J)V

    .line 252
    invoke-interface {v11}, Lcom/adobe/decoderfactory/IAudioDecoder;->getOutputInfo()Lcom/adobe/decoderfactory/AudioInfo;

    move-result-object v2

    .line 254
    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getChannels()I

    move-result v12

    .line 255
    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v3

    .line 256
    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getDuration()J

    move-result-wide v4

    .line 257
    int-to-double v2, v3

    long-to-double v6, v4

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 259
    const/16 v2, 0x400

    .line 260
    const-wide/32 v8, 0x4c4b40

    cmp-long v3, v4, v8

    if-gez v3, :cond_3

    .line 261
    const/16 v2, 0x80

    move v10, v2

    .line 266
    :goto_1
    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 267
    new-instance v13, Lcom/adobe/decoderfactory/AudioReadData;

    invoke-direct {v13, v2}, Lcom/adobe/decoderfactory/AudioReadData;-><init>(Ljava/nio/ByteBuffer;)V

    .line 269
    const-wide/16 v4, 0x0

    .line 270
    int-to-long v2, v10

    div-long v14, v6, v2

    .line 272
    const-string/jumbo v2, "FullAudioPeaks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "audio decoding : no of samples : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "  no of blocks in sample data : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " no of channels : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, 0x2

    filled-new-array {v2, v10}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 275
    const/4 v3, 0x0

    .line 277
    new-instance v7, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

    const/4 v6, 0x2

    invoke-direct {v7, v6, v14, v15}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;-><init>(IJ)V

    .line 278
    new-instance v8, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;

    const/4 v6, 0x2

    invoke-direct {v8, v6, v14, v15}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;-><init>(IJ)V

    .line 280
    :cond_2
    :goto_2
    invoke-interface {v11}, Lcom/adobe/decoderfactory/IAudioDecoder;->isEOF()Z

    move-result v6

    if-nez v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v6}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v6

    if-nez v6, :cond_d

    .line 281
    invoke-interface {v11, v13}, Lcom/adobe/decoderfactory/IAudioDecoder;->readNextSamples(Lcom/adobe/decoderfactory/AudioReadData;)V

    .line 282
    invoke-virtual {v13}, Lcom/adobe/decoderfactory/AudioReadData;->getNoOfSamples()J

    move-result-wide v14

    .line 283
    const-wide/16 v16, 0x0

    cmp-long v6, v14, v16

    if-lez v6, :cond_2

    .line 285
    invoke-virtual {v13}, Lcom/adobe/decoderfactory/AudioReadData;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 286
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v16

    .line 287
    const/4 v6, 0x1

    if-le v12, v6, :cond_8

    .line 288
    const/4 v6, 0x0

    move v9, v6

    :goto_3
    int-to-long v0, v9

    move-wide/from16 v18, v0

    cmp-long v6, v18, v14

    if-gez v6, :cond_c

    .line 289
    const/4 v6, 0x0

    :goto_4
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v6, v0, :cond_4

    .line 290
    aget-object v17, v2, v6

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ShortBuffer;->get()S

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x47000000    # 32768.0f

    div-float v18, v18, v19

    aput v18, v17, v3

    .line 289
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 262
    :cond_3
    const-wide/32 v8, 0x989680

    cmp-long v3, v4, v8

    if-gez v3, :cond_13

    .line 263
    const/16 v2, 0x100

    move v10, v2

    goto/16 :goto_1

    .line 292
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 294
    if-ne v3, v10, :cond_6

    .line 295
    if-eqz v2, :cond_5

    .line 296
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v7}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->addMinPeak([[FILcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;)V

    .line 297
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v8}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->addMaxPeak([[FILcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;)V

    .line 299
    :cond_5
    const/4 v3, 0x0

    .line 302
    :cond_6
    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v17, v12, -0x2

    move/from16 v0, v17

    if-ge v6, v0, :cond_7

    .line 303
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ShortBuffer;->get()S

    .line 302
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 288
    :cond_7
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_3

    .line 307
    :cond_8
    const/4 v6, 0x0

    move v9, v6

    :goto_6
    int-to-long v0, v9

    move-wide/from16 v18, v0

    cmp-long v6, v18, v14

    if-gez v6, :cond_c

    .line 308
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ShortBuffer;->get()S

    move-result v6

    int-to-float v6, v6

    const/high16 v17, 0x47000000    # 32768.0f

    div-float v17, v6, v17

    .line 310
    const/4 v6, 0x0

    :goto_7
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v6, v0, :cond_9

    .line 311
    aget-object v18, v2, v6

    aput v17, v18, v3

    .line 310
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 313
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 315
    if-ne v3, v10, :cond_b

    .line 316
    if-eqz v2, :cond_a

    .line 317
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v7}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->addMinPeak([[FILcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;)V

    .line 318
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v8}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->addMaxPeak([[FILcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;)V

    .line 320
    :cond_a
    const/4 v3, 0x0

    .line 307
    :cond_b
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_6

    .line 324
    :cond_c
    add-long/2addr v4, v14

    goto/16 :goto_2

    .line 328
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v2

    if-nez v2, :cond_12

    .line 329
    invoke-virtual {v7}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 330
    invoke-virtual {v8}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 332
    add-int v2, v5, v6

    mul-int/lit8 v2, v2, 0x2

    new-array v10, v2, [F

    .line 333
    const/4 v2, 0x0

    move v4, v2

    :goto_8
    if-ge v4, v5, :cond_f

    .line 334
    invoke-virtual {v7}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 335
    const/4 v3, 0x0

    :goto_9
    const/4 v9, 0x2

    if-ge v3, v9, :cond_e

    .line 336
    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v9, v3

    .line 337
    aget v11, v2, v3

    aput v11, v10, v9

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 333
    :cond_e
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_8

    :cond_f
    move v4, v5

    .line 340
    :goto_a
    add-int v2, v6, v5

    if-ge v4, v2, :cond_11

    .line 341
    invoke-virtual {v8}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    sub-int v3, v4, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 342
    const/4 v3, 0x0

    :goto_b
    const/4 v9, 0x2

    if-ge v3, v9, :cond_10

    .line 343
    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v9, v3

    .line 344
    aget v11, v2, v3

    aput v11, v10, v9

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 340
    :cond_10
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_a

    .line 348
    :cond_11
    const-string/jumbo v2, "FullAudioPeaks"

    const-string/jumbo v3, "got peaks, starting file write"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "waveform"

    new-instance v2, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$3;-><init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    invoke-static {v10, v11, v12, v2}, Lcom/adobe/premiereclip/util/JsonWriter;->writeDataToJsonFile([FLjava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/util/JsonWriter$IDataWriteHandler;)V

    goto/16 :goto_0

    .line 366
    :cond_12
    const-string/jumbo v2, "FullAudioPeaks"

    const-string/jumbo v3, "audio decoding cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_13
    move v10, v2

    goto/16 :goto_1
.end method

.method private getMultipleWaveformBitmapsIfAvailable(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 799
    iget v1, p2, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    iget v2, p2, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 800
    iget v2, p3, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    iget v3, p3, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    float-to-int v2, v1

    .line 801
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "waveform"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v1, v0

    .line 804
    :goto_0
    if-ge v1, v2, :cond_1

    .line 805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 806
    invoke-static {v5}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 807
    if-nez v5, :cond_0

    .line 823
    :goto_1
    return v0

    .line 810
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 813
    :cond_1
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$8;

    invoke-direct {v0, p0, v3, p1}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$8;-><init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 823
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private getPeakPixels(Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;[[FI)V
    .locals 11

    .prologue
    .line 406
    if-eqz p1, :cond_0

    .line 407
    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v8, v0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v10}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->getPeakPixels(Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;[[FIJJJZ)V

    .line 409
    :cond_0
    return-void
.end method

.method private getPeakPixels(Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;[[FIJJJZ)V
    .locals 26

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->getData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    const-string/jumbo v2, "FullAudioPeaks"

    const-string/jumbo v3, "getpeakpixels cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    .line 483
    :cond_0
    return-void

    .line 419
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v8, v2

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getNumChannels()I

    move-result v14

    .line 421
    sub-long v2, p6, p4

    .line 422
    mul-long/2addr v2, v8

    long-to-double v2, v2

    move-wide/from16 v0, p8

    long-to-double v4, v0

    div-double/2addr v2, v4

    .line 424
    move-wide/from16 v0, p4

    long-to-double v4, v0

    move-wide/from16 v0, p8

    long-to-double v6, v0

    div-double v16, v4, v6

    .line 425
    move/from16 v0, p3

    int-to-double v4, v0

    div-double v18, v2, v4

    .line 427
    const-string/jumbo v2, "FullAudioPeaks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "num pixels : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " num blocks :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v14, :cond_0

    .line 431
    long-to-double v2, v8

    mul-double v12, v16, v2

    .line 432
    add-double v4, v12, v18

    .line 434
    if-eqz p10, :cond_4

    .line 435
    const/4 v2, 0x0

    move v10, v2

    move-wide v2, v12

    move-wide v12, v4

    :goto_1
    move/from16 v0, p3

    if-ge v10, v0, :cond_7

    .line 436
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 437
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    .line 438
    cmp-long v6, v4, v8

    if-lez v6, :cond_b

    move-wide v6, v8

    .line 441
    :goto_2
    const/4 v4, 0x0

    .line 442
    sub-long v20, v6, v2

    const-wide/16 v22, 0x0

    cmp-long v5, v20, v22

    if-lez v5, :cond_2

    move-wide/from16 v24, v2

    move v3, v4

    move-wide/from16 v4, v24

    .line 443
    :goto_3
    cmp-long v2, v4, v6

    if-gez v2, :cond_3

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    long-to-int v15, v4

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    aget v2, v2, v11

    .line 445
    cmpg-float v15, v3, v2

    if-gez v15, :cond_a

    .line 443
    :goto_4
    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    move v3, v2

    goto :goto_3

    .line 451
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v4

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    aget v3, v2, v11

    .line 453
    :cond_3
    aget-object v2, p2, v10

    aput v3, v2, v11

    .line 455
    add-double v4, v12, v18

    .line 435
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-wide v2, v12

    move-wide v12, v4

    goto :goto_1

    .line 459
    :cond_4
    const/4 v2, 0x0

    move v10, v2

    move-wide v2, v12

    move-wide v12, v4

    :goto_5
    move/from16 v0, p3

    if-ge v10, v0, :cond_7

    .line 460
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 461
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    .line 462
    cmp-long v6, v4, v8

    if-lez v6, :cond_9

    move-wide v6, v8

    .line 465
    :goto_6
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 466
    sub-long v20, v6, v2

    const-wide/16 v22, 0x0

    cmp-long v5, v20, v22

    if-lez v5, :cond_5

    move-wide/from16 v24, v2

    move v3, v4

    move-wide/from16 v4, v24

    .line 467
    :goto_7
    cmp-long v2, v4, v6

    if-gez v2, :cond_6

    .line 468
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    long-to-int v15, v4

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    aget v2, v2, v11

    .line 469
    cmpl-float v15, v3, v2

    if-lez v15, :cond_8

    .line 467
    :goto_8
    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    move v3, v2

    goto :goto_7

    .line 475
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v4

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    aget v3, v2, v11

    .line 477
    :cond_6
    aget-object v2, p2, v10

    aput v3, v2, v11

    .line 479
    add-double v4, v12, v18

    .line 459
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-wide v2, v12

    move-wide v12, v4

    goto :goto_5

    .line 429
    :cond_7
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_0

    :cond_8
    move v2, v3

    goto :goto_8

    :cond_9
    move-wide v6, v4

    goto :goto_6

    :cond_a
    move v2, v3

    goto/16 :goto_4

    :cond_b
    move-wide v6, v4

    goto/16 :goto_2
.end method

.method private getSingleWaveformBitmapIfAvailable(Lcom/adobe/premiereclip/project/sequence/Clip;Landroid/os/Handler;)Z
    .locals 2

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "waveform"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_0

    .line 779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 780
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;

    invoke-direct {v0, p0, v1, p1}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$7;-><init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 792
    const/4 v0, 0x1

    .line 794
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWaveformBitmapsIfAvailable(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)Z
    .locals 1

    .prologue
    .line 768
    instance-of v0, p1, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    if-eqz v0, :cond_0

    .line 769
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->getMultipleWaveformBitmapsIfAvailable(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)Z

    move-result v0

    .line 771
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->getSingleWaveformBitmapIfAvailable(Lcom/adobe/premiereclip/project/sequence/Clip;Landroid/os/Handler;)Z

    move-result v0

    goto :goto_0
.end method

.method private onFullPeakDataGenerated(Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 17

    .prologue
    .line 849
    move-object/from16 v0, p2

    iget v2, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    move-object/from16 v0, p2

    iget v3, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 850
    const-string/jumbo v2, "FullAudioPeaks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "   endx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget v4, v0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    if-gtz v5, :cond_0

    .line 853
    invoke-direct/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    .line 863
    :goto_0
    return-void

    .line 856
    :cond_0
    const/4 v2, 0x2

    filled-new-array {v5, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 857
    const-wide/16 v6, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v8, v2

    invoke-virtual/range {p4 .. p4}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v10, v2

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    invoke-direct/range {v2 .. v12}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->getPeakPixels(Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;[[FIJJJZ)V

    .line 859
    const/4 v2, 0x2

    filled-new-array {v5, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    .line 860
    const-wide/16 v10, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v12, v2

    invoke-virtual/range {p5 .. p5}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v14, v2

    const/16 v16, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move v9, v5

    invoke-direct/range {v6 .. v16}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->getPeakPixels(Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;[[FIJJJZ)V

    move-object/from16 v6, p0

    move-object v7, v4

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p6

    .line 862
    invoke-direct/range {v6 .. v12}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->displayFullAudioPeaks([[F[[FLcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    goto :goto_0
.end method

.method private onPeakDataGenerated(Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 6

    .prologue
    .line 829
    iget v0, p1, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    iget v1, p1, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 830
    const-string/jumbo v1, "AudioPeaks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startx : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   endx : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    if-eqz p4, :cond_0

    .line 832
    const-string/jumbo v1, "AudioPeaks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peak data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  channels : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->getNumChannels()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_0
    if-gtz v0, :cond_1

    .line 836
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->setReadyState()V

    .line 843
    :goto_0
    return-void

    .line 839
    :cond_1
    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    .line 840
    invoke-direct {p0, p4, v1, v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->getPeakPixels(Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;[[FI)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    .line 842
    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->displayAudioPeaks([[FLcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    goto :goto_0
.end method

.method private setNotReadyState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->ready:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->setData(Z)V

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->setData(Z)V

    .line 109
    return-void
.end method

.method private setReadyState()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->setData(Z)V

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->ready:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->setData(Z)V

    .line 104
    return-void
.end method


# virtual methods
.method public cancelOngoingTask()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->setData(Z)V

    .line 96
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->waveListener:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initPeakGenerator(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;Z)V
    .locals 7

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancel:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$BooleanLock;->setData(Z)V

    .line 70
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->listenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iput-object p5, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->waveListener:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;

    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->waveListener:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;->onWaveformClear()V

    .line 73
    monitor-exit v1

    .line 75
    if-eqz p6, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :cond_1
    const-string/jumbo v0, "FullAudioPeaks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init peaks for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    instance-of v0, p1, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-nez v0, :cond_0

    .line 85
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$1;-><init>(Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
