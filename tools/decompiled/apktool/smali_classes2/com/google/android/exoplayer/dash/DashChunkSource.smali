.class public Lcom/google/android/exoplayer/dash/DashChunkSource;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;


# static fields
.field public static final USE_ALL_TRACKS:I = -0x1


# instance fields
.field private final adaptationSetIndex:I

.field private currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final evaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

.field private fatalError:Ljava/io/IOException;

.field private finishedCurrentManifest:Z

.field private final formats:[Lcom/google/android/exoplayer/chunk/Format;

.field private final headerBuilder:Ljava/lang/StringBuilder;

.field private lastChunkWasInitialization:Z

.field private final liveEdgeLatencyUs:J

.field private final manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final maxHeight:I

.field private final maxWidth:I

.field private final psshInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private final representationHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final representationIndices:[I

.field private final trackInfo:Lcom/google/android/exoplayer/TrackInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V
    .locals 10

    .prologue
    .line 143
    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->buildManifest(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    .line 128
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;[Lcom/google/android/exoplayer/dash/mpd/Representation;)V
    .locals 6

    .prologue
    .line 115
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->buildManifest(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const-wide/16 v0, 0x3e8

    mul-long v8, p6, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/dash/DashChunkSource;-><init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V

    .line 171
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/util/ManifestFetcher;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[ILcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/chunk/FormatEvaluator;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            "I[I",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 178
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 179
    iput p3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptationSetIndex:I

    .line 180
    iput-object p4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationIndices:[I

    .line 181
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 182
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    .line 183
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    .line 184
    new-instance v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v2}, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    .line 187
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-static {v2, p3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getPsshInfo(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->psshInfo:Ljava/util/Map;

    .line 188
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-static {v2, p3, p4}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getFilteredRepresentations(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v6

    .line 190
    const/4 v2, 0x0

    aget-object v2, v6, v2

    iget-wide v2, v2, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    .line 192
    :goto_0
    new-instance v4, Lcom/google/android/exoplayer/TrackInfo;

    const/4 v5, 0x0

    aget-object v5, v6, v5

    iget-object v5, v5, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    .line 194
    array-length v2, v6

    new-array v2, v2, [Lcom/google/android/exoplayer/chunk/Format;

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    .line 195
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    .line 196
    const/4 v4, 0x0

    .line 197
    const/4 v3, 0x0

    .line 198
    const/4 v2, 0x0

    :goto_1
    array-length v5, v6

    if-ge v2, v5, :cond_2

    .line 199
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v7, v6, v2

    iget-object v7, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    aput-object v7, v5, v2

    .line 200
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/google/android/exoplayer/chunk/Format;->width:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 201
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/google/android/exoplayer/chunk/Format;->height:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 202
    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer/chunk/parser/webm/WebmExtractor;-><init>()V

    .line 204
    :goto_2
    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    new-instance v9, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    aget-object v10, v6, v2

    invoke-direct {v9, v10, v5}, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;-><init>(Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/parser/Extractor;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 190
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v6, v2

    iget-wide v2, v2, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_0

    .line 202
    :cond_1
    new-instance v5, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;

    invoke-direct {v5}, Lcom/google/android/exoplayer/chunk/parser/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_2

    .line 207
    :cond_2
    iput v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxWidth:I

    .line 208
    iput v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxHeight:I

    .line 209
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    new-instance v3, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v3}, Lcom/google/android/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/dash/DashChunkSource;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    return-object v0
.end method

.method private static buildManifest(Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 540
    new-instance v6, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {v6, v0, v1, p0}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;)V

    .line 541
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    const/4 v1, 0x0

    iget-wide v2, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodStartMs:J

    iget-wide v4, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    .line 542
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JJLjava/util/List;)V

    .line 543
    iget-wide v2, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodDurationMs:J

    iget-wide v4, v7, Lcom/google/android/exoplayer/dash/mpd/Representation;->periodStartMs:J

    sub-long v4, v2, v4

    .line 544
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    const-wide/16 v2, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    .line 545
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/util/List;)V

    .line 544
    return-object v1
.end method

.method private static getFilteredRepresentations(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 508
    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    .line 509
    if-nez p2, :cond_0

    .line 510
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 511
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 518
    :goto_0
    return-object v0

    .line 514
    :cond_0
    array-length v0, p2

    new-array v2, v0, [Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 515
    :goto_1
    array-length v0, p2

    if-ge v1, v0, :cond_1

    .line 516
    aget v0, p2, v1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Representation;

    aput-object v0, v2, v1

    .line 515
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 518
    goto :goto_0
.end method

.method private getLiveSeekPosition(JZZ)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 484
    if-eqz p3, :cond_1

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    mul-long/2addr v0, v8

    sub-long v2, p1, v0

    .line 502
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    sub-long v0, v2, v0

    return-wide v0

    .line 487
    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    .line 488
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 489
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 490
    invoke-interface {v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v1

    .line 491
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v6

    .line 492
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(I)J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 493
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    .line 494
    goto :goto_1

    .line 495
    :cond_2
    if-nez p4, :cond_0

    .line 498
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    mul-long/2addr v0, v8

    sub-long v0, p1, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method private static getPsshInfo(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 524
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->periods:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 525
    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    :goto_0
    return-object v1

    .line 528
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 529
    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->contentProtections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .line 530
    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    if-eqz v4, :cond_1

    .line 531
    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->uuid:Ljava/util/UUID;

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->data:[B

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 534
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method private mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 401
    const-string/jumbo v0, "video/webm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "audio/webm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newInitializationChunk(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/parser/Extractor;Lcom/google/android/exoplayer/upstream/DataSource;I)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 12

    .prologue
    .line 407
    .line 408
    const-wide/16 v0, 0x0

    .line 410
    if-eqz p1, :cond_1

    .line 413
    const/16 v9, 0xa

    .line 414
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->attemptMerge(Lcom/google/android/exoplayer/dash/mpd/RangedUri;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v2

    .line 415
    if-eqz v2, :cond_0

    .line 416
    const/16 v9, 0x1a

    .line 417
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->hasRelativeIndexOffsets()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 418
    iget-wide v0, p2, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, p2, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    add-long/2addr v0, v4

    move-object p1, v2

    move-wide v10, v0

    .line 430
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, p1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    .line 431
    invoke-virtual {p3}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 433
    new-instance v2, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;

    iget-object v7, p3, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object v3, p0

    move-object/from16 v4, p5

    move-object v5, v0

    move/from16 v6, p6

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;-><init>(Lcom/google/android/exoplayer/dash/DashChunkSource;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/parser/Extractor;IJ)V

    return-object v2

    :cond_0
    move-wide v10, v0

    .line 421
    goto :goto_0

    .line 425
    :cond_1
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->hasRelativeIndexOffsets()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    iget-wide v0, p2, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v2, p2, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    add-long/2addr v0, v2

    .line 428
    :cond_2
    const/16 v9, 0x12

    move-object p1, p2

    move-wide v10, v0

    goto :goto_0

    :cond_3
    move-object p1, v2

    move-wide v10, v0

    goto :goto_0
.end method

.method private newMediaChunk(Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;
    .locals 22

    .prologue
    .line 439
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 440
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 442
    move/from16 v0, p3

    invoke-interface {v5, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v20

    .line 443
    move/from16 v0, p3

    invoke-interface {v5, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getDurationUs(I)J

    move-result-wide v6

    add-long v12, v20, v6

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v4, v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-nez v4, :cond_1

    .line 446
    invoke-interface {v5}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v4

    move/from16 v0, p3

    if-ne v0, v4, :cond_1

    const/4 v4, 0x1

    .line 447
    :goto_0
    if-eqz v4, :cond_2

    const/4 v14, -0x1

    .line 450
    :goto_1
    move/from16 v0, p3

    invoke-interface {v5, v0}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentUrl(I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v8

    .line 451
    new-instance v4, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v5

    iget-wide v6, v8, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v8, v8, Lcom/google/android/exoplayer/dash/mpd/RangedUri;->length:J

    .line 452
    invoke-virtual {v11}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 454
    iget-wide v0, v11, Lcom/google/android/exoplayer/dash/mpd/Representation;->presentationTimeOffsetUs:J

    move-wide/from16 v18, v0

    .line 455
    iget-object v5, v11, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    const-string/jumbo v6, "text/vtt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 456
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeaderOffsetUs:J

    cmp-long v5, v6, v18

    if-eqz v5, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "EXO-HEADER"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "OFFSET:"

    .line 460
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->headerBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeader:[B

    .line 462
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeaderOffsetUs:J

    .line 464
    :cond_0
    new-instance v5, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;

    iget-object v8, v11, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    const/4 v9, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->vttHeader:[B

    move-object/from16 v16, v0

    move-object/from16 v6, p2

    move-object v7, v4

    move-wide/from16 v10, v20

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;IJJILcom/google/android/exoplayer/MediaFormat;[B)V

    .line 467
    :goto_2
    return-object v5

    .line 446
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 447
    :cond_2
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int v4, v4, p3

    add-int/lit8 v14, v4, 0x1

    goto/16 :goto_1

    .line 467
    :cond_3
    new-instance v5, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;

    iget-object v8, v11, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/dash/DashChunkSource;->psshInfo:Ljava/util/Map;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v6, p2

    move-object v7, v4

    move/from16 v9, p4

    move-wide/from16 v10, v20

    invoke-direct/range {v5 .. v19}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;IJJILcom/google/android/exoplayer/chunk/parser/Extractor;Ljava/util/Map;ZJ)V

    goto :goto_2
.end method


# virtual methods
.method public continueBuffering(J)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 247
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    if-eq v1, v0, :cond_3

    if-eqz v0, :cond_3

    .line 248
    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->adaptationSetIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationIndices:[I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getFilteredRepresentations(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;I[I)[Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v4

    .line 250
    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 251
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    iget-object v7, v6, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v7, v7, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    .line 252
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 253
    iget-object v7, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 254
    invoke-virtual {v6}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndex()Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    move-result-object v6

    .line 255
    invoke-interface {v6}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v8

    .line 256
    invoke-interface {v6, v8}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v10

    invoke-interface {v7, v10, v11}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v7

    sub-int/2addr v7, v8

    .line 258
    iget v8, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v7, v8

    iput v7, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    .line 259
    iput-object v6, v1, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 250
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 261
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 262
    iput-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->minUpdatePeriod:J

    .line 270
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 271
    const-wide/16 v0, 0x1388

    .line 274
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 275
    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getManifestLoadTimestamp()J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->requestRefresh()V

    goto :goto_0
.end method

.method public disable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->disable()V

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->disable()V

    .line 238
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->enable()V

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->enable()V

    .line 230
    :cond_0
    return-void
.end method

.method public final getChunkOperation(Ljava/util/List;JJLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;JJ",
            "Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 284
    const/4 v2, 0x0

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    .line 289
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    if-nez v2, :cond_3

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluator:Lcom/google/android/exoplayer/chunk/FormatEvaluator;

    iget-object v6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->formats:[Lcom/google/android/exoplayer/chunk/Format;

    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object v3, p1

    move-wide/from16 v4, p4

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer/chunk/FormatEvaluator;->evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    .line 292
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 293
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v3, v3, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    move-object/from16 v0, p6

    iput v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    .line 295
    if-nez v2, :cond_4

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_0

    .line 298
    :cond_4
    move-object/from16 v0, p6

    iget v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    if-eqz v3, :cond_5

    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    iget-object v3, v3, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    .line 299
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->representationHolders:Ljava/util/HashMap;

    iget-object v2, v2, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    .line 306
    iget-object v5, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplayer/dash/mpd/Representation;

    .line 307
    iget-object v7, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 308
    iget-object v6, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    .line 310
    const/4 v3, 0x0

    .line 311
    const/4 v4, 0x0

    .line 313
    invoke-interface {v6}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v8

    if-nez v8, :cond_6

    .line 314
    invoke-virtual {v5}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getInitializationUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    .line 316
    :cond_6
    if-nez v7, :cond_7

    .line 317
    invoke-virtual {v5}, Lcom/google/android/exoplayer/dash/mpd/Representation;->getIndexUri()Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v4

    .line 320
    :cond_7
    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    .line 322
    :cond_8
    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v8, v2, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/dash/DashChunkSource;->newInitializationChunk(Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/RangedUri;Lcom/google/android/exoplayer/dash/mpd/Representation;Lcom/google/android/exoplayer/chunk/parser/Extractor;Lcom/google/android/exoplayer/upstream/DataSource;I)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v2

    .line 324
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    .line 325
    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    .line 330
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v4

    .line 332
    invoke-interface {v7}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v3

    .line 333
    invoke-interface {v7}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum()I

    move-result v4

    .line 334
    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    const/4 v5, 0x1

    move v6, v5

    .line 335
    :goto_1
    if-eqz v6, :cond_13

    .line 338
    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v4, v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v4, v10

    sub-long v4, v8, v4

    .line 339
    iget-object v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v10, v10, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    .line 340
    iget-object v10, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v10, v10, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    .line 341
    sub-long v10, v4, v10

    .line 342
    invoke-interface {v7, v10, v11}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v10

    .line 341
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 346
    :cond_a
    invoke-interface {v7, v4, v5}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move v5, v3

    .line 350
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 351
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v3, v3, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v3, :cond_b

    .line 352
    invoke-interface {v7}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v3

    invoke-direct {p0, v8, v9, v6, v3}, Lcom/google/android/exoplayer/dash/DashChunkSource;->getLiveSeekPosition(JZZ)J

    move-result-wide p2

    .line 354
    :cond_b
    move-wide/from16 v0, p2

    invoke-interface {v7, v0, v1}, Lcom/google/android/exoplayer/dash/DashSegmentIndex;->getSegmentNum(J)I

    move-result v3

    .line 360
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->currentManifest:Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v7, v7, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v7, :cond_11

    .line 361
    if-ge v3, v5, :cond_e

    .line 363
    new-instance v2, Lcom/google/android/exoplayer/BehindLiveWindowException;

    invoke-direct {v2}, Lcom/google/android/exoplayer/BehindLiveWindowException;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    .line 334
    :cond_c
    const/4 v5, 0x0

    move v6, v5

    goto :goto_1

    .line 356
    :cond_d
    move-object/from16 v0, p6

    iget v3, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/chunk/MediaChunk;

    iget v3, v3, Lcom/google/android/exoplayer/chunk/MediaChunk;->nextChunkIndex:I

    iget v7, v2, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int/2addr v3, v7

    goto :goto_3

    .line 365
    :cond_e
    if-le v3, v4, :cond_10

    .line 369
    if-nez v6, :cond_f

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto :goto_4

    .line 371
    :cond_10
    if-nez v6, :cond_11

    if-ne v3, v4, :cond_11

    .line 374
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->finishedCurrentManifest:Z

    .line 378
    :cond_11
    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    .line 379
    const/4 v2, 0x0

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    .line 383
    :cond_12
    iget-object v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v5, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->evaluation:Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v5, v5, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/google/android/exoplayer/dash/DashChunkSource;->newMediaChunk(Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;Lcom/google/android/exoplayer/upstream/DataSource;II)Lcom/google/android/exoplayer/chunk/Chunk;

    move-result-object v2

    .line 385
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    .line 386
    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    :cond_13
    move v5, v3

    goto :goto_2
.end method

.method public getError()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->manifestFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 392
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->getError()Ljava/io/IOException;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMaxVideoDimensions(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer/TrackInfo;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxWidth:I

    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->maxHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer/MediaFormat;->setMaxVideoDimensions(II)V

    .line 217
    :cond_0
    return-void
.end method

.method public final getTrackInfo()Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    return-object v0
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 398
    return-void
.end method
