.class public Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;
.super Landroid/view/View;
.source "BehanceSDKColorWheelPickerLayer.java"


# instance fields
.field private final ANIM_LENGTH:D

.field private final SIXTY_FPS:I

.field private colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;

.field private mDotPaint:Landroid/graphics/Paint;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private radius:I

.field radiusFactor:D

.field private radiusFactorUpdateRunnable:Ljava/lang/Runnable;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const/16 v0, 0x10

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->SIXTY_FPS:I

    .line 20
    iput v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    iput v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    .line 22
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radiusFactor:D

    .line 23
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->ANIM_LENGTH:D

    .line 31
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/16 v0, 0x10

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->SIXTY_FPS:I

    .line 20
    iput v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    iput v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    .line 22
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radiusFactor:D

    .line 23
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->ANIM_LENGTH:D

    .line 36
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/16 v0, 0x10

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->SIXTY_FPS:I

    .line 20
    iput v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    iput v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    .line 22
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radiusFactor:D

    .line 23
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->ANIM_LENGTH:D

    .line 41
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radiusFactorUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radiusFactorUpdateRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;F)F
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;F)F
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    return p1
.end method

.method static synthetic access$302(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;F)F
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    return p1
.end method

.method private constrain()V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 128
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    .line 130
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 135
    :goto_0
    add-int/lit8 v3, v2, -0x2

    int-to-double v4, v3

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    .line 136
    iget v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    int-to-float v6, v2

    sub-float/2addr v3, v6

    int-to-float v6, v1

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    int-to-float v8, v2

    sub-float/2addr v3, v8

    int-to-float v8, v0

    sub-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v8, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    cmpl-double v3, v6, v4

    if-lez v3, :cond_0

    .line 137
    iget v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v3, v6

    float-to-double v6, v3

    iget v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v3, v8

    float-to-double v8, v3

    .line 138
    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    .line 139
    const-wide/16 v10, 0x0

    cmpg-double v3, v8, v10

    if-gtz v3, :cond_2

    .line 140
    int-to-float v1, v1

    int-to-double v8, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    double-to-float v3, v8

    add-float/2addr v1, v3

    iput v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    .line 141
    int-to-float v0, v0

    int-to-double v2, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    .line 147
    :cond_0
    :goto_1
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    move v12, v1

    move v1, v0

    move v0, v12

    goto/16 :goto_0

    .line 143
    :cond_2
    int-to-float v1, v1

    int-to-double v8, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    double-to-float v3, v8

    add-float/2addr v1, v3

    iput v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    .line 144
    int-to-float v0, v0

    int-to-double v2, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    goto :goto_1

    :cond_3
    move v1, v0

    goto/16 :goto_0
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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_color_picker_default_wheel_indicator_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radius:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->mDotPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->mDotPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->mDotPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    new-instance v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer$1;-><init>(Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;)V

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->constrain()V

    .line 121
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->mDotPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;->getColorAt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radius:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radiusFactor:D

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 124
    iget v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    iget v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    iget v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radius:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radiusFactor:D

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    return-void
.end method

.method public setColor(DD)V
    .locals 9

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 163
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, p3

    div-double/2addr v2, v6

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->x:F

    .line 164
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, p3

    div-double/2addr v2, v6

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->y:F

    .line 165
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->constrain()V

    .line 166
    return-void
.end method

.method public setColorCallback(Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;

    .line 151
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->radius:I

    .line 170
    return-void
.end method
