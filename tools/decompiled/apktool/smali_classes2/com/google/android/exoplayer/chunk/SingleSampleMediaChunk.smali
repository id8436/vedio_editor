.class public Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;
.super Lcom/google/android/exoplayer/chunk/MediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field public final headerData:[B

.field private final sampleFormat:Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;IJJILcom/google/android/exoplayer/MediaFormat;)V
    .locals 13

    .prologue
    .line 52
    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;IJJILcom/google/android/exoplayer/MediaFormat;[B)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;IJJILcom/google/android/exoplayer/MediaFormat;[B)V
    .locals 1

    .prologue
    .line 72
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer/chunk/MediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;IJJI)V

    .line 73
    iput-object p10, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->sampleFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 74
    iput-object p11, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->headerData:[B

    .line 75
    return-void
.end method


# virtual methods
.method public getMediaFormat()Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->sampleFormat:Lcom/google/android/exoplayer/MediaFormat;

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
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepare()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer/SampleHolder;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->getNonBlockingInputStream()Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;

    move-result-object v4

    .line 90
    if-eqz v4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->sampleAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->bytesLoaded()J

    move-result-wide v6

    long-to-int v3, v6

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->headerData:[B

    if-eqz v0, :cond_7

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->headerData:[B

    array-length v0, v0

    add-int/2addr v0, v3

    .line 99
    :goto_2
    iget-object v5, p1, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v5, v0, :cond_3

    .line 100
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/SampleHolder;->replaceBuffer(I)Z

    .line 103
    :cond_3
    iget-object v5, p1, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_6

    .line 104
    iget-object v5, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->headerData:[B

    if-eqz v5, :cond_4

    .line 105
    iget-object v5, p1, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->headerData:[B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 107
    :cond_4
    iget-object v5, p1, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5, v3}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->read(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 108
    iput v0, p1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    move v0, v4

    .line 113
    :goto_3
    if-ne v0, v3, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 114
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->startTimeUs:J

    iput-wide v2, p1, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    move v2, v1

    .line 115
    goto :goto_1

    .line 110
    :cond_6
    invoke-interface {v4, v3}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->skip(I)I

    move-result v0

    .line 111
    iput v2, p1, Lcom/google/android/exoplayer/SampleHolder;->size:I

    goto :goto_3

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method public sampleAvailable()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->isReadFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekTo(JZ)Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->resetReadPosition()V

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public seekToStart()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;->resetReadPosition()V

    .line 121
    return-void
.end method
