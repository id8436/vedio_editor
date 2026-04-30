.class Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;
.super Ljava/lang/Object;
.source "ItemSpacingOffsets.java"


# instance fields
.field private mAddSpacingAtEnd:Z

.field private final mHorizontalSpacing:I

.field private final mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

.field private final mVerticalSpacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    .line 22
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Spacings should be equal or greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mVerticalSpacing:I

    .line 27
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mHorizontalSpacing:I

    .line 28
    return-void
.end method

.method private static isFirstChildInLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getCount()I

    move-result v3

    .line 64
    if-lt p1, v3, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    move v2, v0

    .line 69
    :goto_1
    if-ge v1, p1, :cond_2

    .line 70
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneSpanForPosition(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 71
    if-ge v2, v3, :cond_0

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isLastChildInLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getCount()I

    move-result v1

    .line 84
    sub-int v1, p2, v1

    if-ge p1, v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    instance-of v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager;

    if-nez v1, :cond_0

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSecondLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;II)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 35
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    const/4 v2, -0x1

    .line 40
    add-int/lit8 v0, p2, -0x1

    move v4, v0

    move v0, v2

    move v2, v4

    .line 41
    :goto_1
    if-ltz v2, :cond_2

    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {p1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneForPosition(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    .line 44
    if-eq v0, p3, :cond_3

    .line 51
    :cond_2
    invoke-virtual {p1, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneSpanForPosition(I)I

    move-result v2

    .line 52
    if-nez v0, :cond_0

    .line 53
    add-int/2addr v0, v2

    if-ne p3, v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    .line 48
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 53
    goto :goto_2
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 12

    .prologue
    .line 109
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;

    .line 111
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {v0, v1, p2, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneForPosition(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 112
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mTempLaneInfo:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;

    iget v3, v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->startLane:I

    .line 113
    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLaneSpanForPosition(I)I

    move-result v4

    .line 114
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->getCount()I

    move-result v5

    .line 115
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    .line 117
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->isVertical()Z

    move-result v8

    .line 119
    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 120
    :goto_0
    invoke-direct {p0, v0, p2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->isSecondLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;II)Z

    move-result v9

    .line 122
    add-int v2, v3, v4

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    move v6, v2

    .line 123
    :goto_1
    add-int v2, v3, v4

    add-int/lit8 v3, v5, -0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v5, v2

    .line 125
    :goto_2
    if-eqz v8, :cond_3

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mHorizontalSpacing:I

    move v4, v2

    .line 130
    :goto_3
    if-eqz v1, :cond_4

    .line 131
    const/4 v2, 0x0

    move v3, v2

    .line 140
    :goto_4
    if-eqz v6, :cond_7

    .line 141
    const/4 v1, 0x0

    .line 150
    :goto_5
    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->isFirstChildInLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;I)Z

    move-result v4

    .line 151
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mAddSpacingAtEnd:Z

    if-nez v2, :cond_a

    .line 152
    invoke-static {v0, p2, v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->isLastChildInLane(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;II)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    move v2, v0

    .line 154
    :goto_6
    if-eqz v8, :cond_d

    .line 155
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 156
    if-eqz v4, :cond_b

    const/4 v0, 0x0

    :goto_7
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 157
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 158
    if-eqz v2, :cond_c

    const/4 v0, 0x0

    :goto_8
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 165
    :goto_9
    return-void

    .line 119
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 122
    :cond_1
    const/4 v2, 0x0

    move v6, v2

    goto :goto_1

    .line 123
    :cond_2
    const/4 v2, 0x0

    move v5, v2

    goto :goto_2

    .line 125
    :cond_3
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mVerticalSpacing:I

    move v4, v2

    goto :goto_3

    .line 132
    :cond_4
    if-eqz v6, :cond_5

    if-nez v9, :cond_5

    .line 133
    int-to-double v2, v4

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v10

    double-to-int v2, v2

    move v3, v2

    goto :goto_4

    .line 134
    :cond_5
    if-eqz v9, :cond_6

    if-nez v6, :cond_6

    .line 135
    int-to-double v2, v4

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v10

    double-to-int v2, v2

    move v3, v2

    goto :goto_4

    .line 137
    :cond_6
    int-to-double v2, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v10

    double-to-int v2, v2

    move v3, v2

    goto :goto_4

    .line 142
    :cond_7
    if-eqz v1, :cond_8

    if-nez v5, :cond_8

    .line 143
    int-to-double v4, v4

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v10

    double-to-int v1, v4

    goto :goto_5

    .line 144
    :cond_8
    if-eqz v5, :cond_9

    if-nez v1, :cond_9

    .line 145
    int-to-double v4, v4

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v4, v10

    double-to-int v1, v4

    goto :goto_5

    .line 147
    :cond_9
    int-to-double v4, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v10

    double-to-int v1, v4

    goto :goto_5

    .line 152
    :cond_a
    const/4 v0, 0x0

    move v2, v0

    goto :goto_6

    .line 156
    :cond_b
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mVerticalSpacing:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_7

    .line 158
    :cond_c
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mVerticalSpacing:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_8

    .line 160
    :cond_d
    if-eqz v4, :cond_e

    const/4 v0, 0x0

    :goto_a
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 161
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 162
    if-eqz v2, :cond_f

    const/4 v0, 0x0

    :goto_b
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 163
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    .line 160
    :cond_e
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mHorizontalSpacing:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 162
    :cond_f
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mHorizontalSpacing:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_b
.end method

.method public setAddSpacingAtEnd(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->mAddSpacingAtEnd:Z

    .line 100
    return-void
.end method
