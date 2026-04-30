.class public interface abstract Lcom/adobe/audiomixer/IClip;
.super Ljava/lang/Object;
.source "IClip.java"


# virtual methods
.method public abstract getAudioGainLevel()F
.end method

.method public abstract getAudioSpeedLevel()F
.end method

.method public abstract getDuration()Lcom/adobe/audiomixer/VideoTime;
.end method

.method public abstract getInTime()Lcom/adobe/audiomixer/VideoTime;
.end method

.method public abstract getOutTime()Lcom/adobe/audiomixer/VideoTime;
.end method

.method public abstract getSourceMedia()Lcom/adobe/audiomixer/ISourceMedia;
.end method

.method public abstract getTimelineTime()Lcom/adobe/audiomixer/VideoTime;
.end method

.method public abstract hasAudio()Z
.end method

.method public abstract isAudioFadeIn()Z
.end method

.method public abstract isAudioFadeOut()Z
.end method

.method public abstract isAudioMute()Z
.end method

.method public abstract isAudioSpeechLevel()Z
.end method

.method public abstract release()V
.end method

.method public abstract setAudioFadeIn(Z)V
.end method

.method public abstract setAudioFadeOut(Z)V
.end method

.method public abstract setAudioGainLevel(F)V
.end method

.method public abstract setAudioMute(Z)V
.end method

.method public abstract setAudioSpeechLevel(Z)V
.end method

.method public abstract setAudioSpeedLevel(F)V
.end method

.method public abstract setDuration(Lcom/adobe/audiomixer/VideoTime;)V
.end method

.method public abstract setInTime(Lcom/adobe/audiomixer/VideoTime;)V
.end method

.method public abstract setTimelineTime(Lcom/adobe/audiomixer/VideoTime;)V
.end method
