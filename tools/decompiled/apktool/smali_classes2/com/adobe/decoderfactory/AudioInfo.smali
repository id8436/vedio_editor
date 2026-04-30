.class public Lcom/adobe/decoderfactory/AudioInfo;
.super Ljava/lang/Object;
.source "AudioInfo.java"


# instance fields
.field channels:I

.field durationInMicroSeconds:J

.field sampleRate:I

.field sampleSize:I

.field sampleType:Lcom/adobe/decoderfactory/AudioInfo$SampleType;


# direct methods
.method public constructor <init>(IILcom/adobe/decoderfactory/AudioInfo$SampleType;J)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/adobe/decoderfactory/AudioInfo;->sampleRate:I

    .line 22
    iput p2, p0, Lcom/adobe/decoderfactory/AudioInfo;->channels:I

    .line 23
    iput-object p3, p0, Lcom/adobe/decoderfactory/AudioInfo;->sampleType:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    .line 24
    sget-object v0, Lcom/adobe/decoderfactory/AudioInfo$SampleType;->Signed16Bit:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    if-ne p3, v0, :cond_0

    .line 25
    const/16 v0, 0x10

    iput v0, p0, Lcom/adobe/decoderfactory/AudioInfo;->sampleSize:I

    .line 28
    :goto_0
    iput-wide p4, p0, Lcom/adobe/decoderfactory/AudioInfo;->durationInMicroSeconds:J

    .line 29
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/decoderfactory/AudioInfo;->sampleSize:I

    goto :goto_0
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/adobe/decoderfactory/AudioInfo;->channels:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/adobe/decoderfactory/AudioInfo;->durationInMicroSeconds:J

    return-wide v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adobe/decoderfactory/AudioInfo;->sampleRate:I

    return v0
.end method

.method public getSampleSize()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/adobe/decoderfactory/AudioInfo;->sampleSize:I

    return v0
.end method

.method public getSampleType()Lcom/adobe/decoderfactory/AudioInfo$SampleType;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioInfo;->sampleType:Lcom/adobe/decoderfactory/AudioInfo$SampleType;

    return-object v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/adobe/decoderfactory/AudioInfo;->sampleRate:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adobe/decoderfactory/AudioInfo;->channels:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
