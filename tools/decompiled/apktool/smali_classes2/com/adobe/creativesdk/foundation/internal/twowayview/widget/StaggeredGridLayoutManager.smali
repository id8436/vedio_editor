.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;
.source "StaggeredGridLayoutManager.java"


# static fields
.field private static final DEFAULT_NUM_COLS:I = 0x2

.field private static final DEFAULT_NUM_ROWS:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "StaggeredGridLayoutManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;II)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;II)V

    .line 92
    return-void
.end method


# virtual methods
.method cacheChildFrame(Landroid/view/View;Landroid/graphics/Rect;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 216
    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tried to cache frame on undefined item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->cacheItemFrame(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;Landroid/graphics/Rect;)V

    .line 221
    return-object v0
.end method

.method cacheChildLaneAndSpan(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;
    .locals 5

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 186
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->setUndefined()V

    .line 188
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 189
    if-eqz v0, :cond_0

    .line 190
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v3, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->startLane:I

    iget v4, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->anchorLane:I

    invoke-virtual {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->isUndefined()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {p0, v2, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getLaneForChild(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 197
    :cond_1
    if-nez v0, :cond_2

    .line 198
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v2, v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v3, v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->anchorLane:I

    .line 199
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;-><init>(III)V

    .line 200
    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->setItemEntryForPosition(ILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;)V

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->setLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;)V

    goto :goto_0
.end method

.method cacheItemFrame(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 209
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->access$102(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;I)I

    .line 210
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->access$202(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;I)I

    .line 211
    return-void
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 227
    instance-of v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v2, :cond_1

    .line 228
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 229
    iget v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    if-lt v2, v0, :cond_0

    iget v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getLaneCount()I

    move-result v3

    if-gt v2, v3, :cond_0

    :goto_0
    and-int/2addr v0, v1

    .line 232
    :goto_1
    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->generateDefaultLayoutParams()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 237
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 240
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 246
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 247
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iput v2, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    .line 249
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    .line 255
    :goto_0
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 256
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 257
    const/4 v0, 0x1

    iget v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getLaneCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    .line 260
    :cond_0
    return-object v1

    .line 251
    :cond_1
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    .line 252
    iput v2, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method getLaneForChild(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->getLaneForChild(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 124
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->isUndefined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->findLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 127
    :cond_0
    return-void
.end method

.method getLaneForPosition(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget v1, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->startLane:I

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->anchorLane:I

    invoke-virtual {p1, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->setUndefined()V

    goto :goto_0
.end method

.method getLaneSpanForChild(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 97
    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    return v0
.end method

.method getLaneSpanForPosition(I)I
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 103
    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not find span for position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->access$000(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I

    move-result v0

    return v0
.end method

.method moveLayoutToPosition(IILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->isVertical()Z

    move-result v8

    .line 132
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->reset(I)V

    move v7, v1

    .line 136
    :goto_0
    if-gt v7, p1, :cond_3

    .line 137
    invoke-virtual {p0, v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 139
    if-eqz v6, :cond_2

    .line 140
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v2, v6, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->startLane:I

    iget v3, v6, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->anchorLane:I

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    .line 144
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->isUndefined()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {p0, v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getLaneSpanForPosition(I)I

    move-result v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->findLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 146
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v6, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->setLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v6}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->access$100(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I

    move-result v2

    invoke-static {v6}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->access$200(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I

    move-result v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getChildFrame(Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    move-object v2, v6

    .line 172
    :goto_1
    if-eq v7, p1, :cond_1

    .line 173
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    iget v4, v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->startLane:I

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->access$000(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;)I

    move-result v5

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->pushChildFrame(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 136
    :cond_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p3, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v3

    .line 159
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {p0, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->measureChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 163
    invoke-virtual {p0, v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;

    .line 165
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v2, v6, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->startLane:I

    iget v4, v6, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;->anchorLane:I

    invoke-virtual {v1, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    .line 166
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 167
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    .line 166
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getChildFrame(Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 169
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->cacheItemFrame(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$StaggeredItemEntry;Landroid/graphics/Rect;)V

    move-object v2, v6

    goto :goto_1

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLane(ILandroid/graphics/Rect;)V

    .line 178
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->reset(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 179
    if-eqz v8, :cond_4

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->offset(I)V

    .line 180
    return-void

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2
.end method
