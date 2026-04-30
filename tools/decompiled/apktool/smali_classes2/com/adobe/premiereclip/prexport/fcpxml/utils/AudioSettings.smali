.class public Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;
.super Ljava/lang/Object;
.source "AudioSettings.java"


# instance fields
.field public numChannels:I

.field public sampleDepth:I

.field public sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x10

    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->sampleDepth:I

    .line 30
    const v0, 0xac44

    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->sampleRate:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->numChannels:I

    .line 32
    return-void
.end method
