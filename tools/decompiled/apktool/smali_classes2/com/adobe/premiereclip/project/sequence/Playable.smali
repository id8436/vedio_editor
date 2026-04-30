.class public Lcom/adobe/premiereclip/project/sequence/Playable;
.super Ljava/lang/Object;
.source "Playable.java"


# instance fields
.field public clipIndex:I

.field public clipOffsetUs:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    .line 29
    iput-wide p2, p0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipOffsetUs:J

    .line 30
    return-void
.end method
