.class Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;
.super Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final audioTimestamp:Landroid/media/AudioTimestamp;

.field private lastRawTimestampFramePosition:J

.field private lastTimestampFramePosition:J

.field private rawTimestampFramePositionWrapCount:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 1

    .prologue
    .line 768
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Landroid/media/AudioTrack;)V

    .line 769
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    .line 770
    return-void
.end method


# virtual methods
.method public getTimestampFramePosition()J
    .locals 2

    .prologue
    .line 794
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastTimestampFramePosition:J

    return-wide v0
.end method

.method public getTimestampNanoTime()J
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public updateTimestamp()Z
    .locals 8

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    .line 775
    if-eqz v0, :cond_1

    .line 776
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->audioTimestamp:Landroid/media/AudioTimestamp;

    iget-wide v2, v1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 777
    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 779
    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    .line 781
    :cond_0
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastRawTimestampFramePosition:J

    .line 782
    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->rawTimestampFramePositionWrapCount:J

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;->lastTimestampFramePosition:J

    .line 784
    :cond_1
    return v0
.end method
