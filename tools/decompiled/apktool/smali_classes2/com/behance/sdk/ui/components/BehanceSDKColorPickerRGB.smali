.class public Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;
.super Landroid/widget/FrameLayout;
.source "BehanceSDKColorPickerRGB.java"

# interfaces
.implements Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;


# instance fields
.field private bsdkColorPickerRgbPreview:Landroid/view/View;

.field private bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

.field private bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

.field private bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;)Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_view_color_picker_rgb:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->initView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->addView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 53
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setSeekListener(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;)V

    .line 54
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setSeekListener(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;)V

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setSeekListener(Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar$SeekListener;)V

    .line 57
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_rgb_seek_r:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    .line 61
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_rgb_seek_g:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    .line 62
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_rgb_seek_b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    .line 63
    sget v0, Lcom/behance/sdk/R$id;->bsdk_color_picker_rgb_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbPreview:Landroid/view/View;

    .line 64
    return-void
.end method

.method private updateGradients()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xff

    .line 77
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v2

    invoke-static {v4, v5, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v3

    invoke-static {v4, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 78
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v2

    invoke-static {v4, v1, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v3

    invoke-static {v4, v2, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v2

    invoke-static {v4, v1, v2, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v3

    invoke-static {v4, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setGradient(II)V

    .line 80
    return-void
.end method

.method private updateSampleColor()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbPreview:Landroid/view/View;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    return-void
.end method


# virtual methods
.method public getSelectedColor()I
    .locals 4

    .prologue
    .line 98
    const/16 v0, 0xff

    iget-object v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->getProgress()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public onProgressChanged(I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->updateSampleColor()V

    .line 69
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->updateGradients()V

    .line 70
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 6

    .prologue
    .line 88
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 89
    iget-object v3, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekR:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setProgress(J)V

    .line 90
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekG:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setProgress(J)V

    .line 91
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->bsdkColorPickerRgbSeekB:Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKGradientSeekBar;->setProgress(J)V

    .line 93
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->updateGradients()V

    .line 94
    invoke-direct {p0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerRGB;->updateSampleColor()V

    .line 95
    return-void
.end method
