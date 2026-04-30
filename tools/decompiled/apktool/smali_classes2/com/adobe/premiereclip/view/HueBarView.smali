.class public Lcom/adobe/premiereclip/view/HueBarView;
.super Landroid/view/View;
.source "HueBarView.java"


# instance fields
.field private borderStrokeSize:F

.field private height:I

.field private mCurrentHue:F

.field private final mHueBarColors:[I

.field private mListener:Lcom/adobe/premiereclip/view/HueBarView$OnHueChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private pickerRadiusInner:I

.field private pickerRadiusOuter:I

.field private strokeWidth:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mCurrentHue:F

    .line 37
    const/16 v0, 0x102

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mHueBarColors:[I

    .line 46
    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/HueBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c038d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusInner:I

    .line 47
    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/HueBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c038e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    .line 49
    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/HueBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->borderStrokeSize:F

    .line 50
    invoke-direct {p0}, Lcom/adobe/premiereclip/view/HueBarView;->init()V

    .line 51
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/high16 v7, 0x43800000    # 256.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 71
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 72
    invoke-static {v4, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 73
    aget v1, v1, v4

    iput v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->mCurrentHue:F

    move v2, v0

    move v1, v4

    .line 78
    :goto_0
    cmpg-float v3, v2, v7

    if-gez v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->mHueBarColors:[I

    float-to-int v5, v2

    invoke-static {v8, v5, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v1

    .line 81
    add-int/lit8 v3, v1, 0x1

    .line 78
    add-float v1, v2, v6

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 83
    :goto_1
    cmpg-float v3, v2, v7

    if-gez v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->mHueBarColors:[I

    float-to-int v5, v2

    rsub-int v5, v5, 0xff

    invoke-static {v5, v8, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v1

    .line 86
    add-int/lit8 v3, v1, 0x1

    .line 83
    add-float v1, v2, v6

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_1
    move v2, v0

    .line 88
    :goto_2
    cmpg-float v3, v2, v7

    if-gez v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->mHueBarColors:[I

    float-to-int v5, v2

    invoke-static {v4, v8, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v1

    .line 91
    add-int/lit8 v3, v1, 0x1

    .line 88
    add-float v1, v2, v6

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_2
    move v2, v0

    .line 93
    :goto_3
    cmpg-float v3, v2, v7

    if-gez v3, :cond_3

    .line 95
    iget-object v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->mHueBarColors:[I

    float-to-int v5, v2

    rsub-int v5, v5, 0xff

    invoke-static {v4, v5, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v1

    .line 96
    add-int/lit8 v3, v1, 0x1

    .line 93
    add-float v1, v2, v6

    move v2, v1

    move v1, v3

    goto :goto_3

    :cond_3
    move v2, v0

    .line 98
    :goto_4
    cmpg-float v3, v2, v7

    if-gez v3, :cond_4

    .line 100
    iget-object v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->mHueBarColors:[I

    float-to-int v5, v2

    invoke-static {v5, v4, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v3, v1

    .line 101
    add-int/lit8 v3, v1, 0x1

    .line 98
    add-float v1, v2, v6

    move v2, v1

    move v1, v3

    goto :goto_4

    .line 103
    :cond_4
    :goto_5
    cmpg-float v2, v0, v7

    if-gez v2, :cond_5

    .line 105
    iget-object v2, p0, Lcom/adobe/premiereclip/view/HueBarView;->mHueBarColors:[I

    float-to-int v3, v0

    rsub-int v3, v3, 0xff

    invoke-static {v8, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v2, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 103
    add-float/2addr v0, v6

    goto :goto_5

    .line 112
    :cond_5
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    .line 113
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 117
    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mCurrentHue:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    float-to-int v7, v0

    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/16 v0, 0x100

    if-ge v6, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->mHueBarColors:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    int-to-float v0, v6

    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->strokeWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p0, Lcom/adobe/premiereclip/view/HueBarView;->borderStrokeSize:F

    int-to-float v0, v6

    iget v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->strokeWidth:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->height:I

    int-to-float v0, v0

    iget v4, p0, Lcom/adobe/premiereclip/view/HueBarView;->borderStrokeSize:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/HueBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->borderStrokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    int-to-float v1, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->borderStrokeSize:F

    div-float v2, v0, v8

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->width:I

    iget v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->borderStrokeSize:F

    div-float v4, v0, v8

    iget-object v5, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    int-to-float v3, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->height:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    int-to-float v1, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->height:I

    int-to-float v0, v0

    iget v2, p0, Lcom/adobe/premiereclip/view/HueBarView;->borderStrokeSize:F

    div-float/2addr v2, v8

    sub-float v2, v0, v2

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->width:I

    iget v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->height:I

    int-to-float v0, v0

    iget v4, p0, Lcom/adobe/premiereclip/view/HueBarView;->borderStrokeSize:F

    div-float/2addr v4, v8

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->width:I

    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->borderStrokeSize:F

    div-float v2, v0, v8

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->width:I

    iget v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->height:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 137
    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    int-to-float v0, v0

    int-to-float v1, v7

    iget v2, p0, Lcom/adobe/premiereclip/view/HueBarView;->strokeWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->strokeWidth:F

    div-float/2addr v1, v8

    add-float/2addr v0, v1

    .line 138
    iget-object v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    iget-object v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 144
    iget-object v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/adobe/premiereclip/view/HueBarView;->mHueBarColors:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusInner:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/adobe/premiereclip/view/HueBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 150
    const-string/jumbo v0, "HueBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "widthMeasureSpec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", heightMeasureSpec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->width:I

    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/view/HueBarView;->setMeasuredDimension(II)V

    .line 152
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 157
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    .line 178
    :goto_0
    return v3

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 164
    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 165
    const/4 v0, 0x0

    .line 171
    :goto_1
    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->strokeWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mCurrentHue:F

    .line 172
    iget-object v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mListener:Lcom/adobe/premiereclip/view/HueBarView$OnHueChangedListener;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->mListener:Lcom/adobe/premiereclip/view/HueBarView$OnHueChangedListener;

    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->mCurrentHue:F

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/view/HueBarView$OnHueChangedListener;->hueChanged(F)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/HueBarView;->invalidate()V

    goto :goto_0

    .line 166
    :cond_2
    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 167
    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->width:I

    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_1

    .line 169
    :cond_3
    iget v1, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1
.end method

.method public setCurrentHue(F)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/adobe/premiereclip/view/HueBarView;->mCurrentHue:F

    .line 65
    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/HueBarView;->invalidate()V

    .line 66
    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    .prologue
    .line 58
    iput p1, p0, Lcom/adobe/premiereclip/view/HueBarView;->width:I

    .line 59
    iput p2, p0, Lcom/adobe/premiereclip/view/HueBarView;->height:I

    .line 60
    iget v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->pickerRadiusOuter:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/view/HueBarView;->strokeWidth:F

    .line 61
    return-void
.end method

.method public setHueChangeListener(Lcom/adobe/premiereclip/view/HueBarView$OnHueChangedListener;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adobe/premiereclip/view/HueBarView;->mListener:Lcom/adobe/premiereclip/view/HueBarView$OnHueChangedListener;

    .line 55
    return-void
.end method
