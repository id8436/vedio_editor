.class Lcom/adobe/audiomixer/ImplIClip;
.super Ljava/lang/Object;
.source "ImplIClip.java"

# interfaces
.implements Lcom/adobe/audiomixer/IClip;


# static fields
.field static AudioFilter_FadeIn:I

.field static AudioFilter_FadeOut:I

.field static AudioFilter_Mute:I

.field static AudioFilter_SpeechLeveler:I


# instance fields
.field videoClipHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_FadeIn:I

    .line 11
    const/4 v0, 0x2

    sput v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_FadeOut:I

    .line 12
    const/4 v0, 0x4

    sput v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_SpeechLeveler:I

    .line 13
    const/16 v0, 0x8

    sput v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_Mute:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    .line 16
    iput-wide p1, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    .line 17
    return-void
.end method

.method private Initialize()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method


# virtual methods
.method protected finalyze()V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/adobe/audiomixer/ImplIClip;->release()V

    .line 21
    return-void
.end method

.method public getAudioGainLevel()F
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioGainLevel(J)F

    move-result v0

    return v0
.end method

.method public getAudioSpeedLevel()F
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioSpeedLevel(J)F

    move-result v0

    return v0
.end method

.method public getDuration()Lcom/adobe/audiomixer/VideoTime;
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipDuration(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    return-object v0
.end method

.method public getInTime()Lcom/adobe/audiomixer/VideoTime;
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipInTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    return-object v0
.end method

.method public getOutTime()Lcom/adobe/audiomixer/VideoTime;
    .locals 4

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipInTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    .line 161
    invoke-static {v2, v3}, Lcom/adobe/audiomixer/JniInterface;->getClipDuration(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lcom/adobe/audiomixer/VideoTime;->add(Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    return-object v0
.end method

.method public getSourceMedia()Lcom/adobe/audiomixer/ISourceMedia;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Lcom/adobe/audiomixer/ImplISourceMedia;

    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v2, v3}, Lcom/adobe/audiomixer/JniInterface;->getClipSource(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/audiomixer/ImplISourceMedia;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTimelineTime()Lcom/adobe/audiomixer/VideoTime;
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipTimelineTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    return-object v0
.end method

.method public hasAudio()Z
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->hasClipAudio(J)Z

    move-result v0

    return v0
.end method

.method public isAudioFadeIn()Z
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioFilter(J)I

    move-result v0

    sget v1, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_FadeIn:I

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
    .line 108
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioFilter(J)I

    move-result v0

    sget v1, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_FadeOut:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAudioMute()Z
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioFilter(J)I

    move-result v0

    sget v1, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_Mute:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAudioSpeechLevel()Z
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioFilter(J)I

    move-result v0

    sget v1, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_SpeechLeveler:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 168
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 169
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->release(J)V

    .line 170
    iput-wide v2, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    .line 172
    :cond_0
    return-void
.end method

.method public setAudioFadeIn(Z)V
    .locals 4

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioFilter(J)I

    move-result v1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    sget v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_FadeIn:I

    or-int/2addr v0, v1

    .line 68
    :goto_0
    if-eq v0, v1, :cond_0

    .line 69
    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v2, v3, v0}, Lcom/adobe/audiomixer/JniInterface;->setClipAudioFilter(JI)V

    .line 71
    :cond_0
    return-void

    .line 66
    :cond_1
    sget v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_FadeIn:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setAudioFadeOut(Z)V
    .locals 4

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioFilter(J)I

    move-result v1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    sget v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_FadeOut:I

    or-int/2addr v0, v1

    .line 81
    :goto_0
    if-eq v0, v1, :cond_0

    .line 82
    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v2, v3, v0}, Lcom/adobe/audiomixer/JniInterface;->setClipAudioFilter(JI)V

    .line 84
    :cond_0
    return-void

    .line 79
    :cond_1
    sget v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_FadeOut:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setAudioGainLevel(F)V
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioGainLevel(J)F

    move-result v0

    .line 118
    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 119
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setClipAudioGainLevel(JF)V

    .line 121
    :cond_0
    return-void
.end method

.method public setAudioMute(Z)V
    .locals 4

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioFilter(J)I

    move-result v1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    sget v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_Mute:I

    or-int/2addr v0, v1

    .line 55
    :goto_0
    if-eq v0, v1, :cond_0

    .line 56
    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v2, v3, v0}, Lcom/adobe/audiomixer/JniInterface;->setClipAudioFilter(JI)V

    .line 58
    :cond_0
    return-void

    .line 53
    :cond_1
    sget v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_Mute:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setAudioSpeechLevel(Z)V
    .locals 4

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioFilter(J)I

    move-result v1

    .line 89
    if-eqz p1, :cond_1

    .line 90
    sget v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_SpeechLeveler:I

    or-int/2addr v0, v1

    .line 94
    :goto_0
    if-eq v0, v1, :cond_0

    .line 95
    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v2, v3, v0}, Lcom/adobe/audiomixer/JniInterface;->setClipAudioFilter(JI)V

    .line 97
    :cond_0
    return-void

    .line 92
    :cond_1
    sget v0, Lcom/adobe/audiomixer/ImplIClip;->AudioFilter_SpeechLeveler:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public setAudioSpeedLevel(F)V
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipAudioSpeedLevel(J)F

    move-result v0

    .line 130
    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 131
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setClipAudioSpeedLevel(JF)V

    .line 133
    :cond_0
    return-void
.end method

.method public setDuration(Lcom/adobe/audiomixer/VideoTime;)V
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipInTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lcom/adobe/audiomixer/VideoTime;->equals(Lcom/adobe/audiomixer/VideoTime;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setClipDuration(JLcom/adobe/audiomixer/VideoTime;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setInTime(Lcom/adobe/audiomixer/VideoTime;)V
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipInTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/adobe/audiomixer/VideoTime;->equals(Lcom/adobe/audiomixer/VideoTime;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setClipInTime(JLcom/adobe/audiomixer/VideoTime;)V

    .line 37
    :cond_0
    return-void
.end method

.method public setTimelineTime(Lcom/adobe/audiomixer/VideoTime;)V
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getClipTimelineTime(J)Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/adobe/audiomixer/VideoTime;->equals(Lcom/adobe/audiomixer/VideoTime;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIClip;->videoClipHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setClipTimelineTime(JLcom/adobe/audiomixer/VideoTime;)V

    .line 29
    :cond_0
    return-void
.end method
