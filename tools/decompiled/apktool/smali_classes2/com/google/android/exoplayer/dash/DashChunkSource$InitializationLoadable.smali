.class Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;
.super Lcom/google/android/exoplayer/chunk/Chunk;
.source "DashChunkSource.java"


# instance fields
.field private final expectedExtractorResult:I

.field private final extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

.field private final indexAnchor:J

.field final synthetic this$0:Lcom/google/android/exoplayer/dash/DashChunkSource;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/DashChunkSource;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/parser/Extractor;IJ)V
    .locals 2

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->this$0:Lcom/google/android/exoplayer/dash/DashChunkSource;

    .line 558
    invoke-direct {p0, p2, p3, p5, p4}, Lcom/google/android/exoplayer/chunk/Chunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;I)V

    .line 559
    iput-object p6, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    .line 560
    iput p7, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->expectedExtractorResult:I

    .line 561
    iput-wide p8, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->indexAnchor:J

    .line 562
    iget-object v0, p3, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->uri:Landroid/net/Uri;

    .line 563
    return-void
.end method


# virtual methods
.method protected consumeStream(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->read(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v0

    .line 568
    iget v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->expectedExtractorResult:I

    if-eq v0, v1, :cond_0

    .line 569
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid extractor result. Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->expectedExtractorResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 572
    :cond_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->this$0:Lcom/google/android/exoplayer/dash/DashChunkSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/dash/DashChunkSource;->access$000(Lcom/google/android/exoplayer/dash/DashChunkSource;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;

    new-instance v1, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;

    iget-object v2, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    .line 574
    invoke-interface {v2}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->getIndex()Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->uri:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/DashChunkSource$InitializationLoadable;->indexAnchor:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplayer/chunk/parser/SegmentIndex;Landroid/net/Uri;J)V

    iput-object v1, v0, Lcom/google/android/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplayer/dash/DashSegmentIndex;

    .line 576
    :cond_1
    return-void
.end method
