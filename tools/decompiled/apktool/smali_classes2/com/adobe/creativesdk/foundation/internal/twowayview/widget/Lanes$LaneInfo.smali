.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;
.super Ljava/lang/Object;
.source "Lanes.java"


# instance fields
.field public anchorLane:I

.field public startLane:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUndefined()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 44
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->anchorLane:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(II)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    .line 49
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->anchorLane:I

    .line 50
    return-void
.end method

.method public setUndefined()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    .line 54
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->anchorLane:I

    .line 55
    return-void
.end method
