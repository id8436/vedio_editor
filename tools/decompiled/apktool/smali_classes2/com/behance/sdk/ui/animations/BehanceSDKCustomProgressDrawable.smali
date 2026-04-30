.class public Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BehanceSDKCustomProgressDrawable.java"


# instance fields
.field private backgroundColor:I

.field private color:I

.field private level:I

.field private final loaderRadius:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 15
    const v0, 0x500080ff

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->backgroundColor:I

    .line 16
    const v0, -0xff7f01

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->color:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->level:I

    .line 18
    const/16 v0, 0x28

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->loaderRadius:I

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 8

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    add-int/lit8 v2, v2, -0x28

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    add-int/lit8 v3, v3, -0x28

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 54
    const/4 v2, 0x0

    const-wide v4, 0x4076800000000000L    # 360.0

    int-to-double v6, p2

    mul-double/2addr v4, v6

    const-wide v6, 0x40c3880000000000L    # 10000.0

    div-double/2addr v4, v6

    double-to-int v0, v4

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 55
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 44
    const/16 v0, 0x2710

    iget v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->backgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    .line 45
    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->level:I

    iget v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->color:I

    invoke-direct {p0, p1, v0, v1}, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    .line 46
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/drawee/e/f;->a(I)I

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 22
    iput p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->level:I

    .line 23
    invoke-virtual {p0}, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->invalidateSelf()V

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 30
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 35
    return-void
.end method
