.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;
.source "SpannableGridLayoutManager.java"


# static fields
.field private static final DEFAULT_NUM_COLS:I = 0x3

.field private static final DEFAULT_NUM_ROWS:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "SpannableGridLayoutManager"


# instance fields
.field private mMeasuring:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v4, 0x3

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

.method private getChildHeight(I)I
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLaneSize()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private getChildWidth(I)I
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLaneSize()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private getHeightUsed(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    .line 161
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getChildHeight(I)I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method private static getLaneSpan(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;Z)I
    .locals 1

    .prologue
    .line 103
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    goto :goto_0
.end method

.method private static getLaneSpan(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;Z)I
    .locals 1

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->access$000(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->access$100(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;)I

    move-result v0

    goto :goto_0
.end method

.method private getWidthUsed(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    .line 156
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getChildWidth(I)I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method


# virtual methods
.method cacheChildLaneAndSpan(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;
    .locals 6

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 214
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->setUndefined()V

    .line 216
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;

    .line 217
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v3, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->startLane:I

    iget v4, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->anchorLane:I

    invoke-virtual {v1, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->isUndefined()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {p0, v1, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLaneForChild(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 225
    :cond_1
    if-nez v0, :cond_2

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    .line 227
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v3, v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v4, v4, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->anchorLane:I

    iget v5, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;-><init>(IIII)V

    .line 229
    invoke-virtual {p0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->setItemEntryForPosition(ILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;)V

    move-object v0, v1

    .line 234
    :goto_0
    return-object v0

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->setLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;)V

    goto :goto_0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mMeasuring:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mMeasuring:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 239
    iget v2, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 256
    :cond_1
    :goto_0
    return v0

    .line 244
    :cond_2
    instance-of v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    if-eqz v2, :cond_6

    .line 245
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    .line 247
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    iget v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    if-lt v2, v0, :cond_3

    iget v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    if-lt v2, v0, :cond_3

    iget v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    .line 249
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLaneCount()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 251
    :cond_4
    iget v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    if-lt v2, v0, :cond_5

    iget v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    if-lt v2, v0, :cond_5

    iget v2, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 252
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLaneCount()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 256
    goto :goto_0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->generateDefaultLayoutParams()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 261
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 266
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 267
    iput v2, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->width:I

    .line 268
    iput v2, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->height:I

    .line 270
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    .line 272
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLaneCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    .line 274
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 281
    :cond_0
    :goto_0
    return-object v1

    .line 276
    :cond_1
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    .line 277
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLaneCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    goto :goto_0
.end method

.method getLaneForChild(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;->getLaneForChild(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 149
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->isUndefined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->findLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 152
    :cond_0
    return-void
.end method

.method getLaneForPosition(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;

    .line 138
    if-eqz v0, :cond_0

    .line 139
    iget v1, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->startLane:I

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->anchorLane:I

    invoke-virtual {p1, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->setUndefined()V

    goto :goto_0
.end method

.method getLaneSpanForChild(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->isVertical()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLaneSpan(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;Z)I

    move-result v0

    return v0
.end method

.method getLaneSpanForPosition(I)I
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;

    .line 128
    if-nez v0, :cond_0

    .line 129
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

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->isVertical()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLaneSpan(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;Z)I

    move-result v0

    return v0
.end method

.method measureChildWithMargins(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mMeasuring:Z

    .line 169
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getWidthUsed(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getHeightUsed(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mMeasuring:Z

    .line 171
    return-void
.end method

.method protected moveLayoutToPosition(IILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->isVertical()Z

    move-result v9

    .line 176
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->reset(I)V

    move v8, v1

    .line 180
    :goto_0
    if-gt v8, p1, :cond_2

    .line 181
    invoke-virtual {p0, v8}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;

    .line 182
    if-nez v1, :cond_4

    .line 183
    invoke-virtual {p3, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 184
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->cacheChildLaneAndSpan(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;

    move-object v7, v1

    .line 187
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v2, v7, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->startLane:I

    iget v3, v7, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->anchorLane:I

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    .line 191
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->isUndefined()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {p0, v8}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLaneSpanForPosition(I)I

    move-result v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->findLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 193
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v7, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->setLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->access$000(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getChildWidth(I)I

    move-result v2

    .line 197
    invoke-static {v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->access$100(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getChildHeight(I)I

    move-result v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    .line 196
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getChildFrame(Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 199
    if-eq v8, p1, :cond_1

    .line 200
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    iget v4, v7, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;->startLane:I

    invoke-static {v7, v9}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->getLaneSpan(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$SpannableItemEntry;Z)I

    move-result v5

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    move-object v1, p0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->pushChildFrame(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 180
    :cond_1
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLane(ILandroid/graphics/Rect;)V

    .line 206
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->reset(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 207
    if-eqz v9, :cond_3

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->offset(I)V

    .line 208
    return-void

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    move-object v7, v1

    goto :goto_1
.end method
