.class public Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;
.super Landroid/view/View;
.source "BehanceSDKGradientSeekBar.java"


# instance fields
.field private evaluator:Landroid/animation/ArgbEvaluator;

.field private gradientColors:[I

.field private indicatorFillPaint:Landroid/graphics/Paint;

.field private indicatorStrokePaint:Landroid/graphics/Paint;

.field private indicatorThickness:I

.field private max:I

.field private orientationHorizontal:Z

.field private padding:I

.field private path:Landroid/graphics/Path;

.field private pos:F

.field private progress:I

.field private rectF:Landroid/graphics/RectF;

.field private seekBackground:Landroid/graphics/drawable/ShapeDrawable;

.field private seekListener:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;

.field private selectionType:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    return v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;F)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->constrainAndSetPosX(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;F)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->constrainAndSetPosY(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setProgressForPos()V

    return-void
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->seekListener:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setIndicatorFillPaintColor()V

    return-void
.end method

.method private constrainAndSetPosX(F)V
    .locals 3

    .prologue
    .line 246
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    .line 247
    return-void
.end method

.method private constrainAndSetPosY(F)V
    .locals 3

    .prologue
    .line 250
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    .line 251
    return-void
.end method

.method private constrainColorPos(D)I
    .locals 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->gradientColors:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getProgressPercent()F
    .locals 3

    .prologue
    .line 280
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getWidth()I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getSelectedColor()I
    .locals 8

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgressPercent()F

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->gradientColors:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 147
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->evaluator:Landroid/animation/ArgbEvaluator;

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v1

    div-float/2addr v3, v4

    rem-float v3, v0, v3

    int-to-float v4, v1

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->gradientColors:[I

    int-to-float v5, v1

    mul-float/2addr v5, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->constrainColorPos(D)I

    move-result v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->gradientColors:[I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->constrainColorPos(D)I

    move-result v0

    aget v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    if-eqz p2, :cond_0

    .line 60
    sget-object v0, Lcom/behance/sdk/R$styleable;->BehanceSDKGradientSeekBar:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKGradientSeekBar_orientation_horizontal:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    .line 62
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKGradientSeekBar_indicator_type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 63
    packed-switch v1, :pswitch_data_0

    .line 76
    :goto_0
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKGradientSeekBar_gradient_padding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_gradient_seek_bar_default_padding_horizontal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    :goto_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->rectF:Landroid/graphics/RectF;

    .line 88
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0, v5}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->constrainAndSetPosX(F)V

    .line 93
    :goto_2
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->evaluator:Landroid/animation/ArgbEvaluator;

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorStrokePaint:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorFillPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    sget-object v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$2;->$SwitchMap$com$behance$sdk$ui$components$BehanceSDKGradientSeekBar$SeekSelectionType:[I

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->selectionType:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 112
    :goto_3
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(I)V

    .line 114
    new-instance v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;)V

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    return-void

    .line 65
    :pswitch_0
    sget-object v1, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->arrows:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->selectionType:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$integer;->bsdk_gradient_seek_bar_default_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->max:I

    goto :goto_0

    .line 71
    :pswitch_1
    sget-object v1, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->box:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->selectionType:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    .line 72
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKGradientSeekBar_indicatorBoxThickness:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_gradient_seek_bar_default_padding_horizontal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$integer;->bsdk_gradient_seek_bar_default_max:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->max:I

    goto/16 :goto_0

    .line 79
    :cond_0
    sget-object v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->box:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->selectionType:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_gradient_seek_bar_default_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->sdk_gradient_seek_bar_default_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$integer;->bsdk_gradient_seek_bar_default_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->max:I

    goto/16 :goto_1

    .line 91
    :cond_1
    invoke-direct {p0, v5}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->constrainAndSetPosY(F)V

    goto/16 :goto_2

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 102
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setIndicatorFillPaintColor()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->selectionType:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    sget-object v1, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->box:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorFillPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    :cond_0
    return-void
.end method

.method private setProgressForPos()V
    .locals 3

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->max:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgressPercent()F

    move-result v1

    mul-float/2addr v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->progress:I

    .line 274
    return-void

    .line 273
    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->max:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgressPercent()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getSelectedColor()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->progress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->seekBackground:Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    .line 189
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->seekBackground:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 191
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->seekBackground:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 192
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$2;->$SwitchMap$com$behance$sdk$ui$components$BehanceSDKGradientSeekBar$SeekSelectionType:[I

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->selectionType:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 196
    int-to-double v2, v0

    div-double/2addr v2, v10

    double-to-int v1, v2

    .line 197
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 198
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v4, v1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 199
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 200
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 201
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 202
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 203
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 204
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 205
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 206
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 208
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 209
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v4, v1

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v6, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    add-int/2addr v6, v1

    add-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 210
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->rectF:Landroid/graphics/RectF;

    int-to-float v2, v1

    div-float/2addr v2, v8

    int-to-float v1, v1

    div-float/2addr v1, v8

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 213
    :pswitch_1
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 214
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 218
    :cond_1
    sget-object v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$2;->$SwitchMap$com$behance$sdk$ui$components$BehanceSDKGradientSeekBar$SeekSelectionType:[I

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->selectionType:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekSelectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 220
    :pswitch_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 221
    int-to-double v2, v0

    div-double/2addr v2, v10

    double-to-int v1, v2

    .line 222
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 223
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v4, v1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 224
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 227
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 228
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 229
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 230
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 233
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 234
    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v4, v1

    mul-float/2addr v4, v7

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    int-to-float v6, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    add-int/2addr v6, v1

    add-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 235
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->rectF:Landroid/graphics/RectF;

    int-to-float v2, v1

    div-float/2addr v2, v8

    int-to-float v1, v1

    div-float/2addr v1, v8

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 238
    :pswitch_3
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v3, v0, v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorFillPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v3, v0, v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->pos:F

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 218
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setGradient(I)V
    .locals 1

    .prologue
    .line 155
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 156
    return-void
.end method

.method public setGradient(II)V
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient([I)V

    .line 160
    return-void
.end method

.method public setGradient([I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 164
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    if-eqz v0, :cond_0

    .line 165
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->gradientColors:[I

    .line 166
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 178
    :goto_0
    const/high16 v1, 0x40a00000    # 5.0f

    .line 179
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput v1, v4, v8

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v5, 0x2

    aput v1, v4, v5

    const/4 v5, 0x3

    aput v1, v4, v5

    const/4 v5, 0x4

    aput v1, v4, v5

    const/4 v5, 0x5

    aput v1, v4, v5

    const/4 v5, 0x6

    aput v1, v4, v5

    const/4 v5, 0x7

    aput v1, v4, v5

    invoke-direct {v3, v4, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->seekBackground:Landroid/graphics/drawable/ShapeDrawable;

    .line 180
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->seekBackground:Landroid/graphics/drawable/ShapeDrawable;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 181
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->seekBackground:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 182
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setIndicatorFillPaintColor()V

    .line 183
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->invalidate()V

    .line 184
    return-void

    :cond_0
    move v0, v8

    .line 170
    :goto_1
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    .line 171
    aget v2, p1, v0

    .line 172
    array-length v3, p1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v4, p1, v0

    aput v4, p1, v3

    .line 173
    aput v2, p1, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_1
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->gradientColors:[I

    .line 176
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0
.end method

.method public setIndicatorThickness(I)V
    .locals 0

    .prologue
    .line 292
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->indicatorThickness:I

    .line 293
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 284
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->max:I

    .line 285
    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .prologue
    .line 296
    iput p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->padding:I

    .line 297
    return-void
.end method

.method public setProgress(J)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 257
    long-to-int v0, p1

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->progress:I

    .line 258
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->orientationHorizontal:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    long-to-float v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->max:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->constrainAndSetPosX(F)V

    .line 262
    :goto_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->invalidate()V

    .line 263
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    long-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->max:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->constrainAndSetPosY(F)V

    goto :goto_0
.end method

.method public setSeekListener(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->seekListener:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;

    .line 289
    return-void
.end method
