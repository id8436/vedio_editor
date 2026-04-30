.class public Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;
.super Landroid/widget/FrameLayout;
.source "BehanceSDKColorPickerSquare.java"

# interfaces
.implements Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;


# instance fields
.field private bsdkColorPickerColorSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

.field private bsdkColorPickerContainer:Landroid/widget/RelativeLayout;

.field private bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

.field private bsdkColorPickerSquare:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;

.field private colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

.field private evaluator:Landroid/animation/ArgbEvaluator;

.field private lastColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->init()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerColorSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerSquare:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    return-object v0
.end method

.method private getColor(I)I
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->evaluator:Landroid/animation/ArgbEvaluator;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->lastColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_view_color_picker_square:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->initView(Landroid/view/View;)V

    .line 51
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->evaluator:Landroid/animation/ArgbEvaluator;

    .line 52
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->addView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerColorSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 60
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerColorSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare$2;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setSeekListener(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;)V

    .line 67
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->setColorCallback(Lcom/behance/sdk/listeners/IBehanceSDKGetColorCallback;)V

    .line 69
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_color_picker_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerSquare:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->setPadding(I)V

    .line 71
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->setPadding(I)V

    .line 72
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerContainer:Landroid/widget/RelativeLayout;

    .line 76
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_square:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerSquare:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;

    .line 77
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_picker:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    .line 78
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_color_seek:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerColorSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    .line 79
    return-void
.end method


# virtual methods
.method public getColorAt(II)I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerSquare:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;

    invoke-virtual {v0, p1, p2}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->getColorAtPixel(II)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->lastColor:I

    .line 85
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

    iget v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->lastColor:I

    invoke-interface {v0, v1}, Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;->onColorSelected(I)V

    .line 87
    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->lastColor:I

    .line 89
    :goto_0
    return v0

    :cond_1
    const v0, 0xffffff

    goto :goto_0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->getLastDrawnColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->getColor(I)I

    move-result v0

    return v0
.end method

.method public setColorCallback(Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->colorCallback:Lcom/behance/sdk/listeners/IBehanceSDKColorCallback;

    .line 116
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 103
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 105
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerColorSeek:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    aget v2, v0, v4

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setProgress(J)V

    .line 106
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerPicker:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquarePickerLayer;->setColor(FF)V

    .line 107
    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->bsdkColorPickerSquare:Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;

    aget v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKColorSquareLayer;->setHue(F)V

    .line 108
    return-void
.end method
