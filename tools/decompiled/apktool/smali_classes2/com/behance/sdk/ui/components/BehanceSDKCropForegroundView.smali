.class public Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;
.super Landroid/view/View;
.source "BehanceSDKCropForegroundView.java"


# instance fields
.field private aspectRatio:F

.field private padHeight:I

.field private padWidth:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->aspectRatio:F

    .line 22
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->aspectRatio:F

    .line 27
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->aspectRatio:F

    .line 32
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->paint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x27000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getPadHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->padHeight:I

    return v0
.end method

.method public getPadWidth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->padWidth:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->aspectRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->aspectRatio:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->padWidth:I

    .line 48
    iput v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->padHeight:I

    .line 49
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->padWidth:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->padWidth:I

    sub-int/2addr v0, v2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->aspectRatio:F

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->padHeight:I

    .line 54
    iput v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->padWidth:I

    .line 55
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->padHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->padHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setAspectRatio(F)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCropForegroundView;->aspectRatio:F

    .line 62
    return-void
.end method
