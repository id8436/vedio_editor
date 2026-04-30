.class public interface abstract Lcom/adobe/audiomixer/IAudioSequence;
.super Ljava/lang/Object;
.source "IAudioSequence.java"


# virtual methods
.method public abstract getAudioTrack()Lcom/adobe/audiomixer/IVideoTrack;
.end method

.method public abstract getBackgroundMusicTrack()Lcom/adobe/audiomixer/IBackgroundMusicTrack;
.end method

.method public abstract getBufferSize()I
.end method

.method public abstract getChannels()I
.end method

.method public abstract getDuration()Lcom/adobe/audiomixer/VideoTime;
.end method

.method public abstract getSampleRate()I
.end method

.method public abstract getSampleSize()I
.end method

.method public abstract getSampleType()Lcom/adobe/decoderfactory/AudioInfo$SampleType;
.end method

.method public abstract isBackgroundMusicMute()Z
.end method

.method public abstract prepare()Z
.end method

.method public abstract readSamples(Lcom/adobe/audiomixer/VideoTime;Ljava/nio/ByteBuffer;)I
.end method

.method public abstract readyForRendering()Z
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(Lcom/adobe/audiomixer/VideoTime;)V
.end method

.method public abstract setBackgroundMusicMute(Z)V
.end method

.method public abstract setBufferSize(I)V
.end method

.method public abstract setChannels(I)V
.end method

.method public abstract setSampleRate(I)V
.end method

.method public abstract setSampleType(Lcom/adobe/decoderfactory/AudioInfo$SampleType;)V
.end method
