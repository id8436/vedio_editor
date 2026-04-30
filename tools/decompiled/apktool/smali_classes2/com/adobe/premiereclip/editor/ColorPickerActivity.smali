.class public Lcom/adobe/premiereclip/editor/ColorPickerActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "ColorPickerActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;
.implements Lcom/adobe/premiereclip/view/HueBarView$OnHueChangedListener;


# instance fields
.field private colorPickerContainer:Landroid/widget/RelativeLayout;

.field private colorPickerView:Lcom/adobe/premiereclip/view/ColorPickerView;

.field private currentColorBox:Landroid/view/View;

.field private hueBarContainer:Landroid/widget/RelativeLayout;

.field private hueBarView:Lcom/adobe/premiereclip/view/HueBarView;

.field private previousColor:I

.field private previousColorBox:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)Lcom/adobe/premiereclip/view/ColorPickerView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerView:Lcom/adobe/premiereclip/view/ColorPickerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->previousColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)Lcom/adobe/premiereclip/view/HueBarView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarView:Lcom/adobe/premiereclip/view/HueBarView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/editor/ColorPickerActivity;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->setHueFromColor(I)V

    return-void
.end method

.method private setHueFromColor(I)V
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 148
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 149
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarView:Lcom/adobe/premiereclip/view/HueBarView;

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/view/HueBarView;->setCurrentHue(F)V

    .line 150
    return-void
.end method


# virtual methods
.method public closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->onBackPressed()V

    .line 167
    return-void
.end method

.method public colorChanged(I)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->currentColorBox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    return-void
.end method

.method public hueChanged(F)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerView:Lcom/adobe/premiereclip/view/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/view/ColorPickerView;->setCurrentHue(F)V

    .line 189
    return-void
.end method

.method public final onBackPressed()V
    .locals 6

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    const-string/jumbo v1, "#%06X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    iget-object v5, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerView:Lcom/adobe/premiereclip/view/ColorPickerView;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/view/ColorPickerView;->getCurrentColor()I

    move-result v5

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string/jumbo v2, "color"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 177
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 178
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->overridePendingTransition(II)V

    .line 179
    return-void
.end method

.method public onClickPresetBlack(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerView:Lcom/adobe/premiereclip/view/ColorPickerView;

    const-string/jumbo v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/view/ColorPickerView;->setCurrentColor(I)V

    .line 158
    return-void
.end method

.method public onClickPresetWhite(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerView:Lcom/adobe/premiereclip/view/ColorPickerView;

    const-string/jumbo v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/view/ColorPickerView;->setCurrentColor(I)V

    .line 154
    return-void
.end method

.method public onClickPreviousColor(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerView:Lcom/adobe/premiereclip/view/ColorPickerView;

    iget v1, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->previousColor:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/view/ColorPickerView;->setCurrentColor(I)V

    .line 162
    iget v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->previousColor:I

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->setHueFromColor(I)V

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "color"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->previousColor:I

    .line 58
    const v0, 0x7f1200fc

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->previousColorBox:Landroid/view/View;

    .line 59
    const v0, 0x7f1200fd

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->currentColorBox:Landroid/view/View;

    .line 60
    const v0, 0x7f1200fe

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerContainer:Landroid/widget/RelativeLayout;

    .line 61
    const-string/jumbo v0, "ColorPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "color box w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const v0, 0x7f1200ff

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarContainer:Landroid/widget/RelativeLayout;

    .line 63
    const-string/jumbo v0, "ColorPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hue bar w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->previousColorBox:Landroid/view/View;

    iget v1, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->previousColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    new-instance v0, Lcom/adobe/premiereclip/view/ColorPickerView;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/view/ColorPickerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerView:Lcom/adobe/premiereclip/view/ColorPickerView;

    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerView:Lcom/adobe/premiereclip/view/ColorPickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerView:Lcom/adobe/premiereclip/view/ColorPickerView;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->setColorChangeListener(Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;)V

    .line 72
    new-instance v0, Lcom/adobe/premiereclip/view/HueBarView;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/view/HueBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarView:Lcom/adobe/premiereclip/view/HueBarView;

    .line 73
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarView:Lcom/adobe/premiereclip/view/HueBarView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarView:Lcom/adobe/premiereclip/view/HueBarView;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/view/HueBarView;->setHueChangeListener(Lcom/adobe/premiereclip/view/HueBarView$OnHueChangedListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 84
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0311

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 85
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c030c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 86
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c038e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 87
    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    .line 88
    div-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    int-to-double v6, v2

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 89
    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 90
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 92
    invoke-virtual {v2, v1, v0, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    const v4, 0x7f1200fb

    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v11, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 97
    sub-int v4, v1, v3

    sub-int v5, v1, v3

    invoke-virtual {v2, v4, v8, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 98
    iget-object v4, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0372

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v9, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 102
    sub-int v4, v1, v3

    sub-int/2addr v1, v3

    invoke-virtual {v2, v4, v8, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->colorPickerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/adobe/premiereclip/editor/ColorPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity$1;-><init>(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 119
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->hueBarContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/adobe/premiereclip/editor/ColorPickerActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity$2;-><init>(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 132
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 143
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 137
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 138
    return-void
.end method
