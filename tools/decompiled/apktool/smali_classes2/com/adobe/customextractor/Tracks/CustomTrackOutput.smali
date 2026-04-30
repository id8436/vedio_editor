.class public Lcom/adobe/customextractor/Tracks/CustomTrackOutput;
.super Ljava/lang/Object;
.source "CustomTrackOutput.java"

# interfaces
.implements Lcom/adobe/customextractor/Tracks/TrackOutput;


# instance fields
.field private volatile format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

.field private volatile largestParsedTimestampUs:J

.field private lastReadTimeUs:J

.field private needKeyframe:Z

.field private final rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

.field private final sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

.field private spliceOutTimeUs:J


# direct methods
.method public constructor <init>(Lcom/adobe/customextractor/Util/Allocate/Allocator;)V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-direct {v0, p1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;-><init>(Lcom/adobe/customextractor/Util/Allocate/Allocator;)V

    iput-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    .line 35
    new-instance v0, Lcom/adobe/customextractor/Util/SampleHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/Util/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->needKeyframe:Z

    .line 37
    iput-wide v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->lastReadTimeUs:J

    .line 38
    iput-wide v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->spliceOutTimeUs:J

    .line 39
    iput-wide v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->largestParsedTimestampUs:J

    .line 40
    return-void
.end method

.method private advanceToEligibleSample()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    iget-object v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-virtual {v1, v2}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->peekSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z

    move-result v1

    .line 197
    iget-boolean v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->needKeyframe:Z

    if-eqz v2, :cond_0

    .line 198
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-virtual {v2}, Lcom/adobe/customextractor/Util/SampleHolder;->isSyncFrame()Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->skipSample()V

    .line 200
    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    iget-object v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-virtual {v1, v2}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->peekSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z

    move-result v1

    goto :goto_0

    .line 203
    :cond_0
    if-nez v1, :cond_2

    .line 209
    :cond_1
    :goto_1
    return v0

    .line 206
    :cond_2
    iget-wide v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->spliceOutTimeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-wide v2, v1, Lcom/adobe/customextractor/Util/SampleHolder;->timeUs:J

    iget-wide v4, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->spliceOutTimeUs:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 209
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 48
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->clear()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->needKeyframe:Z

    .line 50
    iput-wide v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->lastReadTimeUs:J

    .line 51
    iput-wide v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->spliceOutTimeUs:J

    .line 52
    iput-wide v2, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->largestParsedTimestampUs:J

    .line 53
    return-void
.end method

.method public configureSpliceTo(Lcom/adobe/customextractor/Tracks/CustomTrackOutput;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 163
    iget-wide v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->spliceOutTimeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    move v0, v2

    .line 186
    :goto_0
    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->peekSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-wide v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->timeUs:J

    .line 173
    :goto_1
    iget-object v3, p1, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    .line 174
    :goto_2
    iget-object v4, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-virtual {v3, v4}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->peekSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-wide v4, v4, Lcom/adobe/customextractor/Util/SampleHolder;->timeUs:J

    cmp-long v4, v4, v0

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    .line 175
    invoke-virtual {v4}, Lcom/adobe/customextractor/Util/SampleHolder;->isSyncFrame()Z

    move-result v4

    if-nez v4, :cond_3

    .line 178
    :cond_1
    invoke-virtual {v3}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->skipSample()V

    goto :goto_2

    .line 171
    :cond_2
    iget-wide v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->lastReadTimeUs:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_1

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-virtual {v3, v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->peekSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-wide v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->timeUs:J

    iput-wide v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->spliceOutTimeUs:J

    move v0, v2

    .line 184
    goto :goto_0

    .line 186
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public discardUntil(J)V
    .locals 3

    .prologue
    .line 138
    :goto_0
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->peekSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-wide v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->timeUs:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->skipSample()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->needKeyframe:Z

    goto :goto_0

    .line 143
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->lastReadTimeUs:J

    .line 144
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->discardUpstreamSamples(I)V

    .line 69
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->peekSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->sampleInfoHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-wide v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->timeUs:J

    :goto_0
    iput-wide v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->largestParsedTimestampUs:J

    .line 71
    return-void

    .line 69
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public format(Lcom/adobe/customextractor/Util/Media/MediaFormat;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    .line 223
    return-void
.end method

.method public getFormat()Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    return-object v0
.end method

.method public getLargestParsedTimestampUs()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->largestParsedTimestampUs:J

    return-wide v0
.end method

.method public getReadIndex()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->advanceToEligibleSample()Z

    move-result v1

    .line 122
    if-nez v1, :cond_0

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v1, p1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->readSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z

    .line 127
    iput-boolean v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->needKeyframe:Z

    .line 128
    iget-wide v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->timeUs:J

    iput-wide v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->lastReadTimeUs:J

    .line 129
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWriteIndex()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public hasFormat()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->format:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->advanceToEligibleSample()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sampleData(Lcom/adobe/customextractor/DataSource/DataSource;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->appendData(Lcom/adobe/customextractor/DataSource/DataSource;I)I

    move-result v0

    return v0
.end method

.method public sampleData(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->appendData(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;I)I

    move-result v0

    return v0
.end method

.method public sampleData(Lcom/adobe/customextractor/Util/ParsableByteArray;I)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->appendData(Lcom/adobe/customextractor/Util/ParsableByteArray;I)V

    .line 233
    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 9

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->largestParsedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->largestParsedTimestampUs:J

    .line 238
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    iget-object v1, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->getWritePosition()J

    move-result-wide v2

    int-to-long v4, p4

    sub-long/2addr v2, v4

    int-to-long v4, p5

    sub-long v4, v2, v4

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->commitSample(JIJI[B)V

    .line 240
    return-void
.end method

.method public skipToKeyframeBefore(J)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->rollingBuffer:Lcom/adobe/customextractor/Util/RollingSampleBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->skipToKeyframeBefore(J)Z

    move-result v0

    return v0
.end method
