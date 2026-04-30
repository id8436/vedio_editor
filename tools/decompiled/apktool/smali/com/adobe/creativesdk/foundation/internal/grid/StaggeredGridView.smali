.class public Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;
.super Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;
.source "StaggeredGridView.java"


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_COLUMNS_LANDSCAPE:I = 0x3

.field private static final DEFAULT_COLUMNS_PORTRAIT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "StaggeredGridView"


# instance fields
.field private mColumnBottoms:[I

.field private mColumnCount:I

.field private mColumnCountLandscape:I

.field private mColumnCountPortrait:I

.field private mColumnLefts:[I

.field private mColumnTops:[I

.field private mColumnWidth:I

.field private mDistanceToTop:I

.field private mGridPaddingBottom:I

.field private mGridPaddingLeft:I

.field private mGridPaddingRight:I

.field private mGridPaddingTop:I

.field private mItemMargin:I

.field private mNeedSync:Z

.field private mPositionData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountPortrait:I

    .line 55
    iput v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountLandscape:I

    .line 154
    if-eqz p2, :cond_0

    .line 156
    sget-object v0, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_StaggeredGridView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 158
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_StaggeredGridView_adobe_csdk_column_count:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    .line 161
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-lez v1, :cond_1

    .line 162
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountPortrait:I

    .line 163
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountLandscape:I

    .line 174
    :goto_0
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_StaggeredGridView_adobe_csdk_item_margin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mItemMargin:I

    .line 176
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_StaggeredGridView_adobe_csdk_grid_paddingLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingLeft:I

    .line 178
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_StaggeredGridView_adobe_csdk_grid_paddingRight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingRight:I

    .line 180
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_StaggeredGridView_adobe_csdk_grid_paddingTop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingTop:I

    .line 182
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_StaggeredGridView_adobe_csdk_grid_paddingBottom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingBottom:I

    .line 185
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    :cond_0
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    .line 190
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    .line 191
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    .line 192
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnLefts:[I

    .line 193
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    .line 194
    return-void

    .line 166
    :cond_1
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_StaggeredGridView_adobe_csdk_column_count_portrait:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountPortrait:I

    .line 169
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_StaggeredGridView_adobe_csdk_column_count_landscape:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountLandscape:I

    goto :goto_0
.end method

.method private alignTops()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 774
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHeaderViewsCount()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 776
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestNonHeaderTops()[I

    move-result-object v5

    .line 779
    const/4 v3, 0x1

    .line 780
    const/4 v2, -0x1

    .line 781
    const v0, 0x7fffffff

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    .line 782
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 784
    if-eqz v4, :cond_0

    if-lez v0, :cond_0

    aget v6, v5, v0

    if-eq v6, v2, :cond_0

    move v4, v1

    .line 788
    :cond_0
    aget v6, v5, v0

    if-ge v6, v2, :cond_1

    .line 789
    aget v2, v5, v0

    move v3, v0

    .line 782
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    :cond_2
    if-eqz v4, :cond_4

    .line 807
    :cond_3
    :goto_1
    return-void

    .line 798
    :cond_4
    :goto_2
    array-length v0, v5

    if-ge v1, v0, :cond_6

    .line 799
    if-eq v1, v3, :cond_5

    .line 801
    aget v0, v5, v1

    sub-int v0, v2, v0

    .line 802
    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->offsetChildrenTopAndBottom(II)V

    .line 798
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 805
    :cond_6
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->invalidate()V

    goto :goto_1
.end method

.method private calculateColumnLeft(I)I
    .locals 3

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getRowPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mItemMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mItemMargin:I

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnWidth:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateColumnWidth(I)I
    .locals 3

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getRowPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getRowPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 925
    sub-int v0, p1, v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mItemMargin:I

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getChildBottomMargin()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mItemMargin:I

    return v0
.end method

.method private getChildColumn(IZ)I
    .locals 2

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 1069
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    .line 1070
    if-ltz v0, :cond_0

    if-lt v0, v1, :cond_1

    .line 1074
    :cond_0
    if-eqz p2, :cond_2

    .line 1075
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v0

    .line 1082
    :cond_1
    :goto_0
    return v0

    .line 1078
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedTopColumn()I

    move-result v0

    goto :goto_0
.end method

.method private getChildHeight(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private getChildTopMargin(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHeaderViewsCount()I

    move-result v1

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    const/4 v1, 0x1

    .line 566
    :goto_0
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mItemMargin:I

    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 565
    goto :goto_0
.end method

.method private getHighestNonHeaderTops()[I
    .locals 7

    .prologue
    .line 810
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    new-array v2, v0, [I

    .line 811
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildCount()I

    move-result v3

    .line 812
    if-lez v3, :cond_1

    .line 813
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 814
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 815
    if-eqz v4, :cond_0

    .line 816
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    .line 821
    iget v5, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->viewType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_0

    .line 822
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->column:I

    aget v6, v2, v6

    if-ge v5, v6, :cond_0

    .line 823
    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->column:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    aput v4, v2, v0

    .line 813
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 828
    :cond_1
    return-object v2
.end method

.method private getHighestPositionedBottom()I
    .locals 2

    .prologue
    .line 1110
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v0

    .line 1111
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v1, v0

    return v0
.end method

.method private getHighestPositionedBottomColumn()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1120
    .line 1121
    const v1, 0x7fffffff

    move v2, v0

    .line 1123
    :goto_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getMinColumnCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1124
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v3, v3, v0

    .line 1127
    const/high16 v4, -0x80000000

    if-eq v4, v3, :cond_0

    if-ge v3, v1, :cond_0

    move v1, v3

    move v2, v0

    .line 1123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1132
    :cond_1
    return v2
.end method

.method private getHighestPositionedTop()I
    .locals 2

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedTopColumn()I

    move-result v0

    .line 1183
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v0, v1, v0

    return v0
.end method

.method private getHighestPositionedTopColumn()I
    .locals 5

    .prologue
    const v2, 0x7fffffff

    const/4 v0, 0x0

    .line 1187
    move v1, v2

    move v3, v0

    .line 1190
    :goto_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getMinColumnCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1191
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v4, v4, v0

    .line 1192
    if-eq v2, v4, :cond_0

    if-ge v4, v1, :cond_0

    move v1, v4

    move v3, v0

    .line 1190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1197
    :cond_1
    return v3
.end method

.method private getLowestPositionedBottom()I
    .locals 2

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedBottomColumn()I

    move-result v0

    .line 1137
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v1, v0

    return v0
.end method

.method private getLowestPositionedBottomColumn()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v2, -0x80000000

    .line 1141
    move v1, v2

    move v3, v0

    .line 1144
    :goto_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getMinColumnCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1145
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v4, v4, v0

    .line 1148
    if-eq v2, v4, :cond_0

    if-le v4, v1, :cond_0

    move v1, v4

    move v3, v0

    .line 1144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1153
    :cond_1
    return v3
.end method

.method private getLowestPositionedTop()I
    .locals 2

    .prologue
    .line 1161
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedTopColumn()I

    move-result v0

    .line 1162
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v0, v1, v0

    return v0
.end method

.method private getLowestPositionedTopColumn()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1166
    .line 1169
    const/high16 v1, -0x80000000

    move v2, v0

    .line 1171
    :goto_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getMinColumnCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1172
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v3, v3, v0

    .line 1173
    const v4, 0x7fffffff

    if-eq v4, v3, :cond_0

    if-le v3, v1, :cond_0

    move v1, v3

    move v2, v0

    .line 1171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1178
    :cond_1
    return v2
.end method

.method private getMinColumnCount()I
    .locals 2

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getCount()I

    move-result v0

    .line 1116
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getOrCreateRecord(I)Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;

    .line 1042
    if-nez v0, :cond_0

    .line 1043
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;-><init>()V

    .line 1044
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1046
    :cond_0
    return-object v0
.end method

.method private getPositionColumn(I)I
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;

    .line 1051
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;->column:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getSafeBottom(I)I
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v0, p1

    .line 426
    const/high16 v1, -0x80000000

    if-eq v1, v0, :cond_0

    .line 429
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v0

    goto :goto_0
.end method

.method private getSafeTop(I)I
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v0, v0, p1

    .line 434
    const v1, 0x7fffffff

    if-eq v1, v0, :cond_0

    .line 437
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedTop()I

    move-result v0

    goto :goto_0
.end method

.method private initColumnBottoms()V
    .locals 3

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingTop:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1096
    return-void
.end method

.method private initColumnLefts()V
    .locals 3

    .prologue
    .line 1099
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnLefts:[I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->calculateColumnLeft(I)I

    move-result v2

    aput v2, v1, v0

    .line 1099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1102
    :cond_0
    return-void
.end method

.method private initColumnTops()V
    .locals 3

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingTop:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1092
    return-void
.end method

.method private initColumnTopsAndBottoms()V
    .locals 0

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->initColumnTops()V

    .line 1087
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->initColumnBottoms()V

    .line 1088
    return-void
.end method

.method private isHeaderOrFooter(I)Z
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 1061
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutGridChild(Landroid/view/View;IZII)V
    .locals 6

    .prologue
    .line 444
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v3

    .line 449
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildTopMargin(I)I

    move-result v4

    .line 450
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildBottomMargin()I

    move-result v5

    .line 451
    add-int v2, v4, v5

    .line 453
    if-eqz p3, :cond_0

    .line 455
    invoke-direct {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getSafeBottom(I)I

    move-result v1

    .line 456
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    move v2, v1

    move v1, v0

    .line 471
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    .line 472
    iput v3, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->column:I

    .line 474
    invoke-direct {p0, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 475
    invoke-direct {p0, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 478
    add-int v0, v2, v4

    .line 479
    sub-int/2addr v1, v5

    .line 481
    invoke-virtual {p1, p4, v0, p5, v1}, Landroid/view/View;->layout(IIII)V

    .line 482
    return-void

    .line 460
    :cond_0
    invoke-direct {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getSafeTop(I)I

    move-result v0

    .line 461
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    sub-int v1, v0, v1

    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method private layoutGridHeaderFooter(Landroid/view/View;IZIIII)V
    .locals 8

    .prologue
    .line 404
    if-eqz p3, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v5

    .line 406
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int v7, v5, v0

    .line 413
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-ge v0, v1, :cond_1

    .line 414
    invoke-direct {p0, v0, v5}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 415
    invoke-direct {p0, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedTop()I

    move-result v7

    .line 410
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    sub-int v5, v7, v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 418
    invoke-super/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onLayoutChild(Landroid/view/View;IZIIII)V

    .line 420
    return-void
.end method

.method private offsetAllColumnsTopAndBottom(I)V
    .locals 2

    .prologue
    .line 741
    if-eqz p1, :cond_0

    .line 742
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 743
    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->offsetColumnTopAndBottom(II)V

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    :cond_0
    return-void
.end method

.method private offsetColumnTopAndBottom(II)V
    .locals 2

    .prologue
    .line 749
    if-eqz p1, :cond_1

    .line 754
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v0, v0, p2

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 755
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v1, v0, p2

    add-int/2addr v1, p1

    aput v1, v0, p2

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v0, p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 758
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v1, v0, p2

    add-int/2addr v1, p1

    aput v1, v0, p2

    .line 761
    :cond_1
    return-void
.end method

.method private offsetDistanceToTop(I)V
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mDistanceToTop:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mDistanceToTop:I

    .line 734
    return-void
.end method

.method private offsetGridChild(Landroid/view/View;IZII)V
    .locals 6

    .prologue
    .line 523
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v3

    .line 528
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildTopMargin(I)I

    move-result v4

    .line 529
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildBottomMargin()I

    move-result v0

    .line 530
    add-int v2, v4, v0

    .line 532
    if-eqz p3, :cond_0

    .line 534
    invoke-direct {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getSafeBottom(I)I

    move-result v1

    .line 535
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    move v2, v1

    move v1, v0

    .line 551
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    .line 552
    iput v3, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->column:I

    .line 554
    invoke-direct {p0, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 555
    invoke-direct {p0, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 557
    add-int v5, v2, v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onOffsetChild(Landroid/view/View;IZII)V

    .line 558
    return-void

    .line 539
    :cond_0
    invoke-direct {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getSafeTop(I)I

    move-result v0

    .line 540
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    sub-int v1, v0, v1

    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method private offsetGridHeaderFooter(Landroid/view/View;IZII)V
    .locals 6

    .prologue
    .line 504
    if-eqz p3, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v5

    .line 506
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v5

    .line 513
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-ge v1, v2, :cond_1

    .line 514
    invoke-direct {p0, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->updateColumnTopIfNeeded(II)V

    .line 515
    invoke-direct {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->updateColumnBottomIfNeeded(II)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedTop()I

    move-result v0

    .line 510
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v1

    sub-int v5, v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 518
    invoke-super/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onOffsetChild(Landroid/view/View;IZII)V

    .line 519
    return-void
.end method

.method private onColumnSync()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 939
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mSyncPosition:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 941
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4, v3}, Landroid/util/SparseArray;-><init>(I)V

    move v2, v1

    .line 942
    :goto_0
    if-ge v2, v3, :cond_0

    .line 944
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;

    .line 945
    if-nez v0, :cond_1

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    move v2, v1

    .line 958
    :goto_1
    if-ge v2, v3, :cond_4

    .line 959
    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getOrCreateRecord(I)Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;

    move-result-object v5

    .line 960
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 961
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnWidth:I

    int-to-double v8, v0

    mul-double/2addr v8, v6

    double-to-int v0, v8

    .line 962
    iput-wide v6, v5, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;->heightRatio:D

    .line 967
    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 969
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v5

    .line 970
    add-int v6, v5, v0

    move v0, v1

    .line 972
    :goto_2
    iget v7, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-ge v0, v7, :cond_3

    .line 973
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aput v5, v7, v0

    .line 974
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aput v6, v7, v0

    .line 972
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 947
    :cond_1
    const-string/jumbo v5, "StaggeredGridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onColumnSync:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ratio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;->heightRatio:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-wide v6, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;->heightRatio:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 942
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 979
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v6

    .line 981
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v7, v7, v6

    .line 982
    add-int/2addr v0, v7

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildTopMargin(I)I

    move-result v8

    add-int/2addr v0, v8

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildBottomMargin()I

    move-result v8

    add-int/2addr v0, v8

    .line 984
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aput v7, v8, v6

    .line 985
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aput v0, v7, v6

    .line 987
    iput v6, v5, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;->column:I

    .line 958
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 999
    :cond_4
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedBottomColumn()I

    move-result v0

    .line 1000
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->setPositionColumn(II)V

    .line 1004
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v2, v0

    .line 1005
    neg-int v2, v0

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mSpecificTop:I

    add-int/2addr v2, v3

    .line 1007
    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->offsetAllColumnsTopAndBottom(I)V

    .line 1010
    neg-int v0, v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mDistanceToTop:I

    .line 1013
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1014
    return-void
.end method

.method private preLayoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 366
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mNeedSync:Z

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    return-void

    .line 370
    :cond_0
    iput-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mNeedSync:Z

    goto :goto_0
.end method

.method private requestLayoutChildren()V
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 352
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 353
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 352
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    return-void
.end method

.method private setPositionColumn(II)V
    .locals 1

    .prologue
    .line 1022
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getOrCreateRecord(I)Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;

    move-result-object v0

    .line 1023
    iput p2, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;->column:I

    .line 1024
    return-void
.end method

.method private setPositionHeightRatio(II)V
    .locals 6

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getOrCreateRecord(I)Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;

    move-result-object v0

    .line 1028
    int-to-double v2, p2

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnWidth:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;->heightRatio:D

    .line 1033
    return-void
.end method

.method private setPositionIsHeaderFooter(I)V
    .locals 2

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getOrCreateRecord(I)Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;

    move-result-object v0

    .line 1037
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridItemRecord;->isHeaderFooter:Z

    .line 1038
    return-void
.end method

.method private updateColumnBottomIfNeeded(II)V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v0, p1

    if-le p2, v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aput p2, v0, p1

    .line 604
    :cond_0
    return-void
.end method

.method private updateColumnTopIfNeeded(II)V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aput p2, v0, p1

    .line 598
    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustViewsAfterFillGap(Z)V
    .locals 0

    .prologue
    .line 765
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->adjustViewsAfterFillGap(Z)V

    .line 768
    if-nez p1, :cond_0

    .line 769
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->alignTops()V

    .line 771
    :cond_0
    return-void
.end method

.method protected generateChildLayoutParams(Landroid/view/View;)Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;
    .locals 3

    .prologue
    .line 575
    const/4 v1, 0x0

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_2

    .line 579
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    if-eqz v1, :cond_1

    .line 580
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    .line 586
    :goto_0
    if-nez v0, :cond_0

    .line 587
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnWidth:I

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;-><init>(II)V

    .line 591
    :cond_0
    return-object v0

    .line 583
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected getChildBottom(I)I
    .locals 2

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildBottom(I)I

    move-result v0

    .line 655
    :goto_0
    return v0

    .line 651
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 652
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedTop()I

    move-result v0

    goto :goto_0

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method protected getChildLeft(I)I
    .locals 2

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildLeft(I)I

    move-result v0

    .line 613
    :goto_0
    return v0

    .line 612
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 613
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnLefts:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method protected getChildTop(I)I
    .locals 2

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildTop(I)I

    move-result v0

    .line 627
    :goto_0
    return v0

    .line 623
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getPositionColumn(I)I

    move-result v0

    .line 624
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 625
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedBottom()I

    move-result v0

    goto :goto_0

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public getColumnWidth()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnWidth:I

    return v0
.end method

.method public getDistanceToTop()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mDistanceToTop:I

    return v0
.end method

.method protected getFirstChildTop()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mFirstPosition:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getFirstChildTop()I

    move-result v0

    .line 687
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedTop()I

    move-result v0

    goto :goto_0
.end method

.method protected getHighestChildTop()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mFirstPosition:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHighestChildTop()I

    move-result v0

    .line 695
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedTop()I

    move-result v0

    goto :goto_0
.end method

.method protected getLastChildBottom()I
    .locals 2

    .prologue
    .line 675
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 676
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getLastChildBottom()I

    move-result v0

    .line 679
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedBottom()I

    move-result v0

    goto :goto_0
.end method

.method protected getLowestChildBottom()I
    .locals 2

    .prologue
    .line 700
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 701
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getLowestChildBottom()I

    move-result v0

    .line 704
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedBottom()I

    move-result v0

    goto :goto_0
.end method

.method protected getNextChildDownsTop(I)I
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getNextChildDownsTop(I)I

    move-result v0

    .line 641
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHighestPositionedBottom()I

    move-result v0

    goto :goto_0
.end method

.method protected getNextChildUpsBottom(I)I
    .locals 1

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result v0

    .line 669
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedTop()I

    move-result v0

    goto :goto_0
.end method

.method public getRowPaddingBottom()I
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getListPaddingBottom()I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowPaddingLeft()I
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getListPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowPaddingRight()I
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getListPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowPaddingTop()I
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getListPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected hasSpaceUp()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 880
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getRowPaddingTop()I

    move-result v0

    .line 881
    :goto_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getLowestPositionedTop()I

    move-result v2

    if-le v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 880
    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->preLayoutChildren()V

    .line 361
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->layoutChildren()V

    .line 362
    return-void
.end method

.method protected offsetChildrenTopAndBottom(I)V
    .locals 0

    .prologue
    .line 709
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 710
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->offsetAllColumnsTopAndBottom(I)V

    .line 711
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->offsetDistanceToTop(I)V

    .line 712
    return-void
.end method

.method protected offsetChildrenTopAndBottom(II)V
    .locals 4

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildCount()I

    move-result v2

    .line 717
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 718
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 719
    if-eqz v3, :cond_0

    .line 720
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    .line 723
    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->column:I

    if-ne v0, p2, :cond_0

    .line 724
    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 717
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 728
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->offsetColumnTopAndBottom(II)V

    .line 729
    return-void
.end method

.method protected onChildCreated(IZ)V
    .locals 1

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onChildCreated(IZ)V

    .line 338
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildColumn(IZ)I

    move-result v0

    .line 341
    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->setPositionColumn(II)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->setPositionIsHeaderFooter(I)V

    goto :goto_0
.end method

.method protected onChildrenDetached(II)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 833
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onChildrenDetached(II)V

    .line 837
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 839
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    move v1, v2

    .line 841
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 842
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 843
    if-eqz v3, :cond_1

    .line 844
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    .line 845
    iget v4, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_2

    instance-of v4, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    if-eqz v4, :cond_2

    .line 847
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;

    .line 848
    iget v4, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->column:I

    .line 849
    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->position:I

    .line 850
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    .line 851
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v6, v6, v4

    if-ge v5, v6, :cond_0

    .line 852
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildTopMargin(I)I

    move-result v0

    sub-int v0, v5, v0

    aput v0, v6, v4

    .line 854
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 855
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v3, v3, v4

    if-le v0, v3, :cond_1

    .line 856
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildBottomMargin()I

    move-result v5

    add-int/2addr v0, v5

    aput v0, v3, v4

    .line 841
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 861
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 862
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    move v0, v2

    .line 864
    :goto_1
    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-ge v0, v5, :cond_1

    .line 865
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aget v5, v5, v0

    if-ge v4, v5, :cond_3

    .line 866
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    aput v4, v5, v0

    .line 868
    :cond_3
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aget v5, v5, v0

    if-le v3, v5, :cond_4

    .line 869
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    aput v3, v5, v0

    .line 864
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 876
    :cond_5
    return-void
.end method

.method protected onLayoutChild(Landroid/view/View;IZIIII)V
    .locals 6

    .prologue
    .line 390
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-direct/range {p0 .. p7}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->layoutGridHeaderFooter(Landroid/view/View;IZIIII)V

    .line 396
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 394
    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->layoutGridChild(Landroid/view/View;IZII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onMeasure(II)V

    .line 252
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-gtz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    .line 254
    :goto_0
    if-eqz v0, :cond_8

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountLandscape:I

    :goto_1
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->calculateColumnWidth(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnWidth:I

    .line 263
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    array-length v0, v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-eq v0, v1, :cond_2

    .line 264
    :cond_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    .line 265
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->initColumnTops()V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    array-length v0, v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-eq v0, v1, :cond_4

    .line 268
    :cond_3
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    .line 269
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->initColumnBottoms()V

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnLefts:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnLefts:[I

    array-length v0, v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-eq v0, v1, :cond_6

    .line 272
    :cond_5
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnLefts:[I

    .line 273
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->initColumnLefts()V

    .line 275
    :cond_6
    return-void

    .line 253
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_8
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountPortrait:I

    goto :goto_1
.end method

.method protected onMeasureChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, -0x2

    .line 279
    iget v0, p2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->viewType:I

    .line 280
    iget v1, p2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->position:I

    .line 282
    if-eq v0, v3, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 285
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onMeasureChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;)V

    .line 302
    :goto_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildHeight(Landroid/view/View;)I

    move-result v0

    .line 303
    invoke-direct {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->setPositionHeightRatio(II)V

    .line 307
    return-void

    .line 291
    :cond_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnWidth:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 293
    iget v0, p2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->height:I

    if-lez v0, :cond_2

    .line 294
    iget v0, p2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->height:I

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 299
    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 297
    :cond_2
    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1
.end method

.method protected onOffsetChild(Landroid/view/View;IZII)V
    .locals 1

    .prologue
    .line 489
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-direct/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->offsetGridHeaderFooter(Landroid/view/View;IZII)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->offsetGridChild(Landroid/view/View;IZII)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1330
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;

    .line 1331
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->columnCount:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    .line 1332
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->columnTops:[I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    .line 1333
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    .line 1334
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    .line 1335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mNeedSync:Z

    .line 1336
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1337
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1300
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    .line 1301
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1304
    iget-wide v4, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->selectedId:J

    iput-wide v4, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->selectedId:J

    .line 1305
    iget-wide v4, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->firstId:J

    iput-wide v4, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->firstId:J

    .line 1306
    iget v3, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->viewTop:I

    iput v3, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->viewTop:I

    .line 1307
    iget v3, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->position:I

    iput v3, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->position:I

    .line 1308
    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->height:I

    iput v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->height:I

    .line 1312
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1314
    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mFirstPosition:I

    if-lez v0, :cond_1

    .line 1315
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    iput v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->columnCount:I

    .line 1316
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->columnTops:[I

    .line 1317
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    .line 1325
    :goto_1
    return-object v2

    :cond_0
    move v0, v1

    .line 1312
    goto :goto_0

    .line 1320
    :cond_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    :goto_2
    iput v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->columnCount:I

    .line 1321
    iget v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->columnCount:I

    new-array v0, v0, [I

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->columnTops:[I

    .line 1322
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridListSavedState;->positionData:Landroid/util/SparseArray;

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1320
    goto :goto_2
.end method

.method protected onSizeChanged(II)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 896
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onSizeChanged(II)V

    .line 897
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    .line 898
    :goto_0
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountLandscape:I

    .line 899
    :goto_1
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-eq v2, v0, :cond_1

    .line 900
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    .line 902
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->calculateColumnWidth(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnWidth:I

    .line 904
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    .line 905
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    .line 906
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnLefts:[I

    .line 908
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mDistanceToTop:I

    .line 911
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->initColumnTopsAndBottoms()V

    .line 912
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->initColumnLefts()V

    .line 915
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 916
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->onColumnSync()V

    .line 919
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->requestLayout()V

    .line 921
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 897
    goto :goto_0

    .line 898
    :cond_3
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountPortrait:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 890
    invoke-super {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onSizeChanged(IIII)V

    .line 891
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->onSizeChanged(II)V

    .line 892
    return-void
.end method

.method public resetToTop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    if-lez v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    if-nez v0, :cond_0

    .line 317
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnTops:[I

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    if-nez v0, :cond_1

    .line 320
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnBottoms:[I

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->initColumnTopsAndBottoms()V

    .line 324
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mPositionData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 325
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mNeedSync:Z

    .line 326
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mDistanceToTop:I

    .line 327
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->setSelection(I)V

    .line 329
    :cond_2
    return-void
.end method

.method public setColumnCount(I)V
    .locals 2

    .prologue
    .line 237
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountPortrait:I

    .line 238
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountLandscape:I

    .line 240
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->onSizeChanged(II)V

    .line 241
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->requestLayoutChildren()V

    .line 242
    return-void
.end method

.method public setColumnCountLandscape(I)V
    .locals 2

    .prologue
    .line 231
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountLandscape:I

    .line 232
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->onSizeChanged(II)V

    .line 233
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->requestLayoutChildren()V

    .line 234
    return-void
.end method

.method public setColumnCountPortrait(I)V
    .locals 2

    .prologue
    .line 225
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mColumnCountPortrait:I

    .line 226
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->onSizeChanged(II)V

    .line 227
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->requestLayoutChildren()V

    .line 228
    return-void
.end method

.method public setGridPadding(IIII)V
    .locals 0

    .prologue
    .line 218
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingLeft:I

    .line 219
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingTop:I

    .line 220
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingRight:I

    .line 221
    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->mGridPaddingBottom:I

    .line 222
    return-void
.end method
