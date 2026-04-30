.class Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;
.super Ljava/lang/Object;
.source "Lanes.java"


# static fields
.field public static final NO_LANE:I = -0x1


# instance fields
.field private mInnerEnd:Ljava/lang/Integer;

.field private mInnerStart:Ljava/lang/Integer;

.field private final mIsVertical:Z

.field private final mLaneSize:I

.field private final mLanes:[Landroid/graphics/Rect;

.field private final mLayout:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;

.field private final mSavedLanes:[Landroid/graphics/Rect;

.field private final mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;I)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mTempRect:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    .line 71
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLayout:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;

    .line 72
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->isVertical()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    .line 74
    new-array v0, p2, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 75
    new-array v0, p2, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    move v0, v2

    .line 76
    :goto_0
    if-ge v0, p2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v0

    .line 78
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->calculateLaneSize(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;I)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLaneSize:I

    .line 83
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPaddingLeft()I

    move-result v6

    .line 84
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPaddingTop()I

    move-result v7

    move v5, v2

    .line 86
    :goto_1
    if-ge v5, p2, :cond_5

    .line 87
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLaneSize:I

    mul-int v1, v5, v0

    .line 89
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int v3, v6, v0

    .line 90
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    add-int v4, v7, v1

    .line 91
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLaneSize:I

    add-int/2addr v0, v3

    .line 92
    :goto_3
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v1, :cond_4

    move v1, v4

    .line 94
    :goto_4
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-virtual {v8, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 86
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 89
    goto :goto_2

    :cond_3
    move v0, v3

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLaneSize:I

    add-int/2addr v1, v4

    goto :goto_4

    .line 96
    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;[Landroid/graphics/Rect;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mTempRect:Landroid/graphics/Rect;

    .line 34
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    .line 59
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLayout:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;

    .line 60
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    .line 61
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    .line 62
    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLaneSize:I

    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    .line 65
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 60
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method public static calculateLaneSize(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;I)I
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPaddingLeft()I

    move-result v0

    .line 101
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPaddingRight()I

    move-result v1

    .line 102
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    .line 103
    div-int/2addr v0, p1

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPaddingTop()I

    move-result v0

    .line 106
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getPaddingBottom()I

    move-result v1

    .line 107
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    .line 108
    div-int/2addr v0, p1

    goto :goto_0
.end method

.method private findLaneThatFitsSpan(IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)I
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 245
    const/4 v0, 0x0

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 246
    add-int v0, v7, p2

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v1, v1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 247
    :goto_0
    if-ge v7, v8, :cond_3

    .line 248
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-virtual {v0, v7, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    .line 250
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLaneSize:I

    mul-int v2, p2, v0

    :goto_1
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v0, :cond_1

    move v3, v6

    :goto_2
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getChildFrame(Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->intersects(IILandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 258
    :goto_3
    return v0

    :cond_0
    move v2, v6

    .line 250
    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLaneSize:I

    mul-int v3, p2, v0

    goto :goto_2

    .line 247
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 258
    :cond_3
    const/4 v0, -0x1

    goto :goto_3
.end method

.method private intersects(IILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    .line 235
    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-static {v1, p3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 241
    :goto_1
    return v0

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private invalidateEdges()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerStart:Ljava/lang/Integer;

    .line 114
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerEnd:Ljava/lang/Integer;

    .line 115
    return-void
.end method

.method private offsetLane(II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v2, v0, p1

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 144
    return-void

    :cond_0
    move v0, p2

    .line 142
    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1
.end method


# virtual methods
.method public findLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 6

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->setUndefined()V

    .line 264
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p3, v0, :cond_3

    const v0, 0x7fffffff

    .line 265
    :goto_0
    const/4 v1, 0x0

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 267
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v2, :cond_5

    .line 268
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p3, v2, :cond_4

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 273
    :goto_2
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p3, v3, :cond_0

    if-lt v2, v1, :cond_1

    :cond_0
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p3, v3, :cond_2

    if-le v2, v1, :cond_2

    .line 276
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->findLaneThatFitsSpan(IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)I

    move-result v3

    .line 277
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 279
    invoke-virtual {p1, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    move v1, v2

    .line 265
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_3
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 268
    :cond_4
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 270
    :cond_5
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p3, v2, :cond_6

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 283
    :cond_7
    return-void
.end method

.method public getChildFrame(Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    iget v1, p4, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    aget-object v1, v0, v1

    .line 216
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p5, v0, :cond_0

    iget v0, p4, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->anchorLane:I

    .line 218
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v0, v2, v0

    .line 220
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v2, :cond_2

    .line 221
    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 222
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p5, v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 230
    :goto_2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 231
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 232
    return-void

    .line 216
    :cond_0
    iget v0, p4, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    goto :goto_0

    .line 222
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    goto :goto_1

    .line 225
    :cond_2
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 226
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p5, v1, :cond_3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_3
    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    goto :goto_3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v0, v0

    return v0
.end method

.method public getInnerEnd()I
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerEnd:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerEnd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 348
    :goto_0
    return v0

    .line 342
    :cond_0
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerEnd:Ljava/lang/Integer;

    .line 343
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    .line 345
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerEnd:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v3, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerEnd:Ljava/lang/Integer;

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerEnd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getInnerStart()I
    .locals 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerStart:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerStart:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 334
    :goto_0
    return v0

    .line 328
    :cond_0
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerStart:Ljava/lang/Integer;

    .line 329
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    .line 331
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerStart:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v3, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerStart:Ljava/lang/Integer;

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mInnerStart:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getLane(ILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    return-void
.end method

.method public getLaneSize()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLaneSize:I

    return v0
.end method

.method public getOrientation()Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->HORIZONTAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    goto :goto_0
.end method

.method public offset(I)V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->offset(II)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->invalidateEdges()V

    .line 152
    return-void
.end method

.method public offset(II)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->offsetLane(II)V

    .line 156
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->invalidateEdges()V

    .line 157
    return-void
.end method

.method public popChildFrame(Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    .line 192
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v1, :cond_1

    .line 193
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p4, v1, :cond_0

    .line 194
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 206
    :goto_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->invalidateEdges()V

    .line 207
    return-void

    .line 196
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 199
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p4, v1, :cond_2

    .line 200
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 202
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public pushChildFrame(Landroid/graphics/Rect;IILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)I
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v1, v0, p2

    .line 167
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p4, v0, :cond_0

    .line 169
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 170
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 185
    :goto_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->invalidateEdges()V

    .line 187
    return v0

    .line 172
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 173
    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 176
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p4, v0, :cond_2

    .line 177
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    .line 178
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 180
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 181
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method public reset(I)V
    .locals 4

    .prologue
    .line 307
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v3, v1, v0

    .line 310
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v1, :cond_0

    iget v1, v3, Landroid/graphics/Rect;->left:I

    :goto_1
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v2, :cond_1

    move v2, p1

    :goto_2
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 313
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v1, :cond_2

    .line 314
    iget v1, v3, Landroid/graphics/Rect;->top:I

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 307
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    .line 310
    goto :goto_1

    :cond_1
    iget v2, v3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 316
    :cond_2
    iget v1, v3, Landroid/graphics/Rect;->left:I

    iput v1, v3, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 320
    :cond_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->invalidateEdges()V

    .line 321
    return-void
.end method

.method public reset(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 3

    .prologue
    .line 286
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 287
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    .line 288
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mIsVertical:Z

    if-eqz v2, :cond_1

    .line 289
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p1, v2, :cond_0

    .line 290
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 286
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 295
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p1, v2, :cond_2

    .line 296
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 298
    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->invalidateEdges()V

    .line 304
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mSavedLanes:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->mLanes:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method
