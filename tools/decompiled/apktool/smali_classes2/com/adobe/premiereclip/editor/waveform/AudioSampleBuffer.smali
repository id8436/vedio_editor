.class public Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;
.super Ljava/lang/Object;
.source "AudioSampleBuffer.java"


# instance fields
.field private bufferSize:J

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private numChannels:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->numChannels:I

    .line 34
    iput-wide p2, p0, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->bufferSize:J

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->data:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public getBufferSize()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->bufferSize:J

    return-wide v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumChannels()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/adobe/premiereclip/editor/waveform/AudioSampleBuffer;->numChannels:I

    return v0
.end method
