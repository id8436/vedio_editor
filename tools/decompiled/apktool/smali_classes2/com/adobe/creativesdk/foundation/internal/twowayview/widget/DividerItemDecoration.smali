.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# instance fields
.field private final mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private final mItemSpacing:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

.field private final mVerticalDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 32
    sget-object v0, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_DividerItemDecoration:[I

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_DividerItemDecoration_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 43
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->createSpacing(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mItemSpacing:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    .line 46
    return-void

    .line 39
    :cond_0
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_DividerItemDecoration_adobe_csdk_twowayview_verticalDivider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 40
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_DividerItemDecoration_adobe_csdk_twowayview_horizontalDivider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->createSpacing(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mItemSpacing:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    .line 56
    return-void
.end method

.method private static createSpacing(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 68
    :goto_0
    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 74
    :cond_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    invoke-direct {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;-><init>(II)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->setAddSpacingAtEnd(Z)V

    .line 77
    return-object v2

    :cond_1
    move v1, v0

    .line 64
    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mItemSpacing:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V

    .line 125
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 15

    .prologue
    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int v4, v2, v3

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int v5, v2, v3

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    .line 88
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_2

    .line 89
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 91
    invoke-virtual {v1, v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v8

    .line 92
    invoke-virtual {v1, v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v9

    .line 93
    invoke-virtual {v1, v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v10

    .line 94
    invoke-virtual {v1, v7}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v11

    .line 96
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    sub-int v12, v11, v12

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    .line 99
    if-lez v12, :cond_0

    if-ge v11, v5, :cond_0

    .line 101
    sub-int v12, v11, v12

    .line 103
    iget-object v13, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v13, v12

    .line 105
    iget-object v14, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v8, v12, v10, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 109
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v10, v7

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v2, v7, v2

    .line 110
    if-lez v2, :cond_1

    if-ge v10, v4, :cond_1

    .line 111
    sub-int v2, v10, v2

    .line 113
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v2

    .line 116
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v2, v9, v7, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/DividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 120
    :cond_2
    return-void
.end method
