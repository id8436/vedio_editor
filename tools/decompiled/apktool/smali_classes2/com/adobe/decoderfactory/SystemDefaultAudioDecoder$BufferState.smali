.class Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;
.super Ljava/lang/Object;
.source "SystemDefaultAudioDecoder.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferIndex:I

.field private maxLimit:I

.field private startSampleNo:J

.field final synthetic this$0:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;


# direct methods
.method public constructor <init>(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;ILjava/nio/ByteBuffer;J)V
    .locals 2

    .prologue
    .line 571
    iput-object p1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->this$0:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput p2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->bufferIndex:I

    .line 573
    iput-object p3, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->buffer:Ljava/nio/ByteBuffer;

    .line 574
    iput-wide p4, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->startSampleNo:J

    .line 575
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->maxLimit:I

    .line 576
    return-void
.end method


# virtual methods
.method public readBufferData(Lcom/adobe/decoderfactory/AudioReadData;)Z
    .locals 10

    .prologue
    .line 579
    const/4 v1, 0x0

    .line 581
    invoke-virtual {p1}, Lcom/adobe/decoderfactory/AudioReadData;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 582
    iget v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->maxLimit:I

    iget-object v3, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    .line 583
    iget v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->maxLimit:I

    iget-object v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 584
    const/4 v1, 0x1

    move v9, v1

    .line 587
    :goto_0
    iget-object v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->this$0:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;

    invoke-static {v1}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->access$000(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;)Lcom/adobe/decoderfactory/AudioInfo;

    move-result-object v1

    iget v1, v1, Lcom/adobe/decoderfactory/AudioInfo;->channels:I

    mul-int/lit8 v1, v1, 0x2

    div-int v1, v0, v1

    int-to-long v4, v1

    .line 588
    iget-object v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 589
    iget-wide v2, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->startSampleNo:J

    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->this$0:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;

    invoke-static {v0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->access$100(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;)Z

    move-result v6

    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->this$0:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;

    invoke-static {v0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->access$200(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;)Z

    move-result v7

    iget-object v8, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->buffer:Ljava/nio/ByteBuffer;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/decoderfactory/AudioReadData;->setAudioData(JJZZLjava/nio/ByteBuffer;)V

    .line 591
    iget-wide v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->startSampleNo:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->startSampleNo:J

    .line 592
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 593
    return v9

    :cond_0
    move v9, v1

    goto :goto_0
.end method

.method public releaseBuffer()V
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->this$0:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;

    invoke-static {v0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->access$300(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->this$0:Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;

    invoke-static {v0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->access$300(Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    iget v1, p0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder$BufferState;->bufferIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 600
    :cond_0
    return-void
.end method
