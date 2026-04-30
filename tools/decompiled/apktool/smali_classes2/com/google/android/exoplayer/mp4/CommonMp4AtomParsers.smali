.class public final Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;
.super Ljava/lang/Object;
.source "CommonMp4AtomParsers.java"


# static fields
.field private static final AC3_BITRATES:[I

.field private static final AC3_CHANNEL_COUNTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->AC3_CHANNEL_COUNTS:[I

    .line 39
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->AC3_BITRATES:[I

    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    return-void
.end method

.method private static parseAc3SpecificBoxFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;
    .locals 5

    .prologue
    .line 609
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 612
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 614
    packed-switch v0, :pswitch_data_0

    .line 626
    const/4 v0, 0x0

    .line 642
    :goto_0
    return-object v0

    .line 616
    :pswitch_0
    const v0, 0xbb80

    .line 629
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 632
    sget-object v1, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->AC3_CHANNEL_COUNTS:[I

    and-int/lit8 v3, v2, 0x38

    shr-int/lit8 v3, v3, 0x3

    aget v1, v1, v3

    .line 635
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_0

    .line 636
    add-int/lit8 v1, v1, 0x1

    .line 640
    :cond_0
    sget-object v3, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->AC3_BITRATES:[I

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    shr-int/lit8 v4, v4, 0x5

    add-int/2addr v2, v4

    aget v3, v3, v2

    .line 642
    new-instance v2, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;-><init>(III)V

    move-object v0, v2

    goto :goto_0

    .line 619
    :pswitch_1
    const v0, 0xac44

    .line 620
    goto :goto_1

    .line 622
    :pswitch_2
    const/16 v0, 0x7d00

    .line 623
    goto :goto_1

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;III)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "III)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            "Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 501
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 502
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 503
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 504
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 505
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v3

    .line 506
    const/4 v4, -0x1

    .line 508
    const/4 v5, 0x0

    .line 509
    const/4 v6, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v7, v0

    .line 511
    :goto_0
    sub-int v0, v7, p2

    if-ge v0, p3, :cond_6

    .line 512
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 513
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v8

    .line 514
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 515
    if-lez v9, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v10, "childAtomSize should be positive"

    invoke-static {v0, v10}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 516
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 517
    sget v10, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mp4a:I

    if-eq p1, v10, :cond_0

    sget v10, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_enca:I

    if-ne p1, v10, :cond_3

    .line 518
    :cond_0
    sget v10, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_esds:I

    if-ne v0, v10, :cond_2

    .line 519
    invoke-static {p0, v8}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)[B

    move-result-object v2

    .line 523
    invoke-static {v2}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->parseAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v5

    .line 524
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 525
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    move-object v0, v6

    .line 545
    :goto_2
    add-int v6, v7, v9

    move v7, v6

    move-object v6, v0

    move-object v11, v2

    move v2, v5

    move-object v5, v11

    .line 546
    goto :goto_0

    .line 515
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 526
    :cond_2
    sget v10, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_sinf:I

    if-ne v0, v10, :cond_a

    .line 527
    invoke-static {p0, v8, v9}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    move-result-object v0

    move-object v11, v5

    move v5, v2

    move-object v2, v11

    goto :goto_2

    .line 529
    :cond_3
    sget v10, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_ac_3:I

    if-ne p1, v10, :cond_5

    sget v10, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_dac3:I

    if-ne v0, v10, :cond_5

    .line 532
    invoke-static {p0, v8}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseAc3SpecificBoxFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_4

    .line 534
    iget v3, v0, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;->sampleRate:I

    .line 535
    iget v2, v0, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;->channelCount:I

    .line 536
    iget v4, v0, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers$Ac3Format;->bitrate:I

    .line 540
    :cond_4
    const/4 v0, 0x0

    move-object v11, v5

    move v5, v2

    move-object v2, v11

    .line 541
    goto :goto_2

    :cond_5
    sget v10, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_ec_3:I

    if-ne p1, v10, :cond_a

    sget v10, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_dec3:I

    if-ne v0, v10, :cond_a

    .line 542
    invoke-static {p0, v8}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseEc3SpecificBoxFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)I

    move-result v3

    .line 543
    const/4 v0, 0x0

    move-object v11, v5

    move v5, v2

    move-object v2, v11

    goto :goto_2

    .line 549
    :cond_6
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_ac_3:I

    if-ne p1, v0, :cond_7

    .line 550
    const-string/jumbo v0, "audio/ac3"

    .line 557
    :goto_3
    if-nez v5, :cond_9

    const/4 v5, 0x0

    :goto_4
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IIIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 560
    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 551
    :cond_7
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_ec_3:I

    if-ne p1, v0, :cond_8

    .line 552
    const-string/jumbo v0, "audio/eac3"

    goto :goto_3

    .line 554
    :cond_8
    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_3

    .line 559
    :cond_9
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    :cond_a
    move-object v0, v6

    move-object v11, v5

    move v5, v2

    move-object v2, v11

    goto :goto_2
.end method

.method private static parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 396
    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 398
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    .line 399
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 404
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 407
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v3, v1, 0x1f

    move v1, v0

    .line 408
    :goto_0
    if-ge v1, v3, :cond_1

    .line 409
    invoke-static {p0}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 412
    :goto_1
    if-ge v0, v1, :cond_2

    .line 413
    invoke-static {p0}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 415
    :cond_2
    return-object v2
.end method

.method private static parseAvcFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            "Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 359
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 361
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 362
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 363
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 364
    const/high16 v4, 0x3f800000    # 1.0f

    .line 365
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 369
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v1, v0

    move-object v5, v6

    .line 370
    :goto_0
    sub-int v0, v1, p1

    if-ge v0, p2, :cond_0

    .line 371
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 372
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 373
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 374
    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    sub-int/2addr v0, p1

    if-ne v0, p2, :cond_1

    .line 390
    :cond_0
    const-string/jumbo v0, "video/avc"

    const/4 v1, -0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 392
    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 378
    :cond_1
    if-lez v8, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v9, "childAtomSize should be positive"

    invoke-static {v0, v9}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 379
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 380
    sget v9, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_avcC:I

    if-ne v0, v9, :cond_3

    .line 381
    invoke-static {p0, v7}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    .line 387
    :goto_2
    add-int/2addr v1, v8

    move-object v6, v0

    .line 388
    goto :goto_0

    .line 378
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 382
    :cond_3
    sget v9, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_sinf:I

    if-ne v0, v9, :cond_4

    .line 383
    invoke-static {p0, v7, v8}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    move-result-object v0

    goto :goto_2

    .line 384
    :cond_4
    sget v9, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_pasp:I

    if-ne v0, v9, :cond_5

    .line 385
    invoke-static {p0, v7}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F

    move-result v4

    move-object v0, v6

    goto :goto_2

    :cond_5
    move-object v0, v6

    goto :goto_2
.end method

.method private static parseEc3SpecificBoxFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)I
    .locals 1

    .prologue
    .line 647
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)[B
    .locals 5

    .prologue
    const/16 v4, 0x7f

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 565
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 567
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 568
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 569
    :goto_0
    if-le v0, v4, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 574
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 575
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    .line 576
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 578
    :cond_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 579
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 581
    :cond_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 582
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 586
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 587
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 588
    :goto_1
    if-le v0, v4, :cond_4

    .line 589
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    goto :goto_1

    .line 591
    :cond_4
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 594
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 595
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 596
    and-int/lit8 v0, v1, 0x7f

    .line 597
    :goto_2
    if-le v1, v4, :cond_5

    .line 598
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 599
    shl-int/lit8 v0, v0, 0x8

    .line 600
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_2

    .line 602
    :cond_5
    new-array v1, v0, [B

    .line 603
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 604
    return-object v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 1

    .prologue
    .line 305
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 306
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 316
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 317
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 318
    invoke-static {v1}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseFullAtomVersion(I)I

    move-result v1

    .line 320
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    .line 320
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parseMp4vFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/MediaFormat;
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 473
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 475
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 476
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 477
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 478
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 480
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 481
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v2, v0

    .line 482
    :goto_0
    sub-int v0, v2, p1

    if-ge v0, p2, :cond_2

    .line 483
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 484
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 485
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 486
    if-lez v7, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v8, "childAtomSize should be positive"

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 488
    sget v8, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_esds:I

    if-ne v0, v8, :cond_0

    .line 489
    invoke-static {p0, v6}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)[B

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_0
    add-int v0, v2, v7

    move v2, v0

    .line 492
    goto :goto_0

    .line 486
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 494
    :cond_2
    const-string/jumbo v0, "video/mp4v-es"

    const/4 v1, -0x1

    invoke-static {v0, v1, v3, v4, v5}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 252
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 255
    invoke-static {v1}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseFullAtomVersion(I)I

    move-result v1

    .line 257
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 259
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    .line 257
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F
    .locals 2

    .prologue
    .line 443
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 444
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 445
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 446
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 451
    add-int/lit8 v2, p1, 0x8

    .line 452
    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_2

    .line 453
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 454
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 455
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 456
    sget v5, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_tenc:I

    if-ne v4, v5, :cond_1

    .line 457
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 458
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 459
    shr-int/lit8 v3, v2, 0x8

    if-ne v3, v0, :cond_0

    .line 460
    :goto_1
    and-int/lit16 v2, v2, 0xff

    .line 461
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 462
    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 463
    new-instance v1, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    move-object v0, v1

    .line 467
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 459
    goto :goto_1

    .line 465
    :cond_1
    add-int/2addr v2, v3

    .line 466
    goto :goto_0

    .line 467
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;
    .locals 5

    .prologue
    .line 420
    add-int/lit8 v1, p1, 0x8

    .line 422
    const/4 v0, 0x0

    .line 423
    :goto_0
    sub-int v2, v1, p1

    if-ge v2, p2, :cond_3

    .line 424
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 425
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 426
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 427
    sget v4, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_frma:I

    if-ne v3, v4, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    .line 436
    :cond_0
    :goto_1
    add-int/2addr v1, v2

    .line 437
    goto :goto_0

    .line 429
    :cond_1
    sget v4, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_schm:I

    if-ne v3, v4, :cond_2

    .line 430
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 431
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    .line 432
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    goto :goto_1

    .line 433
    :cond_2
    sget v4, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_schi:I

    if-ne v3, v4, :cond_0

    .line 434
    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    move-result-object v0

    goto :goto_1

    .line 439
    :cond_3
    return-object v0
.end method

.method public static parseStbl(Lcom/google/android/exoplayer/mp4/Track;Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/mp4/Mp4TrackSampleTable;
    .locals 43

    .prologue
    .line 84
    sget v4, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v30, v0

    .line 88
    sget v4, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v4

    .line 89
    if-nez v4, :cond_0

    .line 90
    sget v4, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v4

    .line 92
    :cond_0
    iget-object v0, v4, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v31, v0

    .line 94
    sget v5, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v5

    iget-object v0, v5, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v32, v0

    .line 96
    sget v5, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v5

    iget-object v0, v5, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v33, v0

    .line 98
    sget v5, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v5

    .line 99
    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 101
    :goto_0
    sget v6, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v6

    .line 102
    if-eqz v6, :cond_6

    iget-object v6, v6, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 105
    :goto_1
    const/16 v7, 0xc

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 106
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 107
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v34

    .line 109
    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v35, v0

    .line 110
    move/from16 v0, v34

    new-array v0, v0, [J

    move-object/from16 v36, v0

    .line 111
    move/from16 v0, v34

    new-array v0, v0, [J

    move-object/from16 v37, v0

    .line 112
    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v38, v0

    .line 115
    const/16 v7, 0xc

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 116
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v39

    .line 118
    const/16 v7, 0xc

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 119
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    add-int/lit8 v24, v7, -0x1

    .line 120
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    const/4 v7, 0x1

    :goto_2
    const-string/jumbo v8, "stsc first chunk must be 1"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 121
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v22

    .line 122
    const/4 v7, 0x4

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 123
    const/4 v7, -0x1

    .line 124
    if-lez v24, :cond_1

    .line 126
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 129
    :cond_1
    const/16 v23, 0x0

    .line 133
    const/16 v8, 0xc

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 134
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    add-int/lit8 v21, v8, -0x1

    .line 135
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 136
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    .line 139
    const/4 v8, 0x0

    .line 140
    const/16 v18, 0x0

    .line 141
    const/16 v17, 0x0

    .line 142
    const/16 v16, 0x0

    .line 143
    if-eqz v6, :cond_1d

    .line 144
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 145
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseFullAtomVersion(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    .line 146
    :goto_3
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    add-int/lit8 v17, v9, -0x1

    .line 147
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    .line 148
    if-eqz v8, :cond_9

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v9

    :goto_4
    move/from16 v16, v9

    move/from16 v29, v8

    .line 151
    :goto_5
    const/4 v9, -0x1

    .line 152
    const/4 v8, 0x0

    .line 153
    if-eqz v5, :cond_2

    .line 154
    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 155
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 156
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 161
    :cond_2
    iget v10, v4, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->type:I

    sget v11, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stco:I

    if-ne v10, v11, :cond_a

    .line 162
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 167
    :goto_6
    const-wide/16 v14, 0x0

    .line 168
    const/4 v13, 0x0

    move-wide/from16 v26, v14

    move/from16 v25, v20

    move/from16 v28, v22

    move/from16 v20, v8

    move/from16 v14, v22

    move/from16 v15, v24

    move/from16 v24, v13

    move v13, v7

    move/from16 v42, v19

    move/from16 v19, v21

    move/from16 v21, v9

    move-wide v8, v10

    move/from16 v11, v23

    move/from16 v10, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v42

    :goto_7
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_10

    .line 169
    aput-wide v8, v37, v24

    .line 170
    if-nez v12, :cond_b

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    :goto_8
    aput v7, v35, v24

    .line 171
    int-to-long v0, v10

    move-wide/from16 v22, v0

    add-long v22, v22, v26

    aput-wide v22, v36, v24

    .line 174
    if-nez v5, :cond_c

    const/4 v7, 0x1

    :goto_9
    aput v7, v38, v24

    .line 175
    move/from16 v0, v24

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 176
    const/4 v7, 0x1

    aput v7, v38, v24

    .line 177
    add-int/lit8 v7, v20, -0x1

    .line 178
    if-lez v7, :cond_1b

    .line 179
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v22, v7

    move/from16 v23, v20

    .line 184
    :goto_a
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v26, v26, v20

    .line 185
    add-int/lit8 v7, v25, -0x1

    .line 186
    if-nez v7, :cond_1a

    if-lez v19, :cond_1a

    .line 187
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    .line 188
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 189
    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v18

    move/from16 v21, v19

    move/from16 v19, v7

    .line 193
    :goto_b
    if-eqz v6, :cond_19

    .line 194
    add-int/lit8 v7, v17, -0x1

    .line 195
    if-nez v7, :cond_18

    if-lez v16, :cond_18

    .line 196
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v17

    .line 197
    if-eqz v29, :cond_d

    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 198
    :goto_c
    add-int/lit8 v10, v16, -0x1

    move/from16 v16, v7

    move/from16 v18, v17

    move/from16 v17, v10

    .line 203
    :goto_d
    add-int/lit8 v10, v28, -0x1

    .line 204
    if-nez v10, :cond_f

    .line 205
    add-int/lit8 v11, v11, 0x1

    .line 206
    move/from16 v0, v39

    if-ge v11, v0, :cond_3

    .line 207
    iget v7, v4, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->type:I

    sget v8, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stco:I

    if-ne v7, v8, :cond_e

    .line 208
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 215
    :cond_3
    :goto_e
    if-ne v11, v13, :cond_17

    .line 216
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 217
    const/4 v14, 0x4

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 218
    add-int/lit8 v14, v15, -0x1

    .line 219
    if-lez v14, :cond_4

    .line 220
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 225
    :cond_4
    :goto_f
    move/from16 v0, v39

    if-ge v11, v0, :cond_16

    move v10, v11

    move v11, v13

    move v13, v7

    .line 168
    :goto_10
    add-int/lit8 v15, v24, 0x1

    move/from16 v24, v15

    move/from16 v25, v20

    move/from16 v28, v7

    move/from16 v20, v22

    move v15, v14

    move v14, v13

    move v13, v11

    move v11, v10

    move/from16 v10, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v21

    move/from16 v21, v23

    goto/16 :goto_7

    .line 99
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 102
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 120
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 145
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 148
    :cond_9
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    goto/16 :goto_4

    .line 164
    :cond_a
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    goto/16 :goto_6

    :cond_b
    move v7, v12

    .line 170
    goto/16 :goto_8

    .line 174
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 197
    :cond_d
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    goto :goto_c

    .line 210
    :cond_e
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    goto :goto_e

    .line 230
    :cond_f
    aget v7, v35, v24

    int-to-long v0, v7

    move-wide/from16 v40, v0

    add-long v8, v8, v40

    move v7, v10

    move v10, v11

    move v11, v13

    move v13, v14

    move v14, v15

    goto :goto_10

    .line 234
    :cond_10
    const-wide/32 v4, 0xf4240

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/mp4/Track;->timescale:J

    move-object/from16 v0, v36

    invoke-static {v0, v4, v5, v6, v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 237
    if-nez v20, :cond_11

    const/4 v4, 0x1

    :goto_11
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 238
    if-nez v25, :cond_12

    const/4 v4, 0x1

    :goto_12
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 239
    if-nez v28, :cond_13

    const/4 v4, 0x1

    :goto_13
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 240
    if-nez v19, :cond_14

    const/4 v4, 0x1

    :goto_14
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 241
    if-nez v16, :cond_15

    const/4 v4, 0x1

    :goto_15
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 242
    new-instance v4, Lcom/google/android/exoplayer/mp4/Mp4TrackSampleTable;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v38

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer/mp4/Mp4TrackSampleTable;-><init>([J[I[J[I)V

    return-object v4

    .line 237
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 238
    :cond_12
    const/4 v4, 0x0

    goto :goto_12

    .line 239
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 240
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .line 241
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    :cond_16
    move/from16 v42, v10

    move v10, v11

    move v11, v13

    move v13, v7

    move/from16 v7, v42

    goto/16 :goto_10

    :cond_17
    move v7, v14

    move v14, v15

    goto/16 :goto_f

    :cond_18
    move/from16 v17, v16

    move/from16 v18, v7

    move/from16 v16, v10

    goto/16 :goto_d

    :cond_19
    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v10

    goto/16 :goto_d

    :cond_1a
    move/from16 v20, v7

    move/from16 v21, v19

    move/from16 v19, v18

    goto/16 :goto_b

    :cond_1b
    move/from16 v22, v7

    move/from16 v23, v21

    goto/16 :goto_a

    :cond_1c
    move/from16 v22, v20

    move/from16 v23, v21

    goto/16 :goto_a

    :cond_1d
    move/from16 v29, v8

    goto/16 :goto_5
.end method

.method private static parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            "[",
            "Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 325
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 326
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 327
    const/4 v1, 0x0

    .line 328
    new-array v5, v4, [Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    move v3, v2

    .line 329
    :goto_0
    if-ge v3, v4, :cond_7

    .line 330
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 331
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 332
    if-lez v7, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v8, "childAtomSize should be positive"

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 333
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 334
    sget v8, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_avc1:I

    if-eq v0, v8, :cond_0

    sget v8, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_avc3:I

    if-eq v0, v8, :cond_0

    sget v8, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_encv:I

    if-ne v0, v8, :cond_3

    .line 337
    :cond_0
    invoke-static {p0, v6, v7}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseAvcFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    .line 338
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer/MediaFormat;

    .line 339
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    aput-object v0, v5, v3

    .line 351
    :cond_1
    :goto_2
    add-int v0, v6, v7

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 329
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 332
    goto :goto_1

    .line 340
    :cond_3
    sget v8, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mp4a:I

    if-eq v0, v8, :cond_4

    sget v8, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_enca:I

    if-eq v0, v8, :cond_4

    sget v8, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_ac_3:I

    if-ne v0, v8, :cond_5

    .line 343
    :cond_4
    invoke-static {p0, v0, v6, v7}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;III)Landroid/util/Pair;

    move-result-object v8

    .line 344
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer/MediaFormat;

    .line 345
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    aput-object v0, v5, v3

    goto :goto_2

    .line 346
    :cond_5
    sget v8, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_TTML:I

    if-ne v0, v8, :cond_6

    .line 347
    invoke-static {}, Lcom/google/android/exoplayer/MediaFormat;->createTtmlFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    goto :goto_2

    .line 348
    :cond_6
    sget v8, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mp4v:I

    if-ne v0, v8, :cond_1

    .line 349
    invoke-static {p0, v6, v7}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseMp4vFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    goto :goto_2

    .line 353
    :cond_7
    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v1, 0x8

    .line 269
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 270
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 271
    invoke-static {v0}, Lcom/google/android/exoplayer/mp4/Mp4Util;->parseFullAtomVersion(I)I

    move-result v4

    .line 273
    if-nez v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 275
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 276
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 278
    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 280
    if-nez v4, :cond_0

    move v1, v2

    :cond_0
    move v2, v3

    .line 281
    :goto_1
    if-ge v2, v1, :cond_1

    .line 282
    iget-object v7, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int v8, v6, v2

    aget-byte v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    move v0, v3

    .line 288
    :cond_1
    if-eqz v0, :cond_4

    .line 289
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skip(I)V

    .line 290
    const-wide/16 v0, -0x1

    .line 295
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 273
    :cond_2
    const/16 v0, 0x10

    goto :goto_0

    .line 281
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    :cond_4
    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_2
.end method

.method public static parseTrak(Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer/mp4/Track;
    .locals 12

    .prologue
    const-wide/16 v6, -0x1

    .line 50
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    move-result-object v8

    .line 51
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v10

    .line 52
    const v0, 0x736f756e

    if-eq v10, v0, :cond_0

    const v0, 0x76696465

    if-eq v10, v0, :cond_0

    const v0, 0x74657874

    if-eq v10, v0, :cond_0

    const v0, 0x746d6364

    if-ne v10, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 55
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_tkhd:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 56
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 57
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 58
    iget-object v2, p1, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v4

    .line 60
    cmp-long v2, v0, v6

    if-nez v2, :cond_2

    .line 65
    :goto_1
    sget v0, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stbl:I

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 68
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v4

    .line 69
    sget v1, Lcom/google/android/exoplayer/mp4/Atom;->TYPE_stsd:I

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/mp4/CommonMp4AtomParsers;->parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/google/android/exoplayer/mp4/Track;

    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/exoplayer/MediaFormat;

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;

    move v2, v11

    move v3, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/mp4/Track;-><init>(IIJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/chunk/parser/mp4/TrackEncryptionBox;)V

    return-object v1

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_2
    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    goto :goto_1
.end method
