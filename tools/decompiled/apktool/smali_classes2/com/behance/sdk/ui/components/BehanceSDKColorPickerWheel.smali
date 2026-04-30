.class public Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;
.super Landroid/widget/FrameLayout;
.source "BehanceSDKColorPickerWheel.java"

# interfaces
.implements Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;


# instance fields
.field private bsdkColorPickerGradientSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

.field private bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

.field private bsdkColorPickerPreview:Landroid/view/View;

.field private bsdkColorPickerWheel:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;

.field private evaluator:Landroid/animation/ArgbEvaluator;

.field private lastWheelColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;I)I
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->getColor(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerPreview:Landroid/view/View;

    return-object v0
.end method

.method private getColor(I)I
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->evaluator:Landroid/animation/ArgbEvaluator;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->lastWheelColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_view_color_picker_wheel:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->initView(Landroid/view/View;)V

    .line 49
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->evaluator:Landroid/animation/ArgbEvaluator;

    .line 50
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerGradientSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setSeekListener(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;)V

    .line 57
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->setColorCallback(Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;)V

    .line 59
    if-eqz p2, :cond_3

    .line 60
    sget-object v0, Lcom/behance/sdk/R$styleable;->BehanceSDKColorWheel:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKColorWheel_wheel_indicator_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    sget v2, Lcom/behance/sdk/R$styleable;->BehanceSDKColorWheel_wheel_indicator_radius:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->setRadius(I)V

    .line 63
    :cond_0
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKColorWheel_seekbar_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerGradientSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    sget v2, Lcom/behance/sdk/R$styleable;->BehanceSDKColorWheel_seekbar_indicator_width:I

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setIndicatorThickness(I)V

    .line 65
    :cond_1
    sget v1, Lcom/behance/sdk/R$styleable;->BehanceSDKColorWheel_seekbar_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerGradientSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    sget v2, Lcom/behance/sdk/R$styleable;->BehanceSDKColorWheel_seekbar_padding_horizontal:I

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setPadding(I)V

    .line 67
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    :cond_3
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_gradient_seek:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerGradientSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    .line 73
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_wheel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerWheel:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;

    .line 74
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_picker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    .line 75
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerPreview:Landroid/view/View;

    .line 76
    return-void
.end method


# virtual methods
.method public getColorAt(II)I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerWheel:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerWheel:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;

    invoke-virtual {v0, p1, p2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelLayer;->getColorAtPixel(II)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->lastWheelColor:I

    .line 82
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerPreview:Landroid/view/View;

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerGradientSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerGradientSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->lastWheelColor:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(I)V

    .line 84
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->lastWheelColor:I

    .line 86
    :goto_0
    return v0

    :cond_0
    const v0, 0xffffff

    goto :goto_0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerGradientSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->getColor(I)I

    move-result v0

    return v0
.end method

.method public setSelectedColor(I)V
    .locals 20

    .prologue
    .line 99
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-double v8, v2

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v10, v2

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-double v12, v2

    .line 101
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 103
    cmpl-double v2, v4, v6

    if-nez v2, :cond_0

    .line 104
    const-wide/16 v6, 0x0

    .line 105
    const-wide/16 v2, 0x0

    move-wide/from16 v18, v4

    move-wide v4, v2

    move-wide/from16 v2, v18

    .line 113
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerGradientSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setProgress(J)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerWheel;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v10, 0x4076800000000000L    # 360.0

    div-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v10

    sub-double v6, v8, v6

    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorWheelPickerLayer;->setColor(DD)V

    .line 115
    return-void

    .line 108
    :cond_0
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    cmpl-double v2, v8, v4

    if-nez v2, :cond_1

    const/4 v2, 0x3

    :goto_1
    int-to-double v0, v2

    move-wide/from16 v16, v0

    cmpl-double v2, v8, v4

    if-nez v2, :cond_3

    sub-double v2, v10, v12

    :goto_2
    sub-double v8, v6, v4

    div-double/2addr v2, v8

    sub-double v2, v16, v2

    mul-double v8, v14, v2

    .line 109
    sub-double v2, v6, v4

    div-double/2addr v2, v6

    move-wide v4, v2

    move-wide v2, v6

    move-wide v6, v8

    .line 110
    goto :goto_0

    .line 108
    :cond_1
    cmpl-double v2, v12, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    goto :goto_1

    :cond_3
    cmpl-double v2, v12, v4

    if-nez v2, :cond_4

    sub-double v2, v8, v10

    goto :goto_2

    :cond_4
    sub-double v2, v12, v8

    goto :goto_2
.end method
