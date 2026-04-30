.class public interface abstract Lcom/adobe/audiomixer/IBackgroundMusicTrack;
.super Ljava/lang/Object;
.source "IBackgroundMusicTrack.java"

# interfaces
.implements Lcom/adobe/audiomixer/ITrack;


# virtual methods
.method public abstract getAudioGainLevel()F
.end method

.method public abstract getInTime()Lcom/adobe/audiomixer/VideoTime;
.end method

.method public abstract getSourceMedia()Lcom/adobe/audiomixer/ISourceMedia;
.end method

.method public abstract isAudioAutoDuck()Z
.end method

.method public abstract isAudioFadeIn()Z
.end method

.method public abstract isAudioFadeOut()Z
.end method

.method public abstract setAudioAutoDuck(Z)V
.end method

.method public abstract setAudioFadeIn(Z)V
.end method

.method public abstract setAudioFadeOut(Z)V
.end method

.method public abstract setAudioGainLevel(F)V
.end method

.method public abstract setInTime(Lcom/adobe/audiomixer/VideoTime;)V
.end method

.method public abstract setSource(Ljava/lang/String;)V
.end method
