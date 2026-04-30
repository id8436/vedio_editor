.class public interface abstract Lcom/adobe/decoderfactory/IAudioDecoder;
.super Ljava/lang/Object;
.source "IAudioDecoder.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutputInfo()Lcom/adobe/decoderfactory/AudioInfo;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getSourceInfo()Lcom/adobe/decoderfactory/AudioInfo;
.end method

.method public abstract hasError()Z
.end method

.method public abstract isEOF()Z
.end method

.method public abstract readNextSamples(Lcom/adobe/decoderfactory/AudioReadData;)V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(J)V
.end method
