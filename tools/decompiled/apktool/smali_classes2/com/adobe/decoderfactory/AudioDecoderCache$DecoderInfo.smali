.class Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;
.super Ljava/lang/Object;
.source "AudioDecoderCache.java"


# instance fields
.field decoder:Lcom/adobe/decoderfactory/IAudioDecoder;

.field sequenceId:I

.field final synthetic this$0:Lcom/adobe/decoderfactory/AudioDecoderCache;


# direct methods
.method public constructor <init>(Lcom/adobe/decoderfactory/AudioDecoderCache;ILcom/adobe/decoderfactory/IAudioDecoder;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;->this$0:Lcom/adobe/decoderfactory/AudioDecoderCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p2, p0, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;->sequenceId:I

    .line 18
    iput-object p3, p0, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;->decoder:Lcom/adobe/decoderfactory/IAudioDecoder;

    .line 19
    return-void
.end method


# virtual methods
.method public getDecoder()Lcom/adobe/decoderfactory/IAudioDecoder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;->decoder:Lcom/adobe/decoderfactory/IAudioDecoder;

    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;->sequenceId:I

    return v0
.end method
