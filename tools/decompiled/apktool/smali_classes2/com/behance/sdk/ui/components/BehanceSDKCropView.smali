.class public Lcom/behance/sdk/ui/components/BehanceSDKCropView;
.super Landroid/widget/RelativeLayout;
.source "BehanceSDKCropView.java"


# static fields
.field private static final DEFAULT_ASPECT_RATIO:F = 1.278481f


# instance fields
.field private aspectRatio:F

.field private bitmap:Landroid/graphics/Bitmap;

.field private cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

.field private photoView:Lcom/github/chrisbanes/photoview/PhotoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const v0, 0x3fa3a544

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    .line 34
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const v0, 0x3fa3a544

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    .line 39
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const v0, 0x3fa3a544

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    .line 44
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)Lcom/github/chrisbanes/photoview/PhotoView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setScales()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 48
    invoke-virtual {p0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setBackgroundColor(I)V

    .line 49
    new-instance v0, Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 50
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->setAspectRatio(F)V

    .line 54
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->addView(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->addView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKCropView$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 63
    return-void
.end method

.method private setScales()V
    .locals 4

    .prologue
    const v2, 0x3f8020c5    # 1.001f

    .line 69
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 73
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getPadWidth()I

    move-result v1

    if-nez v1, :cond_3

    .line 74
    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 76
    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    div-float v0, v1, v0

    .line 90
    :goto_1
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v0

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->a(FFF)V

    .line 91
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setScale(F)V

    goto :goto_0

    .line 79
    :cond_2
    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_1

    .line 82
    :cond_3
    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 84
    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    div-float v0, v1, v0

    mul-float/2addr v0, v2

    goto :goto_1

    .line 87
    :cond_4
    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    div-float/2addr v0, v1

    goto :goto_1
.end method


# virtual methods
.method public crop()Landroid/graphics/Bitmap;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 100
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 106
    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 107
    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v5}, Lcom/github/chrisbanes/photoview/PhotoView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    invoke-virtual {v5}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getPadWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v1, v4

    sub-float v1, v3, v1

    int-to-float v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 109
    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    .line 110
    iget v4, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 111
    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v6}, Lcom/github/chrisbanes/photoview/PhotoView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v0, v6

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    invoke-virtual {v6}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getPadHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v0, v6

    mul-float/2addr v0, v3

    sub-float v0, v5, v0

    int-to-float v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 113
    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v2, v4, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public setAspectRatio(F)V
    .locals 1

    .prologue
    .line 142
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->aspectRatio:F

    .line 143
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->cropForegroundView:Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->setAspectRatio(F)V

    .line 144
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/PhotoView;->setZoomable(Z)V

    .line 148
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    .line 137
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setScales()V

    .line 139
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/l;->a(Landroid/net/Uri;)Lcom/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/d;->h()Lcom/b/a/b;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKCropView$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView$2;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKCropView;)V

    invoke-virtual {v0, v1}, Lcom/b/a/b;->a(Lcom/b/a/h/b/k;)Lcom/b/a/h/b/k;

    .line 123
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;)V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/l;->a(Landroid/net/Uri;)Lcom/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/d;->h()Lcom/b/a/b;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKCropView$3;

    invoke-direct {v1, p0, p2}, Lcom/behance/sdk/ui/components/BehanceSDKCropView$3;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKCropView;Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;)V

    invoke-virtual {v0, v1}, Lcom/b/a/b;->a(Lcom/b/a/h/b/k;)Lcom/b/a/h/b/k;

    .line 133
    return-void
.end method
