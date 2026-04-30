.class public Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;
.super Ljava/lang/Object;
.source "ProgressKeeper.java"


# instance fields
.field private lastProgress:I

.field private totalProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->lastProgress:I

    .line 12
    iput v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->totalProgress:I

    .line 13
    return-void
.end method


# virtual methods
.method public calculateProgressOffset()I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->totalProgress:I

    iget v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->lastProgress:I

    sub-int/2addr v0, v1

    .line 27
    iget v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->totalProgress:I

    iput v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->lastProgress:I

    .line 28
    return v0
.end method

.method public calculateProgressOffset(I)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->lastProgress:I

    sub-int v0, p1, v0

    .line 21
    iput p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->lastProgress:I

    .line 22
    return v0
.end method

.method public setTotalProgress(I)V
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressKeeper;->totalProgress:I

    .line 17
    return-void
.end method
