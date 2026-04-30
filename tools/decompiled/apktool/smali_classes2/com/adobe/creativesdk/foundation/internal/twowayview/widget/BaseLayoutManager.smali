.class public abstract Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;
.source "BaseLayoutManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "BaseLayoutManager"


# instance fields
.field protected final mChildFrame:Landroid/graphics/Rect;

.field private mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

.field private mItemEntriesToRestore:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

.field private mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

.field private mLanesToRestore:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

.field protected final mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

.field protected final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 140
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mTempRect:Landroid/graphics/Rect;

    .line 140
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    .line 152
    return-void
.end method

.method private canUseLanes(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 250
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneCount()I

    move-result v1

    .line 255
    invoke-static {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->calculateLaneSize(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;I)I

    move-result v2

    .line 257
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getOrientation()Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    move-result-object v3

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getOrientation()Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getCount()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLaneSize()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ensureLayoutState()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneCount()I

    move-result v1

    .line 264
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->canUseLanes(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    .line 269
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-direct {v3, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;I)V

    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    .line 271
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->requestMoveLayout()V

    .line 273
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    if-nez v1, :cond_2

    .line 274
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    .line 277
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getOrientation()Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getOrientation()Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    move-result-object v3

    if-ne v1, v3, :cond_3

    .line 278
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLaneSize()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLaneSize()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 279
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->invalidateItemLanesAfter(I)V

    .line 284
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->clear()V

    goto :goto_1
.end method

.method private getHeightUsed(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x0

    .line 466
    :goto_0
    return v0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLaneSize()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    move-result v1

    mul-int/2addr v0, v1

    .line 466
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getWidthUsed(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->isVertical()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLaneSize()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    move-result v1

    mul-int/2addr v0, v1

    .line 457
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private handleUpdate(IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 288
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->invalidateItemLanesAfter(I)V

    .line 290
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$twowayview$widget$BaseLayoutManager$UpdateOp:[I

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 307
    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getFirstVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 314
    :cond_0
    :goto_1
    return-void

    .line 292
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->offsetForAddition(II)V

    goto :goto_0

    .line 296
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->offsetForRemoval(II)V

    goto :goto_0

    .line 300
    :pswitch_2
    invoke-virtual {p0, p1, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->offsetForRemoval(II)V

    .line 301
    invoke-virtual {p0, p2, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->offsetForAddition(II)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->requestLayout()V

    goto :goto_1

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private popChildFrame(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 3

    .prologue
    .line 176
    move v1, p3

    :goto_0
    add-int v0, p3, p4

    if-ge v1, v0, :cond_1

    .line 178
    if-eqz p1, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-eq p5, v0, :cond_0

    .line 179
    sub-int v0, v1, p3

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->access$100(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;I)I

    move-result v0

    .line 184
    :goto_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v2, p2, v1, v0, p5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->popChildFrame(Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 176
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 186
    :cond_1
    return-void
.end method

.method private requestMoveLayout()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPendingScrollPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getFirstVisiblePosition()I

    move-result v1

    .line 243
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getChildStart(Landroid/view/View;)I

    move-result v0

    .line 246
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->setPendingScrollPositionWithOffset(II)V

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method cacheChildFrame(Landroid/view/View;Landroid/graphics/Rect;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method cacheChildLaneAndSpan(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return-object v0
.end method

.method protected canAddMoreViews(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 444
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p1, v2, :cond_2

    .line 445
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getInnerStart()I

    move-result v2

    if-le v2, p2, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 445
    goto :goto_0

    .line 447
    :cond_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getInnerEnd()I

    move-result v2

    if-lt v2, p2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 531
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    iget v2, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    if-ne v2, v3, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 532
    goto :goto_0

    .line 534
    :cond_2
    iget v2, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method clearItemEntries()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->clear()V

    .line 217
    :cond_0
    return-void
.end method

.method protected detachChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 6

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {p0, v1, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneForPosition(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 501
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedChildFrame(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 503
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v3, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    .line 504
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    .line 503
    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->popChildFrame(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 505
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 540
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 543
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 563
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 549
    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 550
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 552
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 558
    :goto_0
    return-object v1

    .line 554
    :cond_0
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 555
    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    goto :goto_0
.end method

.method getDecoratedChildFrame(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 190
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 191
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 192
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 193
    return-void
.end method

.method getItemEntryForPosition(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->getItemEntry(I)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract getLaneCount()I
.end method

.method getLaneForChild(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneForPosition(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 509
    return-void
.end method

.method abstract getLaneForPosition(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
.end method

.method getLaneSpanForChild(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method getLaneSpanForPosition(I)I
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    return-object v0
.end method

.method invalidateItemLanesAfter(I)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->invalidateItemLanesAfter(I)V

    .line 223
    :cond_0
    return-void
.end method

.method isVertical()Z
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getOrientation()Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 7

    .prologue
    .line 481
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {p0, v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneForChild(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 483
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 484
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    move-object v5, p2

    .line 483
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getChildFrame(Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 485
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->cacheChildFrame(Landroid/view/View;Landroid/graphics/Rect;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    move-result-object v6

    .line 487
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 491
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mChildFrame:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v3, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    .line 493
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneSpanForChild(Landroid/view/View;)I

    move-result v4

    move-object v0, p0

    move-object v1, v6

    move-object v5, p2

    .line 492
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->pushChildFrame(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 495
    :cond_0
    return-void
.end method

.method protected measureChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 0

    .prologue
    .line 475
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->cacheChildLaneAndSpan(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;

    .line 476
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->measureChildWithMargins(Landroid/view/View;)V

    .line 477
    return-void
.end method

.method measureChildWithMargins(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getWidthUsed(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getHeightUsed(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 471
    return-void
.end method

.method abstract moveLayoutToPosition(IILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->isVertical()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->offset(I)V

    .line 322
    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->offsetChildrenHorizontal(I)V

    .line 323
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->offsetChildrenVertical(I)V

    .line 329
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->offset(I)V

    .line 332
    :cond_0
    return-void
.end method

.method offsetForAddition(II)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->offsetForAddition(II)V

    .line 229
    :cond_0
    return-void
.end method

.method offsetForRemoval(II)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->offsetForRemoval(II)V

    .line 235
    :cond_0
    return-void
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->ADD:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;

    invoke-direct {p0, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->handleUpdate(IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;)V

    .line 383
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    .line 384
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->clearItemEntries()V

    .line 407
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    .line 408
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->MOVE:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;

    invoke-direct {p0, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->handleUpdate(IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;)V

    .line 401
    invoke-super {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V

    .line 402
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->REMOVE:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;

    invoke-direct {p0, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->handleUpdate(IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;)V

    .line 389
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    .line 390
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->UPDATE:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;

    invoke-direct {p0, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->handleUpdate(IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;)V

    .line 395
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 396
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanesToRestore:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 337
    :goto_0
    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanesToRestore:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    .line 339
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntriesToRestore:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    .line 341
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanesToRestore:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    .line 342
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntriesToRestore:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->ensureLayoutState()Z

    move-result v1

    .line 349
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    if-nez v2, :cond_2

    .line 371
    :goto_1
    return-void

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    .line 355
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    if-eqz v3, :cond_3

    .line 356
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->setAdapterSize(I)V

    .line 360
    :cond_3
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->ensureLayoutStateDueToChildContentChange(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 361
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getAnchorItemPosition(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    .line 364
    if-lez v2, :cond_5

    if-nez v1, :cond_4

    if-nez v0, :cond_5

    .line 365
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPendingScrollOffset()I

    move-result v0

    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->moveLayoutToPosition(IILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->reset(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 370
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_1
.end method

.method protected onLayoutScrapList(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->save()V

    .line 376
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->onLayoutScrapList(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 377
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->restore()V

    .line 378
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 432
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;

    .line 434
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$300(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)[Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$500(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)I

    move-result v0

    if-lez v0, :cond_0

    .line 435
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$400(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    move-result-object v1

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$300(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)[Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$500(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;[Landroid/graphics/Rect;I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanesToRestore:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    .line 436
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$600(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntriesToRestore:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    .line 439
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 440
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 412
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 413
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;

    invoke-direct {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 415
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getCount()I

    move-result v0

    .line 416
    :goto_0
    new-array v2, v0, [Landroid/graphics/Rect;

    invoke-static {v3, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$302(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move v2, v1

    .line 417
    :goto_1
    if-ge v2, v0, :cond_1

    .line 418
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 419
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v5, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLane(ILandroid/graphics/Rect;)V

    .line 420
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$300(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;)[Landroid/graphics/Rect;

    move-result-object v5

    aput-object v4, v5, v2

    .line 417
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 415
    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getOrientation()Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$402(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    .line 424
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getLaneSize()I

    move-result v1

    :cond_2
    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$502(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;I)I

    .line 425
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-static {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;->access$602(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$LanedSavedState;Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    .line 427
    return-object v3
.end method

.method protected pushChildFrame(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p5, v0, :cond_1

    if-eqz p1, :cond_1

    .line 157
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->access$000(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v4, p3

    .line 159
    :goto_1
    add-int v3, p3, p4

    if-ge v4, v3, :cond_3

    .line 161
    if-eqz p1, :cond_2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-eq p5, v3, :cond_2

    .line 162
    sub-int v3, v4, p3

    invoke-static {p1, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->access$100(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;I)I

    move-result v3

    .line 167
    :goto_2
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mLanes:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    invoke-virtual {v5, p2, v4, v3, p5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->pushChildFrame(Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)I

    move-result v3

    .line 168
    if-le p4, v1, :cond_0

    if-eqz v0, :cond_0

    .line 169
    sub-int v5, v4, p3

    invoke-static {p1, v5, v3, p4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;->access$200(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;III)V

    .line 159
    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 157
    goto :goto_0

    :cond_2
    move v3, v2

    .line 164
    goto :goto_2

    .line 172
    :cond_3
    return-void
.end method

.method setItemEntryForPosition(ILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->mItemEntries:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemEntries;->putItemEntry(ILcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$ItemEntry;)V

    .line 207
    :cond_0
    return-void
.end method
