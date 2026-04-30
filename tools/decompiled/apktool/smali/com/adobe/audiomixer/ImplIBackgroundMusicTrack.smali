.class public Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;
.super Ljava/lang/Object;
.source "ImplIBackgroundMusicTrack.java"

# interfaces
.implements Lcom/adobe/audiomixer/IBackgroundMusicTrack;


# static fields
.field static AudioFilter_AutoDuck:I

.field static AudioFilter_FadeIn:I

.field static AudioFilter_FadeOut:I


# instance fields
.field private musicTrackHandle:J

.field private trackDuration:Lcom/adobe/audiomixer/VideoTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_FadeIn:I

    .line 11
    const/4 v0, 0x2

    sput v0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_FadeOut:I

    .line 12
    const/16 v0, 0x10

    sput v0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_AutoDuck:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    .line 18
    iput-wide p1, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    .line 19
    return-void
.end method

.method private Initialize()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method private resetInternal()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    .line 144
    return-void
.end method


# virtual methods
.method protected finalyze()V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->release()V

    .line 23
    return-void
.end method

.method public getAudioGainLevel()F
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicAudioGainLevel(J)F

    move-result v0

    return v0
.end method

.method public getDuration()Lcom/adobe/audiomixer/VideoTime;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->prepare()Z

    .line 135
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    return-object v0
.end method

.method public getInTime()Lcom/adobe/audiomixer/VideoTime;
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicInTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    return-object v0
.end method

.method public getSourceMedia()Lcom/adobe/audiomixer/ISourceMedia;
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicSource(J)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/adobe/audiomixer/ImplISourceMedia;

    invoke-direct {v1, v0}, Lcom/adobe/audiomixer/ImplISourceMedia;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public isAudioAutoDuck()Z
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicAudioFilter(J)I

    move-result v0

    sget v1, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_AutoDuck:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAudioFadeIn()Z
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicAudioFilter(J)I

    move-result v0

    sget v1, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_FadeIn:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAudioFadeOut()Z
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicAudioFilter(J)I

    move-result v0

    sget v1, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_FadeIn:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 116
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v6

    .line 119
    :cond_1
    new-instance v0, Lcom/adobe/audiomixer/VideoTime;

    invoke-direct {v0}, Lcom/adobe/audiomixer/VideoTime;-><init>()V

    iput-object v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    .line 120
    invoke-virtual {p0}, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->getSourceMedia()Lcom/adobe/audiomixer/ISourceMedia;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/adobe/audiomixer/ISourceMedia;->getAudioMediaInfo()Lcom/adobe/decoderfactory/AudioInfo;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Lcom/adobe/audiomixer/VideoTime;

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    iput-object v1, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->trackDuration:Lcom/adobe/audiomixer/VideoTime;

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 147
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 148
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->release(J)V

    .line 149
    iput-wide v2, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    .line 151
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->resetBackgroundMusicTrack(J)V

    .line 112
    invoke-direct {p0}, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->resetInternal()V

    .line 113
    return-void
.end method

.method public setAudioAutoDuck(Z)V
    .locals 4

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicAudioFilter(J)I

    move-result v1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    sget v0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_AutoDuck:I

    or-int/2addr v0, v1

    .line 69
    :goto_0
    if-eq v0, v1, :cond_0

    .line 70
    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v2, v3, v0}, Lcom/adobe/audiomixer/JniInterface;->setBackgroundMusicAudioFilter(JI)V

    .line 72
    :cond_0
    return-void

    .line 67
    :cond_1
    sget v0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_AutoDuck:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setAudioFadeIn(Z)V
    .locals 4

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicAudioFilter(J)I

    move-result v1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    sget v0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_FadeIn:I

    or-int/2addr v0, v1

    .line 43
    :goto_0
    if-eq v0, v1, :cond_0

    .line 44
    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v2, v3, v0}, Lcom/adobe/audiomixer/JniInterface;->setBackgroundMusicAudioFilter(JI)V

    .line 46
    :cond_0
    return-void

    .line 41
    :cond_1
    sget v0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_FadeIn:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setAudioFadeOut(Z)V
    .locals 4

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicAudioFilter(J)I

    move-result v1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    sget v0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_FadeOut:I

    or-int/2addr v0, v1

    .line 56
    :goto_0
    if-eq v0, v1, :cond_0

    .line 57
    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v2, v3, v0}, Lcom/adobe/audiomixer/JniInterface;->setBackgroundMusicAudioFilter(JI)V

    .line 59
    :cond_0
    return-void

    .line 54
    :cond_1
    sget v0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->AudioFilter_FadeOut:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setAudioGainLevel(F)V
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicAudioGainLevel(J)F

    move-result v0

    .line 101
    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setBackgroundMusicAudioGainLevel(JF)V

    .line 104
    :cond_0
    return-void
.end method

.method public setInTime(Lcom/adobe/audiomixer/VideoTime;)V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicInTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lcom/adobe/audiomixer/VideoTime;->equals(Lcom/adobe/audiomixer/VideoTime;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setBackgroundMusicInTime(JLcom/adobe/audiomixer/VideoTime;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->musicTrackHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setBackgroundMusicSource(JLjava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->resetInternal()V

    .line 28
    return-void
.end method
