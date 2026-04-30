.class public Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;
.super Landroid/widget/FrameLayout;
.source "BehanceSDKColorPickerCMYK.java"

# interfaces
.implements Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;


# instance fields
.field private bsdkColorPickerCmykPreview:Landroid/view/View;

.field private bsdkColorPickerCmykSeekC:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

.field private bsdkColorPickerCmykSeekK:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

.field private bsdkColorPickerCmykSeekM:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

.field private bsdkColorPickerCmykSeekY:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekC:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekM:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekY:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekK:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    return-object v0
.end method

.method private getColor(DDDD)I
    .locals 9

    .prologue
    .line 116
    const/16 v0, 0xff

    const-wide v2, 0x406fe00000000000L    # 255.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p1

    mul-double/2addr v2, v4

    mul-double v2, v2, p7

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p3

    mul-double/2addr v2, v4

    mul-double v2, v2, p7

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, p5

    mul-double/2addr v4, v6

    mul-double v4, v4, p7

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_view_color_picker_cmyk:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->initView(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekC:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setSeekListener(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;)V

    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekM:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setSeekListener(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;)V

    .line 57
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekY:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setSeekListener(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;)V

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekK:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setSeekListener(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;)V

    .line 60
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_cmyk_seek_c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekC:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    .line 64
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_cmyk_seek_m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekM:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    .line 65
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_cmyk_seek_y:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekY:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    .line 66
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_cmyk_seek_k:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekK:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    .line 67
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_cmyk_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykPreview:Landroid/view/View;

    .line 68
    return-void
.end method

.method private updateGradients()V
    .locals 22

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekC:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double v14, v2, v4

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekM:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double v6, v2, v4

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekY:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double v8, v2, v4

    .line 84
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekK:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v4}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v4

    int-to-double v4, v4

    const-wide v10, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v10

    sub-double v10, v2, v4

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekC:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    const-wide/16 v4, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getColor(DDDD)I

    move-result v12

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getColor(DDDD)I

    move-result v3

    invoke-virtual {v2, v12, v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekM:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    const-wide/16 v16, 0x0

    move-object/from16 v13, p0

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v21}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getColor(DDDD)I

    move-result v3

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v13, p0

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v21}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getColor(DDDD)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekY:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    const-wide/16 v18, 0x0

    move-object/from16 v13, p0

    move-wide/from16 v16, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v21}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getColor(DDDD)I

    move-result v3

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object/from16 v13, p0

    move-wide/from16 v16, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v21}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getColor(DDDD)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekK:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object/from16 v3, p0

    move-wide v4, v14

    invoke-direct/range {v3 .. v11}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getColor(DDDD)I

    move-result v12

    const-wide/16 v10, 0x0

    move-object/from16 v3, p0

    move-wide v4, v14

    invoke-direct/range {v3 .. v11}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getColor(DDDD)I

    move-result v3

    invoke-virtual {v2, v12, v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 90
    return-void
.end method

.method private updateSampleColor()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykPreview:Landroid/view/View;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public getSelectedColor()I
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x406fe00000000000L    # 255.0

    .line 108
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekK:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v8

    sub-double v0, v10, v0

    .line 109
    const/16 v2, 0xff

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekC:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v3

    int-to-double v4, v3

    div-double/2addr v4, v8

    sub-double v4, v10, v4

    mul-double/2addr v4, v8

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    iget-object v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekM:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v4}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v8

    sub-double v4, v10, v4

    mul-double/2addr v4, v8

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekY:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v5}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v5

    int-to-double v6, v5

    div-double/2addr v6, v8

    sub-double v6, v10, v6

    mul-double/2addr v6, v8

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public onProgressChanged(I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->updateSampleColor()V

    .line 73
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->updateGradients()V

    .line 74
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 14

    .prologue
    .line 98
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 99
    iget-object v8, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekC:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    const-wide v10, 0x406fe00000000000L    # 255.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v0, v12, v0

    sub-double/2addr v0, v6

    mul-double/2addr v0, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v6

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setProgress(J)V

    .line 100
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekM:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    const-wide v8, 0x406fe00000000000L    # 255.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v2, v10, v2

    sub-double/2addr v2, v6

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setProgress(J)V

    .line 101
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekY:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    const-wide v2, 0x406fe00000000000L    # 255.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v4, v8, v4

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setProgress(J)V

    .line 102
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->bsdkColorPickerCmykSeekK:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setProgress(J)V

    .line 103
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->updateSampleColor()V

    .line 104
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerCMYK;->updateGradients()V

    .line 105
    return-void
.end method
