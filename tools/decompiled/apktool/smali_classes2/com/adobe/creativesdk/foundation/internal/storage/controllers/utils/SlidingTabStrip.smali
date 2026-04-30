.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SlidingTabStrip.java"


# static fields
.field private static final DEFAULT_BOTTOM_BORDER_COLOR_ALPHA:B = 0x26t

.field private static final DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS:I = 0x0

.field private static final DEFAULT_SELECTED_INDICATOR_COLOR:I = -0xcc4a1b

.field private static final SELECTED_INDICATOR_THICKNESS_DIPS:I = 0x3


# instance fields
.field private final mBottomBorderPaint:Landroid/graphics/Paint;

.field private final mBottomBorderThickness:I

.field private mCustomTabColorizer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;

.field private final mDefaultBottomBorderColor:I

.field private final mDefaultTabColorizer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private final mSelectedIndicatorThickness:I

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field private mTextViewId:I

.field private mViewId:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->setWillNotDraw(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 48
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010030

    invoke-virtual {v2, v3, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 50
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 52
    const/16 v2, 0x26

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->setColorAlpha(IB)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mDefaultBottomBorderColor:I

    .line 55
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$1;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mDefaultTabColorizer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;

    .line 56
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mDefaultTabColorizer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;

    new-array v2, v5, [I

    const v3, -0xcc4a1b

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 58
    const/4 v1, 0x0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mBottomBorderThickness:I

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mDefaultBottomBorderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedIndicatorThickness:I

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 64
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 5

    .prologue
    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 157
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 158
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 159
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    .line 160
    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private static setColorAlpha(IB)I
    .locals 3

    .prologue
    .line 146
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getHeight()I

    move-result v6

    .line 106
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mCustomTabColorizer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mCustomTabColorizer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;

    move-object v3, v0

    .line 112
    :goto_0
    if-lez v1, :cond_1

    .line 113
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 116
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedPosition:I

    invoke-interface {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v0

    .line 118
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectionOffset:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_3

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    .line 119
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v3

    .line 120
    if-eq v0, v3, :cond_0

    .line 121
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectionOffset:F

    invoke-static {v3, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->blendColors(IIF)I

    move-result v0

    .line 125
    :cond_0
    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 126
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectionOffset:F

    sub-float v5, v8, v5

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 128
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectionOffset:F

    sub-float v4, v8, v4

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    move v3, v1

    move v1, v2

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    int-to-float v1, v1

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedIndicatorThickness:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    int-to-float v3, v3

    int-to-float v4, v6

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 139
    :cond_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mBottomBorderThickness:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 140
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mDefaultTabColorizer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;

    move-object v3, v0

    goto/16 :goto_0

    :cond_3
    move v3, v1

    move v1, v2

    goto :goto_1
.end method

.method onViewPagerPageChanged(IF)V
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedPosition:I

    if-eq v0, p1, :cond_0

    .line 88
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 89
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mTextViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    const-string/jumbo v1, "#a3aeb7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 94
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mTextViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    const-string/jumbo v1, "#2098f5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_0
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectedPosition:I

    .line 99
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mSelectionOffset:F

    .line 100
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->invalidate()V

    .line 101
    return-void
.end method

.method setCustomLayoutIds(II)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mViewId:I

    .line 74
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mTextViewId:I

    .line 75
    return-void
.end method

.method setCustomTabColorizer(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mCustomTabColorizer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;

    .line 68
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->invalidate()V

    .line 69
    return-void
.end method

.method varargs setSelectedIndicatorColors([I)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mCustomTabColorizer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;

    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->mDefaultTabColorizer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 81
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->invalidate()V

    .line 82
    return-void
.end method
