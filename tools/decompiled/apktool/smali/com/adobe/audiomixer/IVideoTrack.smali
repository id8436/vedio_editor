.class public interface abstract Lcom/adobe/audiomixer/IVideoTrack;
.super Ljava/lang/Object;
.source "IVideoTrack.java"

# interfaces
.implements Lcom/adobe/audiomixer/ITrack;


# virtual methods
.method public abstract appendMedia(Ljava/lang/String;)Lcom/adobe/audiomixer/IClip;
.end method

.method public abstract appendMedia(Ljava/lang/String;Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;Lcom/adobe/audiomixer/VideoTime;)Lcom/adobe/audiomixer/IClip;
.end method

.method public abstract getClip(I)Lcom/adobe/audiomixer/IClip;
.end method

.method public abstract getClipCount()I
.end method

.method public abstract reset()V
.end method
