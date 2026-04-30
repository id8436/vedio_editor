.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;
.source "GridLayoutManager.java"


# static fields
.field private static final DEFAULT_NUM_COLS:I = 0x2

.field private static final DEFAULT_NUM_ROWS:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field private mNumColumns:I

.field private mNumRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget-object v0, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_GridLayoutManager:[I

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_GridLayoutManager_adobe_csdk_twowayview_numColumns:I

    .line 54
    invoke-virtual {v0, v1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumColumns:I

    .line 55
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_GridLayoutManager_adobe_csdk_twowayview_numRows:I

    .line 56
    invoke-virtual {v0, v1, p5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumRows:I

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V

    .line 63
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumColumns:I

    .line 64
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumRows:I

    .line 66
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumColumns:I

    if-ge v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "GridLayoutManager must have at least 1 column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumRows:I

    if-ge v0, v1, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "GridLayoutManager must have at least 1 row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    return-void
.end method


# virtual methods
.method getLaneCount()I
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumColumns:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumRows:I

    goto :goto_0
.end method

.method getLaneForPosition(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->getLaneCount()I

    move-result v0

    rem-int v0, p2, v0

    .line 83
    invoke-virtual {p1, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    .line 84
    return-void
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumColumns:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumRows:I

    return v0
.end method

.method moveLayoutToPosition(IILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v2

    .line 89
    invoke-virtual {v2, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->reset(I)V

    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->getLaneForPosition(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v1, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    .line 93
    if-nez v1, :cond_1

    .line 106
    :cond_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 98
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {p0, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->measureChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 101
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v0

    .line 103
    :goto_0
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 104
    invoke-virtual {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->offset(II)V

    .line 103
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public setNumColumns(I)V
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumColumns:I

    if-ne v0, p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumColumns:I

    .line 118
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setNumRows(I)V
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumRows:I

    if-ne v0, p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->mNumRows:I

    .line 133
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->isVertical()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0
.end method
