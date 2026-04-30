.class public final Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;
.super Ljava/lang/Object;
.source "WebmExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/parser/Extractor;


# static fields
.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_VIDEO:I = 0xe0

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final READ_TERMINATING_RESULTS:I = 0x27

.field private static final UNKNOWN:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000


# instance fields
.field private channelCount:I

.field private clusterTimecodeUs:J

.field private codecDelayNs:J

.field private codecId:Ljava/lang/String;

.field private codecPrivate:[B

.field private cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

.field private cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

.field private cues:Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

.field private cuesSizeBytes:J

.field private durationUs:J

.field private format:Lcom/google/android/exoplayer/MediaFormat;

.field private pixelHeight:I

.field private pixelWidth:I

.field private readResults:I

.field private final reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

.field private sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private sampleRate:I

.field private seekPreRollNs:J

.field private seenAudioTrack:Z

.field private segmentEndOffsetBytes:J

.field private segmentStartOffsetBytes:J

.field private final simpleBlockTimecodeAndFlags:[B

.field private simpleBlockTimecodeUs:J

.field private timecodeScale:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;-><init>(Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;)V

    .line 127
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeAndFlags:[B

    .line 104
    iput-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->segmentStartOffsetBytes:J

    .line 105
    iput-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->segmentEndOffsetBytes:J

    .line 106
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->timecodeScale:J

    .line 107
    iput-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->durationUs:J

    .line 108
    iput v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->pixelWidth:I

    .line 109
    iput v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->pixelHeight:I

    .line 110
    iput v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->channelCount:I

    .line 111
    iput v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleRate:I

    .line 117
    iput-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cuesSizeBytes:J

    .line 118
    iput-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->clusterTimecodeUs:J

    .line 119
    iput-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeUs:J

    .line 130
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

    new-instance v1, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor$InnerEbmlEventHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor$InnerEbmlEventHandler;-><init>(Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;->setEventHandler(Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;)V

    .line 132
    return-void
.end method

.method private buildAudioFormat()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x40

    const/4 v1, -0x1

    .line 484
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->channelCount:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleRate:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->channelCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleRate:I

    if-eq v0, v1, :cond_4

    .line 487
    :cond_0
    const-string/jumbo v0, "A_VORBIS"

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 488
    const-string/jumbo v0, "audio/vorbis"

    const/16 v1, 0x2000

    iget v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->channelCount:I

    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleRate:I

    .line 490
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->parseVorbisCodecPrivate()Ljava/util/ArrayList;

    move-result-object v4

    .line 488
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 500
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    .line 504
    :cond_2
    return-void

    .line 491
    :cond_3
    const-string/jumbo v0, "A_OPUS"

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecDelayNs:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->seekPreRollNs:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const-string/jumbo v1, "audio/opus"

    const/16 v2, 0x1680

    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->channelCount:I

    iget v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleRate:I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_0

    .line 501
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v0, :cond_2

    .line 502
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Unable to build format"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildCues()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    .line 513
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->segmentStartOffsetBytes:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 514
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Segment start/end offsets unknown"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->durationUs:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 516
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Duration unknown"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cuesSizeBytes:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 518
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Cues size unknown"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 520
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 521
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Invalid/missing cue points"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/LongArray;->size()I

    move-result v6

    .line 524
    new-array v2, v6, [I

    .line 525
    new-array v3, v6, [J

    .line 526
    new-array v4, v6, [J

    .line 527
    new-array v5, v6, [J

    move v1, v0

    .line 528
    :goto_0
    if-ge v1, v6, :cond_5

    .line 529
    iget-object v7, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer/util/LongArray;->get(I)J

    move-result-wide v8

    aput-wide v8, v5, v1

    .line 530
    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->segmentStartOffsetBytes:J

    iget-object v7, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer/util/LongArray;->get(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v1

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    :cond_5
    :goto_1
    add-int/lit8 v1, v6, -0x1

    if-ge v0, v1, :cond_6

    .line 533
    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v3, v1

    aget-wide v10, v3, v0

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v2, v0

    .line 534
    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v5, v1

    aget-wide v10, v5, v0

    sub-long/2addr v8, v10

    aput-wide v8, v4, v0

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 536
    :cond_6
    add-int/lit8 v0, v6, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->segmentEndOffsetBytes:J

    add-int/lit8 v1, v6, -0x1

    aget-wide v10, v3, v1

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v2, v0

    .line 537
    add-int/lit8 v0, v6, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->durationUs:J

    add-int/lit8 v1, v6, -0x1

    aget-wide v6, v5, v1

    sub-long v6, v8, v6

    aput-wide v6, v4, v0

    .line 538
    new-instance v0, Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    iget-wide v6, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cuesSizeBytes:J

    long-to-int v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;-><init>(I[I[J[J[J)V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cues:Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    .line 539
    iput-object v12, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 540
    iput-object v12, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    .line 541
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    .line 542
    return-void
.end method

.method private buildVideoFormat()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 464
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->pixelWidth:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->pixelHeight:I

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->pixelWidth:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->pixelHeight:I

    if-eq v0, v1, :cond_2

    .line 466
    :cond_0
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->pixelWidth:I

    iget v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->pixelHeight:I

    const/4 v3, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 468
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    .line 472
    :cond_1
    return-void

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v0, :cond_1

    .line 470
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Unable to build format"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isCodecSupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 451
    const-string/jumbo v0, "V_VP9"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_OPUS"

    .line 452
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A_VORBIS"

    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    .line 453
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseVorbisCodecPrivate()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 555
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v0

    move v3, v4

    .line 559
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    aget-byte v1, v1, v3

    if-ne v1, v6, :cond_1

    .line 560
    add-int/lit16 v1, v2, 0xff

    .line 561
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 563
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v5, v3

    add-int/2addr v2, v3

    .line 566
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    aget-byte v3, v3, v1

    if-ne v3, v6, :cond_2

    .line 567
    add-int/lit16 v0, v0, 0xff

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 570
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v3, v1

    add-int/2addr v0, v1

    .line 572
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    aget-byte v1, v1, v5

    if-eq v1, v4, :cond_3

    .line 573
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_3
    new-array v1, v2, [B

    .line 576
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    const/4 v4, 0x0

    invoke-static {v3, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    add-int/2addr v2, v5

    .line 578
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 579
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_4
    add-int/2addr v0, v2

    .line 582
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    aget-byte v2, v2, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    .line 583
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 586
    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    array-length v5, v5

    sub-int/2addr v5, v0

    invoke-static {v3, v0, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 588
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 590
    return-object v0
.end method

.method private scaleTimecodeToUs(J)J
    .locals 5

    .prologue
    .line 447
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->timecodeScale:J

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 186
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->durationUs:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->durationUs:J

    goto :goto_0
.end method

.method getElementType(I)I
    .locals 1

    .prologue
    .line 196
    sparse-switch p1, :sswitch_data_0

    .line 233
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 209
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 221
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 224
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 228
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 231
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_2
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xae -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb3 -> :sswitch_1
        0xb5 -> :sswitch_4
        0xb7 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe7 -> :sswitch_1
        0xf1 -> :sswitch_1
        0x4282 -> :sswitch_2
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_1
        0x4489 -> :sswitch_4
        0x56aa -> :sswitch_1
        0x56bb -> :sswitch_1
        0x63a2 -> :sswitch_3
        0x2ad7b1 -> :sswitch_1
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_0
        0x18538067 -> :sswitch_0
        0x1a45dfa3 -> :sswitch_0
        0x1c53bb6b -> :sswitch_0
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method public getFormat()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->format:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getIndex()Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cues:Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    return-object v0
.end method

.method public getPsshInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasRelativeIndexOffsets()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method onBinaryElement(IJIILcom/google/android/exoplayer/upstream/NonBlockingInputStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 367
    sparse-switch p1, :sswitch_data_0

    .line 443
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 376
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    if-nez v0, :cond_0

    .line 377
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    .line 378
    const/4 v0, 0x0

    goto :goto_1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

    invoke-interface {v0, p6}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;->readVarint(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)J

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeAndFlags:[B

    const/4 v2, 0x3

    invoke-interface {v0, p6, v1, v2}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;->readBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;[BI)V

    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeAndFlags:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeAndFlags:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 390
    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v2

    .line 394
    const/16 v0, 0xa1

    if-ne p1, v0, :cond_1

    .line 399
    const/4 v0, 0x1

    .line 403
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeAndFlags:[B

    const/4 v4, 0x2

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    .line 404
    :goto_3
    iget-object v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeAndFlags:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x1

    .line 407
    packed-switch v4, :pswitch_data_0

    .line 420
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Lacing mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeAndFlags:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 403
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 409
    :pswitch_0
    int-to-long v4, p4

    add-long/2addr v4, p2

    int-to-long v6, p5

    add-long/2addr v4, v6

    .line 410
    iget-wide v6, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->clusterTimecodeUs:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeUs:J

    .line 411
    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    iput v0, v6, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iput-boolean v1, v0, Lcom/google/android/exoplayer/SampleHolder;->decodeOnly:Z

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v6, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->clusterTimecodeUs:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

    invoke-interface {v1}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;->getBytesRead()J

    move-result-wide v2

    sub-long v2, v4, v2

    long-to-int v1, v2

    iput v1, v0, Lcom/google/android/exoplayer/SampleHolder;->size:I

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v1, v1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    if-ge v0, v1, :cond_5

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v1, v1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;->replaceBuffer(I)Z

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    .line 428
    if-nez v0, :cond_7

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v1, v1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-interface {v0, p6, v1}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;->skipBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;I)V

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/exoplayer/SampleHolder;->size:I

    .line 434
    :goto_5
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    goto/16 :goto_0

    .line 411
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 432
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget v2, v2, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-interface {v1, p6, v0, v2}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;->readBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Ljava/nio/ByteBuffer;I)V

    goto :goto_5

    .line 437
    :sswitch_1
    new-array v0, p5, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecPrivate:[B

    invoke-interface {v0, p6, v1, p5}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;->readBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;[BI)V

    goto/16 :goto_0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_0
        0xa3 -> :sswitch_0
        0x63a2 -> :sswitch_1
    .end sparse-switch

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method onFloatElement(ID)Z
    .locals 2

    .prologue
    .line 330
    sparse-switch p1, :sswitch_data_0

    .line 340
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 332
    :sswitch_0
    double-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->durationUs:J

    goto :goto_0

    .line 335
    :sswitch_1
    double-to-int v0, p2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleRate:I

    goto :goto_0

    .line 330
    nop

    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_1
        0x4489 -> :sswitch_0
    .end sparse-switch
.end method

.method onIntegerElement(IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x1

    .line 283
    sparse-switch p1, :sswitch_data_0

    .line 326
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 286
    :sswitch_0
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EBMLReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :sswitch_1
    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 293
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DocTypeReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :sswitch_2
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->timecodeScale:J

    goto :goto_0

    .line 300
    :sswitch_3
    long-to-int v0, p2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->pixelWidth:I

    goto :goto_0

    .line 303
    :sswitch_4
    long-to-int v0, p2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->pixelHeight:I

    goto :goto_0

    .line 306
    :sswitch_5
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecDelayNs:J

    goto :goto_0

    .line 309
    :sswitch_6
    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->seekPreRollNs:J

    goto :goto_0

    .line 312
    :sswitch_7
    long-to-int v0, p2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->channelCount:I

    goto :goto_0

    .line 315
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/util/LongArray;->add(J)V

    goto :goto_0

    .line 318
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer/util/LongArray;->add(J)V

    goto :goto_0

    .line 321
    :sswitch_a
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->clusterTimecodeUs:J

    goto :goto_0

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x9f -> :sswitch_7
        0xb0 -> :sswitch_3
        0xb3 -> :sswitch_8
        0xba -> :sswitch_4
        0xe7 -> :sswitch_a
        0xf1 -> :sswitch_9
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_0
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_6
        0x2ad7b1 -> :sswitch_2
    .end sparse-switch
.end method

.method onMasterElementEnd(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 260
    sparse-switch p1, :sswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 262
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->buildCues()V

    .line 263
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->buildVideoFormat()V

    goto :goto_0

    .line 268
    :sswitch_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->seenAudioTrack:Z

    goto :goto_0

    .line 271
    :sswitch_3
    iget-boolean v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->seenAudioTrack:Z

    if-eqz v1, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->buildAudioFormat()V

    goto :goto_0

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0xae -> :sswitch_3
        0xe0 -> :sswitch_1
        0xe1 -> :sswitch_2
        0x1c53bb6b -> :sswitch_0
    .end sparse-switch
.end method

.method onMasterElementStart(IJIJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 240
    sparse-switch p1, :sswitch_data_0

    .line 256
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 242
    :sswitch_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->segmentStartOffsetBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->segmentEndOffsetBytes:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string/jumbo v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    int-to-long v0, p4

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->segmentStartOffsetBytes:J

    .line 246
    int-to-long v0, p4

    add-long/2addr v0, p2

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->segmentEndOffsetBytes:J

    goto :goto_0

    .line 249
    :sswitch_1
    int-to-long v0, p4

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cuesSizeBytes:J

    .line 250
    new-instance v0, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueTimesUs:Lcom/google/android/exoplayer/util/LongArray;

    .line 251
    new-instance v0, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cueClusterPositions:Lcom/google/android/exoplayer/util/LongArray;

    goto :goto_0

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x18538067 -> :sswitch_0
        0x1c53bb6b -> :sswitch_1
    .end sparse-switch
.end method

.method onStringElement(ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 344
    sparse-switch p1, :sswitch_data_0

    .line 361
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 347
    :sswitch_0
    const-string/jumbo v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DocType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CodecID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->codecId:Ljava/lang/String;

    goto :goto_0

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_1
        0x4282 -> :sswitch_0
    .end sparse-switch
.end method

.method public read(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Lcom/google/android/exoplayer/SampleHolder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 137
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    .line 139
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    and-int/lit8 v0, v0, 0x27

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;->read(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I

    move-result v0

    .line 141
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 142
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    goto :goto_0

    .line 143
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 144
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    goto :goto_0

    .line 147
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 148
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->readResults:I

    return v0
.end method

.method public seekTo(JZ)Z
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    .line 153
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cues:Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->clusterTimecodeUs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeUs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cues:Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;->timesUs:[J

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->clusterTimecodeUs:J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 159
    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->clusterTimecodeUs:J

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->cues:Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;->durationsUs:[J

    aget-wide v0, v1, v0

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_0
    iput-wide v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->clusterTimecodeUs:J

    .line 164
    iput-wide v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->simpleBlockTimecodeUs:J

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;->reader:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;->reset()V

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method
