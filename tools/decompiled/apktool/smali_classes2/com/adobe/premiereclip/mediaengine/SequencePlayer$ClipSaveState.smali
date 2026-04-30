.class public Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;
.super Ljava/lang/Object;
.source "SequencePlayer.java"


# instance fields
.field public clipIndex:I

.field public clipOffset:J

.field public isEnded:Z


# direct methods
.method public constructor <init>(IJZ)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    .line 75
    iput-wide p2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipOffset:J

    .line 76
    iput-boolean p4, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->isEnded:Z

    .line 77
    return-void
.end method
