.class public final Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;
.super Lcom/google/android/exoplayer/chunk/MediaChunk;
.source "ContainerMediaChunk.java"


# instance fields
.field private final extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

.field private final maybeSelfContained:Z

.field private mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field private prepared:Z

.field private psshInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;IJJILcom/google/android/exoplayer/chunk/parser/Extractor;Ljava/util/Map;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/upstream/DataSource;",
            "Lcom/google/android/exoplayer/upstream/DataSpec;",
            "Lcom/google/android/exoplayer/chunk/Format;",
            "IJJI",
            "Lcom/google/android/exoplayer/chunk/parser/Extractor;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;ZJ)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;IJJI)V

    .line 75
    iput-object p10, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    .line 76
    iput-boolean p12, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->maybeSelfContained:Z

    .line 77
    iput-wide p13, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 78
    iput-object p11, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->psshInfo:Ljava/util/Map;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;IJJILcom/google/android/exoplayer/chunk/parser/Extractor;ZJ)V
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v13, p11

    move-wide/from16 v14, p12

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;IJJILcom/google/android/exoplayer/chunk/parser/Extractor;Ljava/util/Map;ZJ)V

    .line 52
    return-void
.end method


# virtual methods
.method public getMediaFormat()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

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
    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->psshInfo:Ljava/util/Map;

    return-object v0
.end method

.method public prepare()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 99
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->prepared:Z

    if-nez v0, :cond_0

    .line 100
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->maybeSelfContained:Z

    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->getNonBlockingInputStream()Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;

    move-result-object v3

    .line 104
    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->read(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v0

    .line 106
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->prepared:Z

    .line 112
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->prepared:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->getFormat()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->getPsshInfo()Ljava/util/Map;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->psshInfo:Ljava/util/Map;

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->prepared:Z

    return v0

    :cond_1
    move v0, v2

    .line 104
    goto :goto_0

    :cond_2
    move v1, v2

    .line 106
    goto :goto_1

    .line 110
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->prepared:Z

    goto :goto_2
.end method

.method public read(Lcom/google/android/exoplayer/SampleHolder;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->getNonBlockingInputStream()Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    invoke-interface {v0, v3, p1}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->read(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v0

    .line 135
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 136
    :goto_1
    if-eqz v1, :cond_0

    .line 137
    iget-wide v2, p1, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 139
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 133
    goto :goto_0

    :cond_2
    move v1, v2

    .line 135
    goto :goto_1
.end method

.method public sampleAvailable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->getNonBlockingInputStream()Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->read(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v0

    .line 127
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekTo(JZ)Z
    .locals 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    add-long/2addr v0, p1

    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    invoke-interface {v2, v0, v1, p3}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->seekTo(JZ)Z

    move-result v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->resetReadPosition()V

    .line 94
    :cond_0
    return v0
.end method

.method public seekToStart()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->extractor:Lcom/google/android/exoplayer/chunk/parser/Extractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer/chunk/parser/Extractor;->seekTo(JZ)Z

    .line 84
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/ContainerMediaChunk;->resetReadPosition()V

    .line 85
    return-void
.end method
