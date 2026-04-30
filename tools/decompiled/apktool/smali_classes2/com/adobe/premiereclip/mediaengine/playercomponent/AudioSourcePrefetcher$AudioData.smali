.class public Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;
.super Ljava/lang/Object;
.source "AudioSourcePrefetcher.java"


# instance fields
.field private audioBuffer:Ljava/nio/ByteBuffer;

.field private numberOfSamples:J

.field private startSampleNumber:J

.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 40
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->this$0:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->audioBuffer:Ljava/nio/ByteBuffer;

    .line 43
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->audioBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    :cond_0
    iput-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->startSampleNumber:J

    .line 47
    iput-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->numberOfSamples:J

    .line 48
    return-void
.end method


# virtual methods
.method public getAudioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->audioBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getNumberOfSamples()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->numberOfSamples:J

    return-wide v0
.end method

.method public getStartSampleNumber()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->startSampleNumber:J

    return-wide v0
.end method

.method public setNumberOfSamples(J)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->numberOfSamples:J

    .line 64
    return-void
.end method

.method public setStartSampleNumber(J)V
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->startSampleNumber:J

    .line 56
    return-void
.end method
