.class Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;
.super Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;
.source "SmoothStreamingManifestParser.java"


# static fields
.field private static final KEY_AUDIO_TAG:Ljava/lang/String; = "AudioTag"

.field private static final KEY_BITRATE:Ljava/lang/String; = "Bitrate"

.field private static final KEY_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field private static final KEY_CHANNELS:Ljava/lang/String; = "Channels"

.field private static final KEY_CODEC_PRIVATE_DATA:Ljava/lang/String; = "CodecPrivateData"

.field private static final KEY_FOUR_CC:Ljava/lang/String; = "FourCC"

.field private static final KEY_INDEX:Ljava/lang/String; = "Index"

.field private static final KEY_MAX_HEIGHT:Ljava/lang/String; = "MaxHeight"

.field private static final KEY_MAX_WIDTH:Ljava/lang/String; = "MaxWidth"

.field private static final KEY_NAL_UNIT_LENGTH_FIELD:Ljava/lang/String; = "NALUnitLengthField"

.field private static final KEY_PACKET_SIZE:Ljava/lang/String; = "PacketSize"

.field private static final KEY_SAMPLING_RATE:Ljava/lang/String; = "SamplingRate"

.field private static final KEY_TYPE:Ljava/lang/String; = "Type"

.field public static final TAG:Ljava/lang/String; = "QualityLevel"


# instance fields
.field private audioTag:I

.field private bitPerSample:I

.field private bitrate:I

.field private channels:I

.field private content:Ljava/lang/String;

.field private final csd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private index:I

.field private level:I

.field private maxHeight:I

.field private maxWidth:I

.field private mimeType:Ljava/lang/String;

.field private nalUnitLengthField:I

.field private packetSize:I

.field private profile:I

.field private samplingRate:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 616
    const-string/jumbo v0, "QualityLevel"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;-><init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Landroid/net/Uri;Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    .line 618
    return-void
.end method

.method private static fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    const-string/jumbo v0, "H264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "X264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AVC1"

    .line 695
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DAVC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    :cond_0
    const-string/jumbo v0, "video/avc"

    .line 703
    :goto_0
    return-object v0

    .line 697
    :cond_1
    const-string/jumbo v0, "AAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "AACL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "AACH"

    .line 698
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "AACP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 699
    :cond_2
    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_0

    .line 700
    :cond_3
    const-string/jumbo v0, "TTML"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 701
    const-string/jumbo v0, "application/ttml+xml"

    goto :goto_0

    .line 703
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 707
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 708
    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 709
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 710
    mul-int/lit8 v2, v0, 0x2

    .line 711
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    .line 712
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    :cond_0
    return-object v1
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 17

    .prologue
    .line 683
    const/4 v1, 0x0

    check-cast v1, [[B

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [[B

    .line 686
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 688
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->index:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->bitrate:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->profile:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->level:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxHeight:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->samplingRate:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->channels:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->packetSize:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->audioTag:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->bitPerSample:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->nalUnitLengthField:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->content:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;-><init>(IILjava/lang/String;[[BIIIIIIIIIILjava/lang/String;)V

    return-object v1

    :cond_0
    move-object v5, v1

    goto :goto_0
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 622
    const-string/jumbo v0, "Type"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 623
    iput-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->content:Ljava/lang/String;

    .line 626
    const-string/jumbo v0, "Index"

    invoke-virtual {p0, p1, v0, v4}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->index:I

    .line 627
    const-string/jumbo v0, "Bitrate"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->bitrate:I

    .line 628
    const-string/jumbo v0, "NALUnitLengthField"

    const/4 v3, 0x4

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->nalUnitLengthField:I

    .line 630
    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    .line 631
    const-string/jumbo v0, "MaxHeight"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxHeight:I

    .line 632
    const-string/jumbo v0, "MaxWidth"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxWidth:I

    .line 633
    const-string/jumbo v0, "FourCC"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->mimeType:Ljava/lang/String;

    .line 643
    :goto_0
    if-nez v2, :cond_4

    .line 644
    const-string/jumbo v0, "SamplingRate"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->samplingRate:I

    .line 645
    const-string/jumbo v0, "Channels"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->channels:I

    .line 646
    const-string/jumbo v0, "BitsPerSample"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->bitPerSample:I

    .line 647
    const-string/jumbo v0, "PacketSize"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->packetSize:I

    .line 648
    const-string/jumbo v0, "AudioTag"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->audioTag:I

    .line 657
    :goto_1
    const-string/jumbo v0, "CodecPrivateData"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 659
    invoke-static {v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 660
    invoke-static {v0}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->splitNalUnits([B)[[B

    move-result-object v2

    .line 661
    if-nez v2, :cond_5

    .line 662
    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_0
    return-void

    .line 635
    :cond_1
    iput v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxHeight:I

    .line 636
    iput v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->maxWidth:I

    .line 637
    const-string/jumbo v0, "FourCC"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->fourCCToMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->mimeType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 650
    :cond_4
    iput v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->samplingRate:I

    .line 651
    iput v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->channels:I

    .line 652
    iput v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->bitPerSample:I

    .line 653
    iput v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->packetSize:I

    .line 654
    iput v4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->audioTag:I

    goto :goto_1

    .line 664
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 665
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->parseSpsNalUnit([B)Landroid/util/Pair;

    move-result-object v3

    .line 666
    if-eqz v3, :cond_6

    .line 667
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->profile:I

    .line 668
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->level:I

    .line 670
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->csd:Ljava/util/List;

    aget-object v3, v2, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method

.method public parseText(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 678
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;->content:Ljava/lang/String;

    .line 679
    return-void
.end method
