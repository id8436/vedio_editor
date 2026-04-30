.class public Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;
.super Landroid/widget/ImageView;
.source "BehanceSDKTopCropImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->setScale()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->setScale()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->setScale()V

    .line 27
    return-void
.end method

.method private computeImageMatrix()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 45
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->getPaddingBottom()I

    move-result v3

    sub-int v3, v0, v3

    .line 46
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 47
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 49
    mul-int v0, v4, v3

    mul-int v6, v5, v2

    if-le v0, v6, :cond_1

    .line 50
    int-to-float v0, v3

    int-to-float v6, v5

    div-float/2addr v0, v6

    .line 55
    :goto_0
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v3

    div-float v0, v8, v0

    sub-float v0, v7, v0

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-direct {v6, v9, v0, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v0, v9, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 57
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v6, v0, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 59
    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 61
    :cond_0
    return-void

    .line 52
    :cond_1
    int-to-float v0, v2

    int-to-float v6, v4

    div-float/2addr v0, v6

    goto :goto_0
.end method

.method private setScale()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 66
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->computeVerticalScrollOffset()I

    .line 67
    return-void
.end method

.method public setFrame(IIII)Z
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKTopCropImageView;->computeImageMatrix()V

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method
