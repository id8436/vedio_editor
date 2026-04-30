.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# static fields
.field private static final TAB_VIEW_PADDING_DIPS:I = 0x10

.field private static final TAB_VIEW_TEXT_SIZE_SP:I = 0xc

.field private static final TITLE_OFFSET_DIPS:I = 0x18


# instance fields
.field private mContentDescriptions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDistributeEvenly:Z

.field private final mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private mTitleOffset:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->setFillViewport(Z)V

    .line 85
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTitleOffset:I

    .line 87
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    invoke-direct {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->addView(Landroid/view/View;II)V

    .line 89
    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;II)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->scrollToTab(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private populateTabStrip()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v6

    .line 177
    new-instance v7, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabClickListener;

    invoke-direct {v7, p0, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$1;)V

    move v0, v2

    move v1, v2

    .line 181
    :goto_0
    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 182
    invoke-virtual {v6, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    div-int v8, v1, v0

    move v3, v2

    .line 187
    :goto_1
    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 191
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabViewLayoutId:I

    if-eqz v0, :cond_8

    .line 193
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabViewLayoutId:I

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 195
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabViewTextViewId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    :goto_2
    if-nez v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    .line 202
    :cond_1
    if-nez v0, :cond_7

    const-class v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v0, v1

    .line 203
    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .line 206
    :goto_3
    if-eqz v4, :cond_3

    .line 208
    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const-string/jumbo v0, "#a3aeb7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 218
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    iget-boolean v9, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mDistributeEvenly:Z

    if-eqz v9, :cond_4

    .line 220
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 221
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 236
    :goto_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->addView(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v3, v0, :cond_3

    .line 238
    const-string/jumbo v0, "#2098f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 187
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 225
    :cond_4
    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 226
    if-ge v9, v8, :cond_5

    .line 228
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 229
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_4

    .line 231
    :cond_5
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 232
    const/high16 v9, 0x40000000    # 2.0f

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_4

    .line 243
    :cond_6
    return-void

    :cond_7
    move-object v4, v0

    goto :goto_3

    :cond_8
    move-object v0, v5

    move-object v1, v5

    goto/16 :goto_2
.end method

.method private scrollToTab(II)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildCount()I

    move-result v0

    .line 309
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 317
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 319
    :cond_2
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTitleOffset:I

    sub-int/2addr v0, v1

    .line 322
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->scrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 156
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 157
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    const/4 v1, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 164
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 166
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 167
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 169
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 170
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 172
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 302
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->scrollToTab(II)V

    .line 305
    :cond_0
    return-void
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    return-void
.end method

.method public setCustomTabColorizer(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->setCustomTabColorizer(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabColorizer;)V

    .line 100
    return-void
.end method

.method public setCustomTabView(II)V
    .locals 1

    .prologue
    .line 132
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabViewLayoutId:I

    .line 133
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabViewTextViewId:I

    .line 134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->setCustomLayoutIds(II)V

    .line 135
    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mDistributeEvenly:Z

    .line 104
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 123
    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->setSelectedIndicatorColors([I)V

    .line 112
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mTabStrip:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->removeAllViews()V

    .line 144
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 145
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 147
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->populateTabStrip()V

    .line 149
    :cond_0
    return-void
.end method
