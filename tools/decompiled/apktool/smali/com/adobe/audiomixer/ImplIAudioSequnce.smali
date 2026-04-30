.class Lcom/adobe/audiomixer/ImplIAudioSequnce;
.super Ljava/lang/Object;
.source "ImplIAudioSequnce.java"

# interfaces
.implements Lcom/adobe/audiomixer/IAudioSequence;


# instance fields
.field private audioTrack:Lcom/adobe/audiomixer/ImplIVideoTrack;

.field private backgroundMusicTrack:Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;

.field private nativeSequenceHandle:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    .line 17
    invoke-static {}, Lcom/adobe/audiomixer/JniInterface;->createSequence()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    .line 18
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getVideoTrack(J)J

    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v2, v3}, Lcom/adobe/audiomixer/JniInterface;->getBackgroundMusicTrack(J)J

    move-result-wide v2

    .line 21
    new-instance v4, Lcom/adobe/audiomixer/ImplIVideoTrack;

    invoke-direct {v4, v0, v1}, Lcom/adobe/audiomixer/ImplIVideoTrack;-><init>(J)V

    iput-object v4, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->audioTrack:Lcom/adobe/audiomixer/ImplIVideoTrack;

    .line 22
    new-instance v0, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;

    invoke-direct {v0, v2, v3}, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;-><init>(J)V

    iput-object v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->backgroundMusicTrack:Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;

    .line 23
    return-void
.end method

.method private internalReset()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method


# virtual methods
.method protected finalyze()V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/adobe/audiomixer/ImplIAudioSequnce;->release()V

    .line 27
    return-void
.end method

.method public getAudioTrack()Lcom/adobe/audiomixer/IVideoTrack;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->audioTrack:Lcom/adobe/audiomixer/ImplIVideoTrack;

    return-object v0
.end method

.method public getBackgroundMusicTrack()Lcom/adobe/audiomixer/IBackgroundMusicTrack;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->backgroundMusicTrack:Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getSequenceAudioBufferSize(J)I

    move-result v0

    return v0
.end method

.method public getChannels()I
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getSequenceAudioChannels(J)I

    move-result v0

    return v0
.end method

.method public getDuration()Lcom/adobe/audiomixer/VideoTime;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->audioTrack:Lcom/adobe/audiomixer/ImplIVideoTrack;

    invoke-virtual {v0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->getDuration()Lcom/adobe/audiomixer/VideoTime;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate()I
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getSequenceAudioSampleRate(J)I

    move-result v0

    return v0
.end method

.method public getSampleSize()I
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    .line 80
    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getSequenceAudioSampleType(J)Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/adobe/audiomixer/JniInterface;->ConvertAudioSampleTypeJavaToNative(Lcom/adobe/decoderfactory/AudioInfo$SampleType;)I

    move-result v0

    return v0
.end method

.method public getSampleType()Lcom/adobe/decoderfactory/AudioInfo$SampleType;
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getSequenceAudioSampleType(J)Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    move-result-object v0

    return-object v0
.end method

.method public isBackgroundMusicMute()Z
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getSequenceBackgroundMusicMute(J)Z

    move-result v0

    return v0
.end method

.method public onAudioSequenceChanged(Lcom/adobe/audiomixer/IAudioSequence;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/adobe/audiomixer/ImplIAudioSequnce;->internalReset()V

    .line 146
    return-void
.end method

.method public onAudioTrackChanged(Lcom/adobe/audiomixer/IVideoTrack;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/adobe/audiomixer/ImplIAudioSequnce;->internalReset()V

    .line 142
    return-void
.end method

.method public onBackgroundMusicChanged(Lcom/adobe/audiomixer/IBackgroundMusicTrack;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/adobe/audiomixer/ImplIAudioSequnce;->internalReset()V

    .line 138
    return-void
.end method

.method public onClipChanged(Lcom/adobe/audiomixer/IClip;)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public prepare()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->audioTrack:Lcom/adobe/audiomixer/ImplIVideoTrack;

    invoke-virtual {v1}, Lcom/adobe/audiomixer/ImplIVideoTrack;->prepare()Z

    move-result v1

    .line 124
    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->backgroundMusicTrack:Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;

    invoke-virtual {v1}, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->prepare()Z

    move-result v1

    .line 128
    if-eqz v1, :cond_0

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readSamples(Lcom/adobe/audiomixer/VideoTime;Ljava/nio/ByteBuffer;)I
    .locals 4

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    iget-wide v2, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    .line 118
    invoke-static {v2, v3}, Lcom/adobe/audiomixer/JniInterface;->getSequenceAudioSampleRate(J)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/adobe/audiomixer/VideoTime;->getSampleTime(I)J

    move-result-wide v2

    .line 117
    invoke-static {v0, v1, v2, v3, p2}, Lcom/adobe/audiomixer/JniInterface;->readSamples(JJLjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public readyForRendering()Z
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->readyForRendering(J)I

    move-result v0

    .line 46
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

    .line 152
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 153
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->release(J)V

    .line 154
    iput-wide v2, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->audioTrack:Lcom/adobe/audiomixer/ImplIVideoTrack;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->audioTrack:Lcom/adobe/audiomixer/ImplIVideoTrack;

    invoke-virtual {v0}, Lcom/adobe/audiomixer/ImplIVideoTrack;->release()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->backgroundMusicTrack:Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->backgroundMusicTrack:Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;

    invoke-virtual {v0}, Lcom/adobe/audiomixer/ImplIBackgroundMusicTrack;->release()V

    .line 162
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->resetSequence(J)V

    .line 40
    invoke-direct {p0}, Lcom/adobe/audiomixer/ImplIAudioSequnce;->internalReset()V

    .line 41
    return-void
.end method

.method public seekTo(Lcom/adobe/audiomixer/VideoTime;)V
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->seekSequence(JLcom/adobe/audiomixer/VideoTime;)V

    .line 112
    return-void
.end method

.method public setBackgroundMusicMute(Z)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/adobe/audiomixer/ImplIAudioSequnce;->isBackgroundMusicMute()Z

    move-result v0

    .line 101
    if-eq v0, p1, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setSequenceBackgroundMusicMute(JZ)V

    .line 104
    :cond_0
    return-void
.end method

.method public setBufferSize(I)V
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setSequenceAudioBufferSize(JI)V

    .line 93
    return-void
.end method

.method public setChannels(I)V
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getSequenceAudioChannels(J)I

    move-result v0

    .line 58
    if-eq v0, p1, :cond_0

    .line 59
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setSequenceAudioChannel(JI)V

    .line 61
    :cond_0
    return-void
.end method

.method public setSampleRate(I)V
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getSequenceAudioSampleRate(J)I

    move-result v0

    .line 51
    if-eq v0, p1, :cond_0

    .line 52
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setSequenceAudioSampleRate(JI)V

    .line 54
    :cond_0
    return-void
.end method

.method public setSampleType(Lcom/adobe/decoderfactory/AudioInfo$SampleType;)V
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1}, Lcom/adobe/audiomixer/JniInterface;->getSequenceAudioSampleType(J)Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    move-result-object v0

    .line 65
    if-eq v0, p1, :cond_0

    .line 66
    iget-wide v0, p0, Lcom/adobe/audiomixer/ImplIAudioSequnce;->nativeSequenceHandle:J

    invoke-static {v0, v1, p1}, Lcom/adobe/audiomixer/JniInterface;->setSequenceAudioSampleType(JLcom/adobe/decoderfactory/AudioInfo$SampleType;)V

    .line 68
    :cond_0
    return-void
.end method
