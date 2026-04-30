.class public Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;
.super Landroid/view/View;
.source "BehanceSDKColorWheelLayer.java"


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mWhitePaint:Landroid/graphics/Paint;

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 43
    new-instance v1, Landroid/graphics/SweepGradient;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->mPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 47
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    return-void

    .line 40
    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method


# virtual methods
.method public getColorAtPixel(II)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 74
    :cond_0
    const/4 v0, -0x1

    .line 79
    :goto_0
    return v0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->bitmap:Landroid/graphics/Bitmap;

    .line 76
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->draw(Landroid/graphics/Canvas;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 52
    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    .line 54
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->rectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    neg-float v2, v3

    neg-float v4, v3

    invoke-direct {v0, v2, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->rectF:Landroid/graphics/RectF;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 61
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->mWhitePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v4, -0x1

    const v5, 0xffffff

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->mWhitePaint:Landroid/graphics/Paint;

    .line 64
    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 65
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->mWhitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 69
    return-void
.end method
