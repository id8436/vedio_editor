.class public abstract Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;
.super Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
.source "SegmentBase.java"


# instance fields
.field final duration:J

.field final periodDurationMs:J

.field final segmentTimeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation
.end field

.field final startNumber:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJ)V

    .line 141
    iput-wide p6, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->periodDurationMs:J

    .line 142
    iput p8, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    .line 143
    iput-wide p9, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    .line 144
    iput-object p11, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 145
    return-void
.end method


# virtual methods
.method public getFirstSegmentNum()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    return v0
.end method

.method public abstract getLastSegmentNum()I
.end method

.method public final getSegmentDurationUs(I)J
    .locals 4

    .prologue
    const-wide/32 v2, 0xf4240

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->duration:J

    .line 184
    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v0, v2

    .line 186
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getLastSegmentNum()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->periodDurationMs:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 187
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getSegmentNum(J)I
    .locals 7

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()I

    move-result v0

    .line 152
    invoke-virtual {p0}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getLastSegmentNum()I

    move-result v1

    .line 153
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-nez v2, :cond_5

    .line 155
    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v2, v4

    .line 156
    iget v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    div-long v2, p1, v2

    long-to-int v2, v2

    add-int/2addr v2, v4

    .line 158
    if-ge v2, v0, :cond_0

    .line 174
    :goto_0
    return v0

    .line 158
    :cond_0
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    if-le v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 163
    :goto_1
    if-gt v1, v0, :cond_4

    .line 164
    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    .line 165
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v4

    .line 166
    cmp-long v3, v4, p1

    if-gez v3, :cond_2

    .line 167
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 168
    :cond_2
    cmp-long v0, v4, p1

    if-lez v0, :cond_3

    .line 169
    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 171
    goto :goto_0

    .line 174
    :cond_4
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_5
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1
.end method

.method public final getSegmentTimeUs(I)J
    .locals 6

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;->startTime:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->presentationTimeOffset:J

    sub-long/2addr v0, v2

    .line 203
    :goto_0
    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->timescale:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 201
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->startNumber:I

    sub-int v0, p1, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->duration:J

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public abstract getSegmentUrl(Lcom/google/android/exoplayer/dash/mpd/Representation;I)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
