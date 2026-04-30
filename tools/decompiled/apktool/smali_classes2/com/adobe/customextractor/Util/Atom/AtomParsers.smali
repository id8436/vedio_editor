.class public final Lcom/adobe/customextractor/Util/Atom/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    return-void
.end method

.method private static parseAudioSampleEntry(Lcom/adobe/customextractor/Util/ParsableByteArray;IIIJLcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;I)V
    .locals 16

    .prologue
    .line 511
    add-int/lit8 v2, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 512
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 515
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v4

    .line 518
    const/4 v2, 0x0

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v8

    move v7, v8

    .line 521
    :goto_0
    sub-int v6, v7, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_6

    .line 522
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v10

    .line 525
    if-lez v10, :cond_2

    const/4 v6, 0x1

    :goto_1
    const-string/jumbo v11, "childAtomSize should be positive"

    invoke-static {v6, v11}, Lcom/adobe/customextractor/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v6

    .line 527
    sget v11, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mp4a:I

    move/from16 v0, p1

    if-eq v0, v11, :cond_0

    sget v11, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v11, :cond_4

    .line 528
    :cond_0
    sget v11, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_esds:I

    if-ne v6, v11, :cond_3

    .line 529
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseEsdsFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;I)[B

    move-result-object v4

    .line 533
    invoke-static {v4}, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->parseAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v6

    .line 534
    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 535
    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v14, v4

    move v4, v5

    move v5, v2

    move-object v2, v14

    .line 551
    :cond_1
    :goto_2
    add-int v6, v7, v10

    move v7, v6

    .line 552
    goto :goto_0

    .line 525
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 536
    :cond_3
    sget v11, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_sinf:I

    if-ne v6, v11, :cond_1

    .line 537
    move-object/from16 v0, p6

    iget-object v6, v0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->trackEncryptionBoxes:[Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseSinfFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;II)Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

    move-result-object v9

    aput-object v9, v6, p7

    goto :goto_2

    .line 540
    :cond_4
    sget v11, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v11, :cond_5

    sget v11, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_dac3:I

    if-ne v6, v11, :cond_5

    .line 543
    add-int/lit8 v2, v9, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 544
    invoke-static/range {p0 .. p0}, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->parseAnnexFAc3Format(Lcom/adobe/customextractor/Util/ParsableByteArray;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    .line 601
    :goto_3
    return-void

    .line 546
    :cond_5
    sget v11, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v11, :cond_1

    sget v11, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_dec3:I

    if-ne v6, v11, :cond_1

    .line 547
    add-int/lit8 v2, v9, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 548
    invoke-static/range {p0 .. p0}, Lcom/adobe/customextractor/Util/CodecUtil/Ac3Util;->parseAnnexFEAc3Format(Lcom/adobe/customextractor/Util/ParsableByteArray;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    goto :goto_3

    .line 553
    :cond_6
    sget v6, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mp4a:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_f

    if-nez v2, :cond_f

    .line 556
    add-int/lit8 v6, v8, 0x10

    move v8, v6

    move v6, v5

    move v5, v4

    move-object v4, v2

    .line 557
    :goto_4
    sub-int v2, v8, p2

    move/from16 v0, p3

    if-ge v2, v0, :cond_a

    .line 559
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v10

    .line 562
    if-lez v10, :cond_7

    const/4 v2, 0x1

    :goto_5
    const-string/jumbo v7, "childAtomSize should be positive"

    invoke-static {v2, v7}, Lcom/adobe/customextractor/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v2

    .line 564
    sget v7, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_wave:I

    if-ne v2, v7, :cond_9

    .line 565
    add-int/lit8 v2, v9, 0x8

    move v7, v2

    .line 567
    :goto_6
    sub-int v2, v7, v9

    if-ge v2, v10, :cond_9

    .line 568
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v11

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v12

    .line 571
    if-lez v10, :cond_8

    const/4 v2, 0x1

    :goto_7
    const-string/jumbo v13, "childAtomSize should be positive"

    invoke-static {v2, v13}, Lcom/adobe/customextractor/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v2

    .line 573
    sget v13, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_esds:I

    if-ne v2, v13, :cond_e

    .line 574
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseEsdsFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;I)[B

    move-result-object v4

    .line 578
    invoke-static {v4}, Lcom/adobe/customextractor/Util/CodecUtil/CodecSpecificDataUtil;->parseAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v6

    .line 579
    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 580
    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v14, v4

    move v4, v5

    move v5, v2

    move-object v2, v14

    .line 582
    :goto_8
    add-int v6, v7, v12

    move v7, v6

    move v6, v5

    move v5, v4

    move-object v4, v2

    .line 583
    goto :goto_6

    .line 562
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 571
    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    .line 585
    :cond_9
    add-int v2, v8, v10

    move v8, v2

    .line 586
    goto :goto_4

    :cond_a
    move v7, v5

    .line 590
    :goto_9
    sget v2, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 591
    const-string/jumbo v2, "audio/ac3"

    .line 598
    :goto_a
    if-nez v4, :cond_d

    const/4 v8, 0x0

    :goto_b
    move-wide/from16 v4, p4

    invoke-static/range {v2 .. v8}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createAudioFormat(Ljava/lang/String;IJIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    goto/16 :goto_3

    .line 592
    :cond_b
    sget v2, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_c

    .line 593
    const-string/jumbo v2, "audio/eac3"

    goto :goto_a

    .line 595
    :cond_c
    const-string/jumbo v2, "audio/mp4a-latm"

    goto :goto_a

    .line 600
    :cond_d
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_b

    :cond_e
    move-object v2, v4

    move v4, v5

    move v5, v6

    goto :goto_8

    :cond_f
    move v7, v4

    move v6, v5

    move-object v4, v2

    goto :goto_9
.end method

.method private static parseAvcCFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/customextractor/Util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 409
    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 411
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    .line 412
    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 415
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v4, v1, 0x1f

    move v1, v0

    .line 419
    :goto_0
    if-ge v1, v4, :cond_1

    .line 420
    invoke-static {p0}, Lcom/adobe/customextractor/Util/CodecUtil/H264Util;->parseChildNalUnit(Lcom/adobe/customextractor/Util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 423
    :goto_1
    if-ge v0, v1, :cond_2

    .line 424
    invoke-static {p0}, Lcom/adobe/customextractor/Util/CodecUtil/H264Util;->parseChildNalUnit(Lcom/adobe/customextractor/Util/ParsableByteArray;)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseAvcFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;IIJLcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;I)V
    .locals 9

    .prologue
    .line 370
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 372
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 373
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 374
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 375
    const/high16 v7, 0x3f800000    # 1.0f

    .line 376
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 378
    const/4 v8, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v0

    move v2, v0

    .line 380
    :goto_0
    sub-int v0, v2, p1

    if-ge v0, p2, :cond_0

    .line 381
    invoke-virtual {p0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 382
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 383
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v3

    .line 384
    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v0

    sub-int/2addr v0, p1

    if-ne v0, p2, :cond_1

    .line 403
    :cond_0
    const-string/jumbo v0, "video/avc"

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-wide v2, p3

    invoke-static/range {v0 .. v8}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIIIFLjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    iput-object v0, p5, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    .line 405
    return-void

    .line 388
    :cond_1
    if-lez v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v6, "childAtomSize should be positive"

    invoke-static {v0, v6}, Lcom/adobe/customextractor/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 389
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v0

    .line 390
    sget v6, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_avcC:I

    if-ne v0, v6, :cond_4

    .line 391
    invoke-static {p0, v1}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseAvcCFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v6

    .line 392
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 393
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p5, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->nalUnitLengthFieldLength:I

    move-object v8, v1

    .line 400
    :cond_2
    :goto_2
    add-int v0, v2, v3

    move v2, v0

    .line 401
    goto :goto_0

    .line 388
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 394
    :cond_4
    sget v6, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_sinf:I

    if-ne v0, v6, :cond_5

    .line 395
    iget-object v0, p5, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->trackEncryptionBoxes:[Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

    .line 396
    invoke-static {p0, v1, v3}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseSinfFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;II)Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

    move-result-object v1

    aput-object v1, v0, p6

    goto :goto_2

    .line 397
    :cond_5
    sget v6, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_pasp:I

    if-ne v0, v6, :cond_2

    .line 398
    invoke-static {p0, v1}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parsePaspFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;I)F

    move-result v7

    goto :goto_2
.end method

.method private static parseEsdsFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;I)[B
    .locals 5

    .prologue
    const/16 v4, 0x7f

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 605
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 607
    invoke-virtual {p0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 608
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 609
    :goto_0
    if-le v0, v4, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p0, v3}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 614
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 615
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    .line 616
    invoke-virtual {p0, v3}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 618
    :cond_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 619
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 621
    :cond_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 622
    invoke-virtual {p0, v3}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 626
    :cond_3
    invoke-virtual {p0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 627
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 628
    :goto_1
    if-le v0, v4, :cond_4

    .line 629
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    goto :goto_1

    .line 631
    :cond_4
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 634
    invoke-virtual {p0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 635
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 636
    and-int/lit8 v0, v1, 0x7f

    .line 637
    :goto_2
    if-le v1, v4, :cond_5

    .line 638
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 639
    shl-int/lit8 v0, v0, 0x8

    .line 640
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_2

    .line 642
    :cond_5
    new-array v1, v0, [B

    .line 643
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readBytes([BII)V

    .line 644
    return-object v1
.end method

.method private static parseHdlr(Lcom/adobe/customextractor/Util/ParsableByteArray;)I
    .locals 1

    .prologue
    .line 321
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 322
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseMdhd(Lcom/adobe/customextractor/Util/ParsableByteArray;)J
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 332
    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 333
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v1

    .line 334
    invoke-static {v1}, Lcom/adobe/customextractor/Util/Atom/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 336
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 337
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    .line 336
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parseMp4vFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;IIJ)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 484
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 486
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 487
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 488
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 489
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 491
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v0

    move v2, v0

    .line 493
    :goto_0
    sub-int v0, v2, p1

    if-ge v0, p2, :cond_2

    .line 494
    invoke-virtual {p0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 495
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 496
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v8

    .line 497
    if-lez v8, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v9, "childAtomSize should be positive"

    invoke-static {v0, v9}, Lcom/adobe/customextractor/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 498
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v0

    .line 499
    sget v9, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_esds:I

    if-ne v0, v9, :cond_0

    .line 500
    invoke-static {p0, v3}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseEsdsFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;I)[B

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_0
    add-int v0, v2, v8

    move v2, v0

    .line 503
    goto :goto_0

    :cond_1
    move v0, v6

    .line 497
    goto :goto_1

    .line 505
    :cond_2
    const-string/jumbo v0, "video/mp4v-es"

    const/4 v1, -0x1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createVideoFormat(Ljava/lang/String;IJIIILjava/util/List;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static parseMvhd(Lcom/adobe/customextractor/Util/ParsableByteArray;)J
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 246
    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 248
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v1

    .line 249
    invoke-static {v1}, Lcom/adobe/customextractor/Util/Atom/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 251
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 253
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    .line 251
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;I)F
    .locals 2

    .prologue
    .line 454
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 455
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 456
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 457
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static parseSchiFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;II)Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 462
    add-int/lit8 v2, p1, 0x8

    .line 463
    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_2

    .line 464
    invoke-virtual {p0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 465
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v3

    .line 466
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v4

    .line 467
    sget v5, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_tenc:I

    if-ne v4, v5, :cond_1

    .line 468
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 469
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v2

    .line 470
    shr-int/lit8 v3, v2, 0x8

    if-ne v3, v0, :cond_0

    .line 471
    :goto_1
    and-int/lit16 v2, v2, 0xff

    .line 472
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 473
    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readBytes([BII)V

    .line 474
    new-instance v1, Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

    invoke-direct {v1, v0, v2, v3}, Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;-><init>(ZI[B)V

    move-object v0, v1

    .line 478
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 470
    goto :goto_1

    .line 476
    :cond_1
    add-int/2addr v2, v3

    .line 477
    goto :goto_0

    .line 478
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static parseSinfFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;II)Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;
    .locals 5

    .prologue
    .line 431
    add-int/lit8 v1, p1, 0x8

    .line 433
    const/4 v0, 0x0

    .line 434
    :goto_0
    sub-int v2, v1, p1

    if-ge v2, p2, :cond_3

    .line 435
    invoke-virtual {p0, v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 436
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v2

    .line 437
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v3

    .line 438
    sget v4, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_frma:I

    if-ne v3, v4, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    .line 447
    :cond_0
    :goto_1
    add-int/2addr v1, v2

    .line 448
    goto :goto_0

    .line 440
    :cond_1
    sget v4, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_schm:I

    if-ne v3, v4, :cond_2

    .line 441
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 442
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    .line 443
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    goto :goto_1

    .line 444
    :cond_2
    sget v4, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_schi:I

    if-ne v3, v4, :cond_0

    .line 445
    invoke-static {p0, v1, v2}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseSchiFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;II)Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

    move-result-object v0

    goto :goto_1

    .line 450
    :cond_3
    return-object v0
.end method

.method public static parseStbl(Lcom/adobe/customextractor/Tracks/Track;Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;)Lcom/adobe/customextractor/Tracks/TrackSampleTable;
    .locals 43

    .prologue
    .line 75
    sget v4, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    move-object/from16 v29, v0

    .line 79
    sget v4, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v4

    .line 80
    if-nez v4, :cond_0

    .line 81
    sget v4, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v4

    .line 83
    :cond_0
    iget-object v0, v4, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    move-object/from16 v30, v0

    .line 85
    sget v5, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v5

    iget-object v0, v5, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    move-object/from16 v31, v0

    .line 87
    sget v5, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v5

    iget-object v0, v5, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    move-object/from16 v32, v0

    .line 89
    sget v5, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v5

    .line 90
    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    .line 92
    :goto_0
    sget v6, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v6

    .line 93
    if-eqz v6, :cond_7

    iget-object v6, v6, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    .line 96
    :goto_1
    const/16 v7, 0xc

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 97
    invoke-virtual/range {v29 .. v29}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 98
    invoke-virtual/range {v29 .. v29}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v33

    .line 100
    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v34, v0

    .line 101
    move/from16 v0, v33

    new-array v0, v0, [J

    move-object/from16 v35, v0

    .line 102
    move/from16 v0, v33

    new-array v0, v0, [J

    move-object/from16 v36, v0

    .line 103
    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v37, v0

    .line 106
    const/16 v7, 0xc

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 107
    invoke-virtual/range {v30 .. v30}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v38

    .line 108
    const/16 v7, 0xc

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 109
    invoke-virtual/range {v31 .. v31}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    add-int/lit8 v24, v7, -0x1

    .line 110
    invoke-virtual/range {v31 .. v31}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    const/4 v7, 0x1

    :goto_2
    const-string/jumbo v8, "stsc first chunk must be 1"

    invoke-static {v7, v8}, Lcom/adobe/customextractor/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 111
    invoke-virtual/range {v31 .. v31}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v22

    .line 112
    const/4 v7, 0x4

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 113
    const/4 v7, -0x1

    .line 114
    if-lez v24, :cond_1

    .line 116
    invoke-virtual/range {v31 .. v31}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 119
    :cond_1
    const/16 v23, 0x0

    .line 123
    const/16 v8, 0xc

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 124
    invoke-virtual/range {v32 .. v32}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    add-int/lit8 v21, v8, -0x1

    .line 125
    invoke-virtual/range {v32 .. v32}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 126
    invoke-virtual/range {v32 .. v32}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    .line 129
    const/16 v18, 0x0

    .line 130
    const/16 v17, 0x0

    .line 131
    const/16 v16, 0x0

    .line 132
    if-eqz v6, :cond_2

    .line 133
    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 134
    invoke-virtual {v6}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    add-int/lit8 v17, v8, -0x1

    .line 135
    invoke-virtual {v6}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    .line 141
    invoke-virtual {v6}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v16

    .line 144
    :cond_2
    const/4 v9, -0x1

    .line 145
    const/4 v8, 0x0

    .line 146
    if-eqz v5, :cond_3

    .line 147
    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 148
    invoke-virtual {v5}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 149
    invoke-virtual {v5}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 154
    :cond_3
    iget v10, v4, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->type:I

    sget v11, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stco:I

    if-ne v10, v11, :cond_9

    .line 155
    invoke-virtual/range {v30 .. v30}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 160
    :goto_3
    const-wide/16 v14, 0x0

    .line 161
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

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    .line 162
    aput-wide v8, v36, v24

    .line 163
    if-nez v12, :cond_a

    invoke-virtual/range {v29 .. v29}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    :goto_5
    aput v7, v34, v24

    .line 164
    int-to-long v0, v10

    move-wide/from16 v22, v0

    add-long v22, v22, v26

    aput-wide v22, v35, v24

    .line 167
    if-nez v5, :cond_b

    const/4 v7, 0x1

    :goto_6
    aput v7, v37, v24

    .line 168
    move/from16 v0, v24

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 169
    const/4 v7, 0x1

    aput v7, v37, v24

    .line 170
    add-int/lit8 v7, v20, -0x1

    .line 171
    if-lez v7, :cond_19

    .line 172
    invoke-virtual {v5}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v22, v7

    move/from16 v23, v20

    .line 177
    :goto_7
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v26, v26, v20

    .line 178
    add-int/lit8 v7, v25, -0x1

    .line 179
    if-nez v7, :cond_18

    if-lez v19, :cond_18

    .line 180
    invoke-virtual/range {v32 .. v32}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    .line 181
    invoke-virtual/range {v32 .. v32}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 182
    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v18

    move/from16 v21, v19

    move/from16 v19, v7

    .line 186
    :goto_8
    if-eqz v6, :cond_17

    .line 187
    add-int/lit8 v7, v17, -0x1

    .line 188
    if-nez v7, :cond_16

    if-lez v16, :cond_16

    .line 189
    invoke-virtual {v6}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v17

    .line 191
    invoke-virtual {v6}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v7

    .line 192
    add-int/lit8 v10, v16, -0x1

    move/from16 v16, v7

    move/from16 v18, v17

    move/from16 v17, v10

    .line 197
    :goto_9
    add-int/lit8 v10, v28, -0x1

    .line 198
    if-nez v10, :cond_d

    .line 199
    add-int/lit8 v11, v11, 0x1

    .line 200
    move/from16 v0, v38

    if-ge v11, v0, :cond_4

    .line 201
    iget v7, v4, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->type:I

    sget v8, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stco:I

    if-ne v7, v8, :cond_c

    .line 202
    invoke-virtual/range {v30 .. v30}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 209
    :cond_4
    :goto_a
    if-ne v11, v13, :cond_15

    .line 210
    invoke-virtual/range {v31 .. v31}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 211
    const/4 v14, 0x4

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 212
    add-int/lit8 v14, v15, -0x1

    .line 213
    if-lez v14, :cond_5

    .line 214
    invoke-virtual/range {v31 .. v31}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 219
    :cond_5
    :goto_b
    move/from16 v0, v38

    if-ge v11, v0, :cond_14

    move v10, v11

    move v11, v13

    move v13, v7

    .line 161
    :goto_c
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

    goto/16 :goto_4

    .line 90
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 93
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 110
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 157
    :cond_9
    invoke-virtual/range {v30 .. v30}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v10

    goto/16 :goto_3

    :cond_a
    move v7, v12

    .line 163
    goto/16 :goto_5

    .line 167
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 204
    :cond_c
    invoke-virtual/range {v30 .. v30}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    goto :goto_a

    .line 224
    :cond_d
    aget v7, v34, v24

    int-to-long v0, v7

    move-wide/from16 v40, v0

    add-long v8, v8, v40

    move v7, v10

    move v10, v11

    move v11, v13

    move v13, v14

    move v14, v15

    goto :goto_c

    .line 228
    :cond_e
    const-wide/32 v4, 0xf4240

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/adobe/customextractor/Tracks/Track;->timescale:J

    move-object/from16 v0, v35

    invoke-static {v0, v4, v5, v6, v7}, Lcom/adobe/customextractor/Util/Utilities;->scaleLargeTimestampsInPlace([JJJ)V

    .line 231
    if-nez v20, :cond_f

    const/4 v4, 0x1

    :goto_d
    invoke-static {v4}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 232
    if-nez v25, :cond_10

    const/4 v4, 0x1

    :goto_e
    invoke-static {v4}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 233
    if-nez v28, :cond_11

    const/4 v4, 0x1

    :goto_f
    invoke-static {v4}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 234
    if-nez v19, :cond_12

    const/4 v4, 0x1

    :goto_10
    invoke-static {v4}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 235
    if-nez v16, :cond_13

    const/4 v4, 0x1

    :goto_11
    invoke-static {v4}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 236
    new-instance v4, Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/adobe/customextractor/Tracks/TrackSampleTable;-><init>([J[I[J[I)V

    return-object v4

    .line 231
    :cond_f
    const/4 v4, 0x0

    goto :goto_d

    .line 232
    :cond_10
    const/4 v4, 0x0

    goto :goto_e

    .line 233
    :cond_11
    const/4 v4, 0x0

    goto :goto_f

    .line 234
    :cond_12
    const/4 v4, 0x0

    goto :goto_10

    .line 235
    :cond_13
    const/4 v4, 0x0

    goto :goto_11

    :cond_14
    move/from16 v42, v10

    move v10, v11

    move v11, v13

    move v13, v7

    move/from16 v7, v42

    goto/16 :goto_c

    :cond_15
    move v7, v14

    move v14, v15

    goto/16 :goto_b

    :cond_16
    move/from16 v17, v16

    move/from16 v18, v7

    move/from16 v16, v10

    goto/16 :goto_9

    :cond_17
    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v10

    goto/16 :goto_9

    :cond_18
    move/from16 v20, v7

    move/from16 v21, v19

    move/from16 v19, v18

    goto/16 :goto_8

    :cond_19
    move/from16 v22, v7

    move/from16 v23, v21

    goto/16 :goto_7

    :cond_1a
    move/from16 v22, v20

    move/from16 v23, v21

    goto/16 :goto_7
.end method

.method private static parseStsd(Lcom/adobe/customextractor/Util/ParsableByteArray;J)Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 341
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 342
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v9

    .line 343
    new-instance v6, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;

    invoke-direct {v6, v9}, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;-><init>(I)V

    move v7, v8

    .line 344
    :goto_0
    if-ge v7, v9, :cond_7

    .line 345
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 346
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v3

    .line 347
    if-lez v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lcom/adobe/customextractor/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 348
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v1

    .line 349
    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_avc1:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_avc3:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_encv:I

    if-ne v1, v0, :cond_3

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    .line 351
    invoke-static/range {v1 .. v7}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseAvcFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;IIJLcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;I)V

    .line 362
    :cond_1
    :goto_2
    add-int v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 344
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v0, v8

    .line 347
    goto :goto_1

    .line 352
    :cond_3
    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mp4a:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_enca:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_ac_3:I

    if-ne v1, v0, :cond_5

    :cond_4
    move-object v0, p0

    move-wide v4, p1

    .line 354
    invoke-static/range {v0 .. v7}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseAudioSampleEntry(Lcom/adobe/customextractor/Util/ParsableByteArray;IIIJLcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;I)V

    goto :goto_2

    .line 356
    :cond_5
    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_TTML:I

    if-ne v1, v0, :cond_6

    .line 357
    invoke-static {}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createTtmlFormat()Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    iput-object v0, v6, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    goto :goto_2

    .line 358
    :cond_6
    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mp4v:I

    if-ne v1, v0, :cond_1

    .line 359
    invoke-static {p0, v2, v3, p1, p2}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseMp4vFromParent(Lcom/adobe/customextractor/Util/ParsableByteArray;IIJ)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    iput-object v0, v6, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    goto :goto_2

    .line 364
    :cond_7
    return-object v6
.end method

.method private static parseTkhd(Lcom/adobe/customextractor/Util/ParsableByteArray;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/customextractor/Util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/4 v3, 0x4

    const/high16 v10, -0x10000

    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 263
    invoke-virtual {p0, v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 264
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v0

    .line 265
    invoke-static {v0}, Lcom/adobe/customextractor/Util/Atom/Atom;->parseFullAtomVersion(I)I

    move-result v5

    .line 267
    if-nez v5, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 269
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v6

    .line 270
    invoke-virtual {p0, v3}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 272
    const/4 v0, 0x1

    .line 273
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 274
    if-nez v5, :cond_0

    move v1, v3

    :cond_0
    move v3, v4

    .line 275
    :goto_1
    if-ge v3, v1, :cond_1

    .line 276
    iget-object v8, p0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    add-int v9, v7, v3

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    move v0, v4

    .line 282
    :cond_1
    if-eqz v0, :cond_4

    .line 283
    invoke-virtual {p0, v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 284
    const-wide/16 v0, -0x1

    .line 290
    :goto_2
    invoke-virtual {p0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->skipBytes(I)V

    .line 291
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v2

    .line 292
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v3

    .line 295
    const/high16 v5, 0x10000

    if-ne v2, v5, :cond_6

    if-nez v3, :cond_6

    move v2, v4

    .line 311
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v2

    .line 267
    goto :goto_0

    .line 275
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 286
    :cond_4
    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_2

    .line 298
    :cond_6
    if-nez v2, :cond_7

    const/high16 v5, 0x10000

    if-ne v3, v5, :cond_7

    .line 299
    const/16 v2, 0x5a

    goto :goto_3

    .line 301
    :cond_7
    if-ne v2, v10, :cond_8

    if-nez v3, :cond_8

    .line 302
    const/16 v2, 0xb4

    goto :goto_3

    .line 304
    :cond_8
    if-nez v2, :cond_9

    if-ne v3, v10, :cond_9

    .line 305
    const/16 v2, 0x10e

    goto :goto_3

    .line 308
    :cond_9
    const-string/jumbo v2, "AtomParser"

    const-string/jumbo v3, "Could not find rotation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_3
.end method

.method public static parseTrak(Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;)Lcom/adobe/customextractor/Tracks/Track;
    .locals 13

    .prologue
    const-wide/16 v6, -0x1

    .line 35
    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mdia:I

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    move-result-object v8

    .line 36
    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_hdlr:I

    invoke-virtual {v8, v0}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-static {v0}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseHdlr(Lcom/adobe/customextractor/Util/ParsableByteArray;)I

    move-result v11

    .line 37
    const v0, 0x736f756e

    if-eq v11, v0, :cond_0

    const v0, 0x76696465

    if-eq v11, v0, :cond_0

    const v0, 0x74657874

    if-eq v11, v0, :cond_0

    const v0, 0x746d6364

    if-eq v11, v0, :cond_0

    .line 39
    const/4 v1, 0x0

    .line 62
    :goto_0
    return-object v1

    .line 42
    :cond_0
    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_tkhd:I

    invoke-virtual {p0, v0}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-static {v0}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseTkhd(Lcom/adobe/customextractor/Util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v2

    .line 43
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 44
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 45
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 46
    const-string/jumbo v2, "Parser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p1, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-static {v2}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseMvhd(Lcom/adobe/customextractor/Util/ParsableByteArray;)J

    move-result-wide v4

    .line 49
    cmp-long v2, v0, v6

    if-nez v2, :cond_2

    .line 54
    :goto_1
    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_minf:I

    invoke-virtual {v8, v0}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    move-result-object v0

    sget v1, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stbl:I

    .line 55
    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    move-result-object v0

    .line 57
    sget v1, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mdhd:I

    invoke-virtual {v8, v1}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-static {v1}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseMdhd(Lcom/adobe/customextractor/Util/ParsableByteArray;)J

    move-result-wide v4

    .line 58
    sget v1, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stsd:I

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;->data:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-static {v0, v6, v7}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseStsd(Lcom/adobe/customextractor/Util/ParsableByteArray;J)Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, v0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iput v9, v1, Lcom/adobe/customextractor/Util/Media/MediaFormat;->rotation:I

    .line 62
    :cond_1
    new-instance v1, Lcom/adobe/customextractor/Tracks/Track;

    iget-object v8, v0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    iget-object v9, v0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->trackEncryptionBoxes:[Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

    iget v10, v0, Lcom/adobe/customextractor/Util/Atom/AtomParsers$StsdDataHolder;->nalUnitLengthFieldLength:I

    move v2, v12

    move v3, v11

    invoke-direct/range {v1 .. v10}, Lcom/adobe/customextractor/Tracks/Track;-><init>(IIJJLcom/adobe/customextractor/Util/Media/MediaFormat;[Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;I)V

    goto/16 :goto_0

    .line 52
    :cond_2
    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lcom/adobe/customextractor/Util/Utilities;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    goto :goto_1
.end method
