.class Lcom/adobe/audiomixer/ImplIVideoTrack;
.super Ljava/lang/Object;
.source "ImplIVideoTrack.java"

# interfaces
.implements Lcom/adobe/audiomixer/IVideoTrack;


# instance fields
.field private trackDuration:Lcom/adobe/audiomixer/VideoTime;

.field private videoTrackHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->videoTrackHandle:J

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    .line 15
    iput-wide p1, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->videoTrackHandle:J

    .line 16
    return-void
.end method

.method private resetInternal()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    .line 114
    return-void
.end method


# virtual methods
.method public appendMedia(Ljava/lang/String;)Lcom/adobe/audiomixer/IClip;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/adobe/audiomixer/VideoTime;

    invoke-direct {v0}, Lcom/adobe/audiomixer/VideoTime;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->getClipCount()I

    move-result v1

    .line 30
    if-lez v1, :cond_0

    .line 31
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->getClip(I)Lcom/adobe/audiomixer/IClip;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Lcom/adobe/audiomixer/IClip;->getTimelineTime()Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    invoke-interface {v1}, Lcom/adobe/audiomixer/IClip;->getDuration()Lcom/adobe/audiomixer/VideoTime;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/audiomixer/VideoTime;->add(Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    .line 33
    invoke-interface {v1}, Lcom/adobe/audiomixer/IClip;->release()V

    .line 36
    :cond_0
    new-instance v1, Lcom/adobe/audiomixer/VideoTime;

    invoke-direct {v1}, Lcom/adobe/audiomixer/VideoTime;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/adobe/audiomixer/ImplIVideoTrack;->appendMedia(Ljava/lang/String;Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;)Lcom/adobe/audiomixer/IClip;

    move-result-object v0

    return-object v0
.end method

.method public appendMedia(Ljava/lang/String;Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;)Lcom/adobe/audiomixer/IClip;
    .locals 6

    .prologue
    .line 49
    invoke-static {p1}, Lcom/adobe/audiomixer/JniInterface;->createVideoClip(Ljava/lang/String;)J

    move-result-wide v2

    .line 50
    invoke-static {v2, v3, p2}, Lcom/adobe/audiomixer/JniInterface;->setClipTimelineTime(JLcom/adobe/audiomixer/VideoTime;)V

    .line 51
    invoke-static {v2, v3, p3}, Lcom/adobe/audiomixer/JniInterface;->setClipInTime(JLcom/adobe/audiomixer/VideoTime;)V

    .line 52
    if-nez p4, :cond_1

    .line 54
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/adobe/decoderfactory/DecoderFactory;->getAudioDecoder(ILjava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Lcom/adobe/decoderfactory/IAudioDecoder;->getSourceInfo()Lcom/adobe/decoderfactory/AudioInfo;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/adobe/decoderfactory/AudioInfo;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance p4, Lcom/adobe/audiomixer/VideoTime;

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/AudioInfo;->getDuration()J

    move-result-wide v0

    const-wide/32 v4, 0xf4240

    invoke-direct {p4, v0, v1, v4, v5}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    move-object v0, p4

    .line 63
    :goto_0
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/adobe/audiomixer/VideoTime;

    invoke-direct {v0}, Lcom/adobe/audiomixer/VideoTime;-><init>()V

    .line 65
    :cond_0
    invoke-static {v2, v3, v0}, Lcom/adobe/audiomixer/JniInterface;->setClipDuration(JLcom/adobe/audiomixer/VideoTime;)V

    .line 67
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->videoTrackHandle:J

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/audiomixer/JniInterface;->appendClipToVideoTrack(JJ)V

    .line 68
    invoke-direct {p0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->resetInternal()V

    .line 70
    new-instance v0, Lcom/adobe/audiomixer/ImplIClip;

    invoke-direct {v0, v2, v3}, Lcom/adobe/audiomixer/ImplIClip;-><init>(J)V

    return-object v0

    :cond_1
    move-object v0, p4

    goto :goto_0
.end method

.method protected finalyze()V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->release()V

    .line 20
    return-void
.end method

.method public getClip(I)Lcom/adobe/audiomixer/IClip;
    .locals 3

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->videoTrackHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->getVideoClip(JI)J

    move-result-wide v0

    .line 42
    new-instance v2, Lcom/adobe/audiomixer/ImplIClip;

    invoke-direct {v2, v0, v1}, Lcom/adobe/audiomixer/ImplIClip;-><init>(J)V

    return-object v2
.end method

.method public getClipCount()I
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->videoTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getVideoClipCount(J)I

    move-result v0

    return v0
.end method

.method public getDuration()Lcom/adobe/audiomixer/VideoTime;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->prepare()Z

    .line 99
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    return-object v0
.end method

.method public onAudioSequenceChanged(Lcom/adobe/audiomixer/IAudioSequence;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onAudioTrackChanged(Lcom/adobe/audiomixer/IVideoTrack;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onBackgroundMusicChanged(Lcom/adobe/audiomixer/IBackgroundMusicTrack;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onClipChanged(Lcom/adobe/audiomixer/IClip;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->resetInternal()V

    .line 104
    return-void
.end method

.method public prepare()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v3

    .line 82
    :cond_1
    new-instance v0, Lcom/adobe/audiomixer/VideoTime;

    invoke-direct {v0}, Lcom/adobe/audiomixer/VideoTime;-><init>()V

    iput-object v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    .line 83
    invoke-virtual {p0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->getClipCount()I

    move-result v0

    .line 85
    if-lez v0, :cond_0

    .line 86
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->getClip(I)Lcom/adobe/audiomixer/IClip;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lcom/adobe/audiomixer/IClip;->getTimelineTime()Lcom/adobe/audiomixer/VideoTime;

    move-result-object v1

    invoke-interface {v0}, Lcom/adobe/audiomixer/IClip;->getDuration()Lcom/adobe/audiomixer/VideoTime;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/audiomixer/VideoTime;->add(Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    .line 89
    invoke-interface {v0}, Lcom/adobe/audiomixer/IClip;->release()V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 117
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->videoTrackHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 118
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->videoTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->release(J)V

    .line 119
    iput-wide v2, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->videoTrackHandle:J

    .line 121
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIVideoTrack;->videoTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->resetVideoTrack(J)V

    .line 75
    invoke-direct {p0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->resetInternal()V

    .line 76
    return-void
.end method
