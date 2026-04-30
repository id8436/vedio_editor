.class public Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;
.super Landroid/widget/RelativeLayout;
.source "SoundWaveView.java"


# static fields
.field private static final NUM_PIXELS_EXTENDED:I = 0x1e


# instance fields
.field private bitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private pixelsBlockedAtEnd:I

.field private screenH:I

.field private screenW:I

.field private scrollView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

.field private waveScrollListener:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;III)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 55
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iput p4, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->limit:I

    .line 57
    iput p6, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->pixelsBlockedAtEnd:I

    .line 58
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-direct {v0, p0, p2, p5}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;-><init>(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->scrollView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->scrollView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 62
    iput-object p3, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->waveScrollListener:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->bitmaps:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 68
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenW:I

    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c03ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenH:I

    .line 71
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->resetView()V

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->limit:I

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;)Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->waveScrollListener:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollListener;

    return-object v0
.end method

.method private addDummyBitmap(Z)V
    .locals 7

    .prologue
    .line 131
    if-eqz p1, :cond_1

    .line 132
    iget v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenW:I

    div-int/lit8 v0, v0, 0x2

    .line 137
    :goto_0
    if-lez v0, :cond_0

    .line 138
    iget v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenH:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 140
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 141
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 144
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 145
    const/16 v0, 0xff

    const/16 v1, 0x70

    const/16 v2, 0x37

    const/16 v3, 0xa1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 150
    if-eqz p1, :cond_2

    .line 151
    iget v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenW:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1e

    int-to-float v1, v1

    iget v2, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenW:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 155
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void

    .line 135
    :cond_1
    iget v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenW:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->pixelsBlockedAtEnd:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 153
    :cond_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    iget v4, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private addTransparentHalf()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 111
    iget v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenW:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenH:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 113
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 114
    const/16 v1, 0x7f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 116
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 117
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 121
    iget v1, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenW:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenW:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->screenH:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 123
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->addView(Landroid/view/View;)V

    .line 127
    return-void
.end method


# virtual methods
.method public addBitmaps(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 75
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->removeAllViews()V

    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->scrollView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->addView(Landroid/view/View;)V

    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->addDummyBitmap(Z)V

    .line 79
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->addDummyBitmap(Z)V

    .line 82
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->scrollView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->removeAllViews()V

    .line 88
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->scrollView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->addView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 91
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->addTransparentHalf()V

    .line 100
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->scrollView:Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView$WaveScrollView;->setTouchListener()V

    .line 102
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->invalidate()V

    .line 103
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->requestLayout()V

    .line 104
    return-void
.end method

.method public resetView()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/waveform/SoundWaveView;->removeAllViews()V

    .line 108
    return-void
.end method
