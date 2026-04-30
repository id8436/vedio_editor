.class public Lcom/adobe/customextractor/extractor/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:I = 0x40000

.field public static final RESULT_CONTINUE:I = 0x1

.field public static final RESULT_END_OF_INPUT:I = -0x1

.field public static final RESULT_SEEK:I = 0x0

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CustomExtractor"


# instance fields
.field private atomBytesRead:I

.field private atomData:Lcom/adobe/customextractor/Util/ParsableByteArray;

.field private atomHeader:Lcom/adobe/customextractor/Util/ParsableByteArray;

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private extractorOutput:Lcom/adobe/customextractor/extractor/ExtractorOutput;

.field private extractorState:I

.field private final nalLength:Lcom/adobe/customextractor/Util/ParsableByteArray;

.field private final nalStartCode:Lcom/adobe/customextractor/Util/ParsableByteArray;

.field private rootAtomBytesRead:J

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/adobe/customextractor/Util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomHeader:Lcom/adobe/customextractor/Util/ParsableByteArray;

    .line 68
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->containerAtoms:Ljava/util/Stack;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorState:I

    .line 70
    new-instance v0, Lcom/adobe/customextractor/Util/ParsableByteArray;

    sget-object v1, Lcom/adobe/customextractor/Util/CodecUtil/H264Util;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->nalStartCode:Lcom/adobe/customextractor/Util/ParsableByteArray;

    .line 71
    new-instance v0, Lcom/adobe/customextractor/Util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->nalLength:Lcom/adobe/customextractor/Util/ParsableByteArray;

    .line 72
    return-void
.end method

.method private getNextOrEqualClosestPosition(J)J
    .locals 7

    .prologue
    .line 151
    const-wide v2, 0x7fffffffffffffffL

    .line 152
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v1, v1, v0

    iget-object v4, v1, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    .line 154
    invoke-virtual {v4, p1, p2}, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->getIndexOfLaterOrEqualClosestSample(J)I

    move-result v1

    .line 155
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 156
    invoke-virtual {v4, p1, p2}, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    .line 158
    :cond_0
    iget-object v5, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v5, v5, v0

    iput v1, v5, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    .line 160
    iget-object v1, v4, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->offsets:[J

    iget-object v4, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    aget-wide v4, v1, v4

    .line 161
    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    move-wide v2, v4

    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    return-wide v2
.end method

.method private getNextOrEqualSyncPosition(J)J
    .locals 7

    .prologue
    .line 169
    const-wide v2, 0x7fffffffffffffffL

    .line 170
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v1, v1, v0

    iget-object v4, v1, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    .line 172
    invoke-virtual {v4, p1, p2}, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    .line 173
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 174
    invoke-virtual {v4, p1, p2}, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    .line 176
    :cond_0
    iget-object v5, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v5, v5, v0

    iput v1, v5, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    .line 178
    iget-object v1, v4, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->offsets:[J

    iget-object v4, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    aget-wide v4, v1, v4

    .line 179
    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    move-wide v2, v4

    .line 170
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_2
    return-wide v2
.end method

.method private getPrevSyncPosition(J)J
    .locals 7

    .prologue
    .line 133
    const-wide v2, 0x7fffffffffffffffL

    .line 134
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v1, v1, v0

    iget-object v4, v1, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    .line 136
    invoke-virtual {v4, p1, p2}, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    .line 137
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 138
    invoke-virtual {v4, p1, p2}, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    .line 140
    :cond_0
    iget-object v5, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v5, v5, v0

    iput v1, v5, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    .line 142
    iget-object v1, v4, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->offsets:[J

    iget-object v4, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    aget-wide v4, v1, v4

    .line 143
    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    move-wide v2, v4

    .line 134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_2
    return-wide v2
.end method

.method private getTrackIndexOfEarliestCurrentSample()I
    .locals 7

    .prologue
    .line 373
    const/4 v1, -0x1

    .line 374
    const-wide v2, 0x7fffffffffffffffL

    .line 375
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 376
    iget-object v4, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v4, v4, v0

    .line 377
    iget v5, v4, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    .line 378
    iget-object v6, v4, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    iget v6, v6, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->sampleCount:I

    if-ne v5, v6, :cond_1

    .line 375
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    iget-object v4, v4, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    iget-object v4, v4, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->offsets:[J

    aget-wide v4, v4, v5

    .line 383
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    move-wide v2, v4

    move v1, v0

    .line 385
    goto :goto_1

    .line 389
    :cond_2
    return v1
.end method

.method private processMoovAtom(Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 338
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 339
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    move v1, v2

    .line 340
    :goto_0
    iget-object v0, p1, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 341
    iget-object v0, p1, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    .line 342
    iget v6, v0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->type:I

    sget v7, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_trak:I

    if-eq v6, v7, :cond_1

    .line 340
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 346
    :cond_1
    sget v6, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mvhd:I

    invoke-virtual {p1, v6}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseTrak(Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;)Lcom/adobe/customextractor/Tracks/Track;

    move-result-object v6

    .line 347
    if-eqz v6, :cond_0

    iget v7, v6, Lcom/adobe/customextractor/Tracks/Track;->type:I

    const v8, 0x736f756e

    if-eq v7, v8, :cond_2

    iget v7, v6, Lcom/adobe/customextractor/Tracks/Track;->type:I

    const v8, 0x76696465

    if-ne v7, v8, :cond_0

    .line 351
    :cond_2
    sget v7, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mdia:I

    invoke-virtual {v0, v7}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    move-result-object v0

    sget v7, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_minf:I

    .line 352
    invoke-virtual {v0, v7}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    move-result-object v0

    sget v7, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stbl:I

    invoke-virtual {v0, v7}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    move-result-object v0

    .line 353
    invoke-static {v6, v0}, Lcom/adobe/customextractor/Util/Atom/AtomParsers;->parseStbl(Lcom/adobe/customextractor/Tracks/Track;Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;)Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    move-result-object v0

    .line 354
    iget v7, v0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->sampleCount:I

    if-eqz v7, :cond_0

    .line 358
    new-instance v7, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    iget-object v8, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorOutput:Lcom/adobe/customextractor/extractor/ExtractorOutput;

    invoke-interface {v8, v1}, Lcom/adobe/customextractor/extractor/ExtractorOutput;->getTrackOutput(I)Lcom/adobe/customextractor/Tracks/TrackOutput;

    move-result-object v8

    invoke-direct {v7, v6, v0, v8}, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;-><init>(Lcom/adobe/customextractor/Tracks/Track;Lcom/adobe/customextractor/Tracks/TrackSampleTable;Lcom/adobe/customextractor/Tracks/TrackOutput;)V

    .line 359
    iget-object v8, v7, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->trackOutput:Lcom/adobe/customextractor/Tracks/TrackOutput;

    iget-object v6, v6, Lcom/adobe/customextractor/Tracks/Track;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    invoke-interface {v8, v6}, Lcom/adobe/customextractor/Tracks/TrackOutput;->format(Lcom/adobe/customextractor/Util/Media/MediaFormat;)V

    .line 360
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, v0, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->offsets:[J

    aget-wide v6, v0, v2

    .line 363
    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    move-wide v4, v6

    .line 364
    goto :goto_1

    .line 367
    :cond_3
    new-array v0, v2, [Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    .line 368
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorOutput:Lcom/adobe/customextractor/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/adobe/customextractor/extractor/ExtractorOutput;->builtTracks()V

    .line 369
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorState:I

    .line 370
    return-void
.end method

.method private readAtomHeader(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomHeader:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v8, v1}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return v2

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomHeader:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 208
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomHeader:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    .line 209
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomHeader:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomType:I

    .line 210
    iget-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomHeader:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v8, v8}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->readFully([BII)V

    .line 213
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomHeader:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    .line 214
    iget-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    .line 215
    const/16 v0, 0x10

    iput v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomBytesRead:I

    .line 221
    :goto_1
    iget v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomType:I

    invoke-static {v0}, Lcom/adobe/customextractor/extractor/Parser;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->containerAtoms:Ljava/util/Stack;

    new-instance v3, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    iget v4, p0, Lcom/adobe/customextractor/extractor/Parser;->atomType:I

    iget-wide v6, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    iget-wide v8, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    add-long/2addr v6, v8

    iget v5, p0, Lcom/adobe/customextractor/extractor/Parser;->atomBytesRead:I

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-direct {v3, v4, v6, v7}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 229
    :goto_2
    iput v2, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorState:I

    :goto_3
    move v2, v1

    .line 240
    goto :goto_0

    .line 217
    :cond_1
    iget-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    .line 218
    iput v8, p0, Lcom/adobe/customextractor/extractor/Parser;->atomBytesRead:I

    goto :goto_1

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->containerAtoms:Ljava/util/Stack;

    new-instance v3, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    iget v4, p0, Lcom/adobe/customextractor/extractor/Parser;->atomType:I

    iget-wide v6, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    iget-wide v8, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    add-long/2addr v6, v8

    iget v5, p0, Lcom/adobe/customextractor/extractor/Parser;->atomBytesRead:I

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-direct {v3, v4, v6, v7}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    :cond_3
    iget v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomType:I

    invoke-static {v0}, Lcom/adobe/customextractor/extractor/Parser;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    iget-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkState(Z)V

    .line 232
    new-instance v0, Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lcom/adobe/customextractor/Util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomData:Lcom/adobe/customextractor/Util/ParsableByteArray;

    .line 233
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomHeader:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget-object v3, p0, Lcom/adobe/customextractor/extractor/Parser;->atomData:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v3, v3, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    invoke-static {v0, v2, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iput v1, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorState:I

    goto :goto_3

    :cond_4
    move v0, v2

    .line 231
    goto :goto_4

    .line 236
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomData:Lcom/adobe/customextractor/Util/ParsableByteArray;

    .line 237
    iput v1, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorState:I

    goto :goto_3
.end method

.method private readAtomPayload(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;Lcom/adobe/customextractor/Util/PositionHolder;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorState:I

    .line 246
    iget-wide v2, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    iget-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    iget v1, p0, Lcom/adobe/customextractor/extractor/Parser;->atomBytesRead:I

    int-to-long v6, v1

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    .line 247
    iget-wide v2, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    iget v1, p0, Lcom/adobe/customextractor/extractor/Parser;->atomBytesRead:I

    int-to-long v4, v1

    sub-long v4, v2, v4

    .line 248
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->atomData:Lcom/adobe/customextractor/Util/ParsableByteArray;

    if-nez v1, :cond_2

    iget-wide v2, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    const-wide/32 v6, 0x40000

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    iget-wide v2, p0, Lcom/adobe/customextractor/extractor/Parser;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    .line 250
    :goto_0
    if-eqz v2, :cond_3

    .line 251
    iget-wide v0, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    iput-wide v0, p2, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    .line 261
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    iget-wide v0, v0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->endByteOffset:J

    iget-wide v4, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 262
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    .line 263
    iget v1, v0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->type:I

    sget v3, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_moov:I

    if-ne v1, v3, :cond_5

    .line 264
    invoke-direct {p0, v0}, Lcom/adobe/customextractor/extractor/Parser;->processMoovAtom(Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;)V

    goto :goto_1

    :cond_2
    move v2, v0

    .line 248
    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomData:Lcom/adobe/customextractor/Util/ParsableByteArray;

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->atomData:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    iget v1, p0, Lcom/adobe/customextractor/extractor/Parser;->atomBytesRead:I

    long-to-int v3, v4

    invoke-interface {p1, v0, v1, v3}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->readFully([BII)V

    .line 254
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/Parser;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    new-instance v1, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;

    iget v3, p0, Lcom/adobe/customextractor/extractor/Parser;->atomType:I

    iget-object v4, p0, Lcom/adobe/customextractor/extractor/Parser;->atomData:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-direct {v1, v3, v4}, Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;-><init>(ILcom/adobe/customextractor/Util/ParsableByteArray;)V

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->add(Lcom/adobe/customextractor/Util/Atom/Atom$LeafAtom;)V

    goto :goto_1

    .line 258
    :cond_4
    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->skipFully(I)V

    goto :goto_1

    .line 265
    :cond_5
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;->add(Lcom/adobe/customextractor/Util/Atom/Atom$ContainerAtom;)V

    goto :goto_1

    .line 269
    :cond_6
    return v2
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    .prologue
    .line 393
    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mp4a:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1

    .prologue
    .line 398
    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_vmhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_smhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_avc1:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_avcC:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_mp4a:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_esds:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stts:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stss:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_ctts:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stsc:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stsz:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_stco:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_co64:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/adobe/customextractor/Util/Atom/Atom;->TYPE_wave:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPosition(JI)J
    .locals 3

    .prologue
    .line 187
    packed-switch p3, :pswitch_data_0

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/adobe/customextractor/extractor/Parser;->getPrevSyncPosition(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 189
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/customextractor/extractor/Parser;->getPrevSyncPosition(J)J

    move-result-wide v0

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/adobe/customextractor/extractor/Parser;->getNextOrEqualClosestPosition(J)J

    move-result-wide v0

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/adobe/customextractor/extractor/Parser;->getNextOrEqualSyncPosition(J)J

    move-result-wide v0

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public prepare(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;Lcom/adobe/customextractor/DataSource/DataSource;Landroid/net/Uri;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    new-instance v9, Lcom/adobe/customextractor/Util/PositionHolder;

    invoke-direct {v9}, Lcom/adobe/customextractor/Util/PositionHolder;-><init>()V

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    .line 78
    iput v7, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorState:I

    move v0, v7

    .line 80
    :cond_0
    :goto_0
    iget v1, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorState:I

    packed-switch v1, :pswitch_data_0

    .line 97
    return v8

    .line 82
    :pswitch_0
    const-string/jumbo v1, "CustomExtractor"

    const-string/jumbo v2, "Read atom header"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0, p1}, Lcom/adobe/customextractor/extractor/Parser;->readAtomHeader(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    if-eqz p1, :cond_1

    .line 85
    invoke-interface {p1}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    :cond_1
    move v0, v8

    .line 99
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "CustomExtractor"

    const-string/jumbo v1, "Retry: Closing Data source"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {p2}, Lcom/adobe/customextractor/DataSource/DataSource;->close()V

    .line 102
    const-string/jumbo v0, "CustomExtractor"

    const-string/jumbo v1, "Retry: Closed Data source"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-wide v2, v9, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    .line 104
    const-string/jumbo v0, "CustomExtractor"

    const-string/jumbo v1, "Retry: Opening data source"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_0
    new-instance v0, Lcom/adobe/customextractor/DataSource/DataSpec;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/customextractor/DataSource/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/adobe/customextractor/DataSource/DataSource;->open(Lcom/adobe/customextractor/DataSource/DataSpec;)J

    move-result-wide v4

    .line 107
    const-string/jumbo v0, "CustomExtractor"

    const-string/jumbo v1, "Retyr: Opened data source"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    cmp-long v0, v4, v10

    if-eqz v0, :cond_3

    .line 109
    add-long/2addr v4, v2

    .line 111
    :cond_3
    new-instance v0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;-><init>(Lcom/adobe/customextractor/DataSource/DataSource;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    move v0, v7

    .line 118
    goto :goto_0

    .line 91
    :pswitch_1
    const-string/jumbo v1, "CustomExtractor"

    const-string/jumbo v2, "Read atom payload"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0, p1, v9}, Lcom/adobe/customextractor/extractor/Parser;->readAtomPayload(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;Lcom/adobe/customextractor/Util/PositionHolder;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v8

    .line 93
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string/jumbo v1, "CustomExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException while opening data source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    throw v0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readSampleData(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;Lcom/adobe/customextractor/Util/PositionHolder;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/adobe/customextractor/extractor/Parser;->getTrackIndexOfEarliestCurrentSample()I

    move-result v0

    .line 274
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 275
    const/4 v0, -0x1

    .line 334
    :goto_0
    return v0

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->tracks:[Lcom/adobe/customextractor/extractor/Parser$Mp4Track;

    aget-object v8, v1, v0

    .line 278
    if-eq p3, v0, :cond_1

    .line 279
    iget v0, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    .line 280
    const/4 v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    iget v0, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    .line 283
    iget-object v1, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    iget-object v1, v1, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->offsets:[J

    aget-wide v2, v1, v0

    .line 284
    invoke-interface {p1}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v2, v4

    iget v1, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 285
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    const-wide/32 v6, 0x40000

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    .line 286
    :cond_2
    iput-wide v2, p2, Lcom/adobe/customextractor/Util/PositionHolder;->position:J

    .line 287
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :cond_3
    long-to-int v1, v4

    invoke-interface {p1, v1}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->skipFully(I)V

    .line 290
    iget-object v1, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    iget-object v1, v1, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->sizes:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleSize:I

    .line 292
    iget-object v1, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->track:Lcom/adobe/customextractor/Tracks/Track;

    iget v1, v1, Lcom/adobe/customextractor/Tracks/Track;->nalUnitLengthFieldLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 295
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/Parser;->nalLength:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v1, v1, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    .line 296
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 297
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 298
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 299
    iget-object v1, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->track:Lcom/adobe/customextractor/Tracks/Track;

    iget v1, v1, Lcom/adobe/customextractor/Tracks/Track;->nalUnitLengthFieldLength:I

    .line 300
    iget-object v2, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->track:Lcom/adobe/customextractor/Tracks/Track;

    iget v2, v2, Lcom/adobe/customextractor/Tracks/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v2, v2, 0x4

    .line 304
    :goto_1
    iget v3, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    iget v4, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleSize:I

    if-ge v3, v4, :cond_6

    .line 305
    iget v3, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleCurrentNalBytesRemaining:I

    if-nez v3, :cond_4

    .line 307
    iget-object v3, p0, Lcom/adobe/customextractor/extractor/Parser;->nalLength:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v3, v3, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v2, v1}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->readFully([BII)V

    .line 308
    iget-object v3, p0, Lcom/adobe/customextractor/extractor/Parser;->nalLength:Lcom/adobe/customextractor/Util/ParsableByteArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 309
    iget-object v3, p0, Lcom/adobe/customextractor/extractor/Parser;->nalLength:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    iput v3, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleCurrentNalBytesRemaining:I

    .line 311
    iget-object v3, p0, Lcom/adobe/customextractor/extractor/Parser;->nalStartCode:Lcom/adobe/customextractor/Util/ParsableByteArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 312
    iget-object v3, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->trackOutput:Lcom/adobe/customextractor/Tracks/TrackOutput;

    iget-object v4, p0, Lcom/adobe/customextractor/extractor/Parser;->nalStartCode:Lcom/adobe/customextractor/Util/ParsableByteArray;

    const/4 v5, 0x4

    invoke-interface {v3, v4, v5}, Lcom/adobe/customextractor/Tracks/TrackOutput;->sampleData(Lcom/adobe/customextractor/Util/ParsableByteArray;I)V

    .line 313
    iget v3, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    .line 314
    iget v3, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleSize:I

    goto :goto_1

    .line 317
    :cond_4
    iget-object v3, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->trackOutput:Lcom/adobe/customextractor/Tracks/TrackOutput;

    iget v4, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v3, p1, v4}, Lcom/adobe/customextractor/Tracks/TrackOutput;->sampleData(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;I)I

    move-result v3

    .line 318
    iget v4, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    .line 319
    iget v4, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleCurrentNalBytesRemaining:I

    sub-int v3, v4, v3

    iput v3, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    .line 323
    :cond_5
    :goto_2
    iget v1, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    iget v2, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleSize:I

    if-ge v1, v2, :cond_6

    .line 324
    iget-object v1, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->trackOutput:Lcom/adobe/customextractor/Tracks/TrackOutput;

    iget v2, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleSize:I

    iget v3, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    sub-int/2addr v2, v3

    invoke-interface {v1, p1, v2}, Lcom/adobe/customextractor/Tracks/TrackOutput;->sampleData(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;I)I

    move-result v1

    .line 325
    iget v2, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    .line 326
    iget v2, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleCurrentNalBytesRemaining:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    .line 329
    :cond_6
    iget-object v1, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->trackOutput:Lcom/adobe/customextractor/Tracks/TrackOutput;

    iget-object v2, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    iget-object v2, v2, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->timestampsUs:[J

    aget-wide v2, v2, v0

    iget-object v4, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    iget-object v4, v4, Lcom/adobe/customextractor/Tracks/TrackSampleTable;->flags:[I

    aget v4, v4, v0

    iget v5, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/adobe/customextractor/Tracks/TrackOutput;->sampleMetadata(JIII[B)V

    .line 331
    iget v0, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleIndex:I

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleCurrentNalBytesRemaining:I

    .line 334
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public seek()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/customextractor/extractor/Parser;->rootAtomBytesRead:J

    .line 128
    iput v2, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleBytesWritten:I

    .line 129
    iput v2, p0, Lcom/adobe/customextractor/extractor/Parser;->sampleCurrentNalBytesRemaining:I

    .line 130
    return-void
.end method

.method public setExtractorOutput(Lcom/adobe/customextractor/extractor/ExtractorOutput;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/adobe/customextractor/extractor/Parser;->extractorOutput:Lcom/adobe/customextractor/extractor/ExtractorOutput;

    .line 124
    return-void
.end method
