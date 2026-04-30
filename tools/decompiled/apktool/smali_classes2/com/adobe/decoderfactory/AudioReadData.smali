.class public Lcom/adobe/decoderfactory/AudioReadData;
.super Ljava/lang/Object;
.source "AudioReadData.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private dataSize:I

.field private eof:Z

.field private error:Z

.field private noOfSamples:J

.field private startSampleNumber:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/adobe/decoderfactory/AudioReadData;->buffer:Ljava/nio/ByteBuffer;

    .line 18
    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->dataSize:I

    return v0
.end method

.method public getNoOfSamples()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->noOfSamples:J

    return-wide v0
.end method

.method public getStartSampleNumber()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->startSampleNumber:J

    return-wide v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->error:Z

    return v0
.end method

.method public isEOF()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->eof:Z

    return v0
.end method

.method public setAudioData(JJZZLjava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    iput-wide p1, p0, Lcom/adobe/decoderfactory/AudioReadData;->startSampleNumber:J

    .line 26
    iput-wide p3, p0, Lcom/adobe/decoderfactory/AudioReadData;->noOfSamples:J

    .line 27
    iput-boolean p5, p0, Lcom/adobe/decoderfactory/AudioReadData;->eof:Z

    .line 28
    iput-boolean p6, p0, Lcom/adobe/decoderfactory/AudioReadData;->error:Z

    .line 29
    iput v2, p0, Lcom/adobe/decoderfactory/AudioReadData;->dataSize:I

    .line 31
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 33
    iput v2, p0, Lcom/adobe/decoderfactory/AudioReadData;->dataSize:I

    .line 34
    if-eqz p7, :cond_0

    .line 35
    invoke-virtual {p7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p7}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->dataSize:I

    .line 37
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioReadData;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/adobe/decoderfactory/AudioReadData;->dataSize:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 43
    :cond_1
    return-void
.end method

.method public setStartSampleNumber(J)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/adobe/decoderfactory/AudioReadData;->startSampleNumber:J

    .line 51
    return-void
.end method
