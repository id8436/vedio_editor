.class Lcom/adobe/audiomixer/ImplISourceMedia;
.super Ljava/lang/Object;
.source "ImplISourceMedia.java"

# interfaces
.implements Lcom/adobe/audiomixer/ISourceMedia;


# instance fields
.field private audioMediaInfo:Lcom/adobe/decoderfactory/AudioInfo;

.field private sourceMediaPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->sourceMediaPath:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private Initialize()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method


# virtual methods
.method public getAudioMediaInfo()Lcom/adobe/decoderfactory/AudioInfo;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->audioMediaInfo:Lcom/adobe/decoderfactory/AudioInfo;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->audioMediaInfo:Lcom/adobe/decoderfactory/AudioInfo;

    .line 47
    :goto_0
    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->sourceMediaPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->sourceMediaPath:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    :cond_1
    new-instance v0, Lcom/adobe/decoderfactory/AudioInfo;

    sget-object v3, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/decoderfactory/AudioInfo;-><init>(IILcom/adobe/decoderfactory/AudioInfo$SampleType;J)V

    iput-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->audioMediaInfo:Lcom/adobe/decoderfactory/AudioInfo;

    .line 47
    :goto_1
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->audioMediaInfo:Lcom/adobe/decoderfactory/AudioInfo;

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->sourceMediaPath:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adobe/decoderfactory/DecoderFactory;->getAudioDecoder(ILjava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    invoke-interface {v0}, Lcom/adobe/decoderfactory/IAudioDecoder;->getSourceInfo()Lcom/adobe/decoderfactory/AudioInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->audioMediaInfo:Lcom/adobe/decoderfactory/AudioInfo;

    goto :goto_1

    .line 43
    :cond_3
    new-instance v0, Lcom/adobe/decoderfactory/AudioInfo;

    sget-object v3, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/decoderfactory/AudioInfo;-><init>(IILcom/adobe/decoderfactory/AudioInfo$SampleType;J)V

    iput-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->audioMediaInfo:Lcom/adobe/decoderfactory/AudioInfo;

    goto :goto_1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->sourceMediaPath:Ljava/lang/String;

    return-object v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adobe/audiomixer/ImplISourceMedia;->sourceMediaPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
