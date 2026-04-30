.class public Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;
.super Landroid/view/View;
.source "BehanceSDKColorSquareLayer.java"


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private color:I

.field private gradient:Landroid/graphics/drawable/Drawable;

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 41
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->color:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    .line 43
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_saturation_value_gradient:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->gradient:Landroid/graphics/drawable/Drawable;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->bgPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->bgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    return-void
.end method

.method private setColor([F)V
    .locals 2

    .prologue
    .line 72
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->color:I

    .line 73
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->bgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->invalidate()V

    .line 75
    return-void
.end method


# virtual methods
.method public getColorAtPixel(II)I
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 79
    :cond_0
    const/4 v0, -0x1

    .line 84
    :goto_0
    return v0

    .line 80
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 81
    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->color:I

    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 82
    const/4 v1, 0x1

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 83
    const/4 v1, 0x2

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v5, v2

    aput v2, v0, v1

    .line 84
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 50
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    int-to-float v1, v0

    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->gradient:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->gradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 53
    return-void
.end method

.method public setColor(I)V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 65
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 66
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 67
    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    .line 68
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->setColor([F)V

    .line 69
    return-void
.end method

.method public setHue(F)V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 57
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 58
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 59
    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    .line 60
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->setColor([F)V

    .line 61
    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->padding:I

    .line 90
    return-void
.end method
