.class public Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "BehanceSDKBoundedLinearLayout.java"


# instance fields
.field private final mBoundedHeight:I

.field private final mBoundedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;->mBoundedWidth:I

    .line 19
    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;->mBoundedHeight:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object v0, Lcom/behance/sdk/R$styleable;->BehanceSDKBoundedView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKBoundedView_bsdk_bounded_width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;->mBoundedWidth:I

    .line 26
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKBoundedView_bsdk_bounded_height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;->mBoundedHeight:I

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 34
    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;->mBoundedWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;->mBoundedWidth:I

    if-ge v1, v0, :cond_0

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 36
    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;->mBoundedWidth:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 39
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 40
    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;->mBoundedHeight:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;->mBoundedHeight:I

    if-ge v1, v0, :cond_1

    .line 41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 42
    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKBoundedLinearLayout;->mBoundedHeight:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 44
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 45
    return-void
.end method
