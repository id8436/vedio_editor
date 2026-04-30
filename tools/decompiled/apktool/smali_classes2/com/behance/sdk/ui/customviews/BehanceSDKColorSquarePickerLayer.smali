.class public Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;
.super Landroid/view/View;
.source "BehanceSDKColorSquarePickerLayer.java"


# instance fields
.field private final ANIM_LENGTH:D

.field private colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;

.field private mDotPaint:Landroid/graphics/Paint;

.field private mInnerStrokePaint:Landroid/graphics/Paint;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private padding:I

.field private radius:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    .line 23
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->ANIM_LENGTH:D

    .line 32
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    .line 23
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->ANIM_LENGTH:D

    .line 37
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    .line 23
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->ANIM_LENGTH:D

    .line 42
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;F)F
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    return p1
.end method

.method static synthetic access$102(Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;F)F
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    return p1
.end method

.method private constrain()V
    .locals 3

    .prologue
    .line 139
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 140
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    .line 143
    :cond_0
    :goto_0
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 144
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    .line 147
    :cond_1
    :goto_1
    return-void

    .line 141
    :cond_2
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    goto :goto_0

    .line 145
    :cond_3
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    goto :goto_1
.end method

.method private getInterpolation(F)F
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 154
    sub-float v0, p1, v3

    .line 155
    mul-float v1, v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_color_picker_default_wheel_indicator_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->radius:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mDotPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mDotPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->radius:I

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mInnerStrokePaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mInnerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mInnerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mInnerStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mInnerStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    new-instance v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer$1;-><init>(Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;)V

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    return-void
.end method


# virtual methods
.method public getLastDrawnColor()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->constrain()V

    .line 131
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mDotPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;->getColorAt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 135
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mInnerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->mInnerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method public onGradientChange()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->invalidate()V

    .line 178
    return-void
.end method

.method public setColor(FF)V
    .locals 3

    .prologue
    .line 159
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->x:F

    .line 160
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->y:F

    .line 161
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->invalidate()V

    .line 162
    return-void
.end method

.method public setColorCallback(Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;

    .line 151
    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->padding:I

    .line 174
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->radius:I

    .line 166
    return-void
.end method
