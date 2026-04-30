.class public Lcom/adobe/premiereclip/automode/AudioSamples;
.super Ljava/lang/Object;
.source "AudioSamples.java"


# instance fields
.field public count:I

.field public offset:I

.field public position:J

.field public samples:[F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    .line 15
    iput v1, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->offset:I

    .line 16
    iput v1, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->position:J

    .line 18
    return-void
.end method

.method constructor <init>([FIIJ)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    .line 22
    iput p2, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->offset:I

    .line 23
    iput p3, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    .line 24
    iput-wide p4, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->position:J

    .line 25
    return-void
.end method


# virtual methods
.method public clone()Lcom/adobe/premiereclip/automode/AudioSamples;
    .locals 6

    .prologue
    .line 28
    new-instance v0, Lcom/adobe/premiereclip/automode/AudioSamples;

    iget-object v1, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    iget v2, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->offset:I

    iget v3, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    iget-wide v4, p0, Lcom/adobe/premiereclip/automode/AudioSamples;->position:J

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/automode/AudioSamples;-><init>([FIIJ)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/adobe/premiereclip/automode/AudioSamples;->clone()Lcom/adobe/premiereclip/automode/AudioSamples;

    move-result-object v0

    return-object v0
.end method
