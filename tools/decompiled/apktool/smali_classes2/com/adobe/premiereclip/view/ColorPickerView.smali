.class public Lcom/adobe/premiereclip/view/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# instance fields
.field private borderStrokeSize:F

.field private height:I

.field private mCurrentColor:I

.field private mCurrentHue:F

.field private mCurrentX:I

.field private mCurrentY:I

.field private mListener:Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;

.field private mMainColors:[I

.field private mPaint:Landroid/graphics/Paint;

.field private pickerRadiusInner:I

.field private pickerRadiusOuter:I

.field private strokeWidth:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentHue:F

    .line 38
    iput v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentX:I

    iput v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentY:I

    .line 40
    const/high16 v0, 0x10000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mMainColors:[I

    .line 48
    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c038d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusInner:I

    .line 49
    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c038e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    .line 50
    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->borderStrokeSize:F

    .line 51
    invoke-direct {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->init()V

    .line 52
    return-void
.end method

.method private getCurrentMainColor()I
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/high16 v7, 0x43800000    # 256.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 97
    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentHue:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    float-to-int v5, v1

    move v2, v0

    move v1, v4

    .line 99
    :goto_0
    cmpg-float v3, v2, v7

    if-gez v3, :cond_1

    .line 100
    if-ne v1, v5, :cond_0

    .line 101
    float-to-int v0, v2

    invoke-static {v8, v0, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 130
    :goto_1
    return v0

    .line 102
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 99
    add-float v1, v2, v6

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 104
    :goto_2
    cmpg-float v3, v2, v7

    if-gez v3, :cond_3

    .line 105
    if-ne v1, v5, :cond_2

    .line 106
    float-to-int v0, v2

    rsub-int v0, v0, 0xff

    invoke-static {v0, v8, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    .line 107
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 104
    add-float v1, v2, v6

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v0

    .line 109
    :goto_3
    cmpg-float v3, v2, v7

    if-gez v3, :cond_5

    .line 110
    if-ne v1, v5, :cond_4

    .line 111
    float-to-int v0, v2

    invoke-static {v4, v8, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    .line 112
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 109
    add-float v1, v2, v6

    move v2, v1

    move v1, v3

    goto :goto_3

    :cond_5
    move v2, v0

    .line 114
    :goto_4
    cmpg-float v3, v2, v7

    if-gez v3, :cond_7

    .line 115
    if-ne v1, v5, :cond_6

    .line 116
    float-to-int v0, v2

    rsub-int v0, v0, 0xff

    invoke-static {v4, v0, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    .line 117
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .line 114
    add-float v1, v2, v6

    move v2, v1

    move v1, v3

    goto :goto_4

    :cond_7
    move v2, v0

    .line 119
    :goto_5
    cmpg-float v3, v2, v7

    if-gez v3, :cond_a

    .line 120
    if-ne v1, v5, :cond_8

    .line 121
    float-to-int v0, v2

    invoke-static {v0, v4, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    .line 122
    :cond_8
    add-int/lit8 v3, v1, 0x1

    .line 119
    add-float v1, v2, v6

    move v2, v1

    move v1, v3

    goto :goto_5

    .line 127
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 124
    add-float/2addr v0, v6

    :cond_a
    cmpg-float v2, v0, v7

    if-gez v2, :cond_b

    .line 125
    if-ne v1, v5, :cond_9

    .line 126
    float-to-int v0, v0

    rsub-int v0, v0, 0xff

    invoke-static {v8, v4, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    .line 130
    :cond_b
    const/high16 v0, -0x10000

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/view/ColorPickerView;->setCurrentColor(I)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 93
    return-void
.end method

.method private updateCurrentColor()V
    .locals 4

    .prologue
    .line 228
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->strokeWidth:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 229
    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->strokeWidth:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 230
    add-int/lit8 v1, v1, -0x1

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    .line 231
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mMainColors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mMainColors:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentColor:I

    .line 234
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mListener:Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mListener:Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentColor:I

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;->colorChanged(I)V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->invalidate()V

    .line 240
    :cond_1
    return-void
.end method

.method private updateMainColors()V
    .locals 12

    .prologue
    const/16 v11, 0x100

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->getCurrentMainColor()I

    move-result v4

    .line 137
    new-array v5, v11, [I

    move v3, v1

    move v0, v1

    .line 138
    :goto_0
    if-ge v3, v11, :cond_2

    move v2, v0

    move v0, v1

    .line 139
    :goto_1
    if-ge v0, v11, :cond_1

    .line 140
    if-nez v3, :cond_0

    .line 141
    iget-object v6, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mMainColors:[I

    .line 142
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v7

    rsub-int v7, v7, 0xff

    mul-int/2addr v7, v0

    div-int/lit16 v7, v7, 0xff

    rsub-int v7, v7, 0xff

    .line 143
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    rsub-int v8, v8, 0xff

    mul-int/2addr v8, v0

    div-int/lit16 v8, v8, 0xff

    rsub-int v8, v8, 0xff

    .line 144
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    rsub-int v9, v9, 0xff

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xff

    rsub-int v9, v9, 0xff

    .line 141
    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    aput v7, v6, v2

    .line 145
    iget-object v6, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mMainColors:[I

    aget v6, v6, v2

    aput v6, v5, v0

    .line 151
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_0
    iget-object v6, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mMainColors:[I

    rsub-int v7, v3, 0xff

    aget v8, v5, v0

    .line 148
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0xff

    rsub-int v8, v3, 0xff

    aget v9, v5, v0

    .line 149
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    mul-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    rsub-int v9, v3, 0xff

    aget v10, v5, v0

    .line 150
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    mul-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xff

    .line 147
    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    aput v7, v6, v2

    goto :goto_2

    .line 138
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->invalidate()V

    .line 155
    return-void
.end method


# virtual methods
.method public getCurrentColor()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    const/16 v0, 0x100

    if-ge v8, v0, :cond_0

    .line 162
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 163
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mMainColors:[I

    aget v1, v1, v8

    aput v1, v5, v0

    .line 164
    const/4 v0, 0x1

    const/high16 v1, -0x1000000

    aput v1, v5, v0

    .line 165
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->height:I

    iget v6, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 166
    iget-object v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 167
    int-to-float v0, v8

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->strokeWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v2, v0

    int-to-float v0, v8

    iget v3, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->strokeWidth:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->height:I

    iget v4, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 161
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 172
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->borderStrokeSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v1, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v2, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v3, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v1, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v2, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v3, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->height:I

    iget v4, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v1, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->height:I

    int-to-float v0, v0

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->borderStrokeSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v3, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->height:I

    int-to-float v0, v0

    iget v4, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->borderStrokeSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 178
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v2, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v3, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->height:I

    iget v4, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 182
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentX:I

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentY:I

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 185
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentX:I

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentY:I

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentX:I

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentY:I

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusInner:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 194
    const-string/jumbo v0, "ColorPickerView"

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

    .line 195
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/view/ColorPickerView;->setMeasuredDimension(II)V

    .line 196
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 201
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v4, :cond_0

    .line 224
    :goto_0
    return v4

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 207
    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 208
    iput v5, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentX:I

    .line 215
    :goto_1
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    .line 216
    iput v5, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentY:I

    .line 222
    :goto_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->updateCurrentColor()V

    goto :goto_0

    .line 209
    :cond_1
    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v3, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    .line 210
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentX:I

    goto :goto_1

    .line 212
    :cond_2
    float-to-int v0, v0

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentX:I

    goto :goto_1

    .line 217
    :cond_3
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_4

    .line 218
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentY:I

    goto :goto_2

    .line 220
    :cond_4
    float-to-int v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentY:I

    goto :goto_2
.end method

.method public setColorChangeListener(Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mListener:Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;

    .line 56
    return-void
.end method

.method public setCurrentColor(I)V
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 60
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 61
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentHue:F

    .line 62
    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 63
    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentX:I

    .line 64
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    aget v0, v0, v3

    sub-float v0, v2, v0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentY:I

    .line 65
    iput p1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentColor:I

    .line 66
    invoke-direct {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->updateMainColors()V

    .line 67
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mListener:Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mListener:Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentColor:I

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/view/ColorPickerView$OnColorChangedListener;->colorChanged(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public setCurrentHue(F)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->mCurrentHue:F

    .line 78
    invoke-direct {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->updateMainColors()V

    .line 79
    invoke-direct {p0}, Lcom/adobe/premiereclip/view/ColorPickerView;->updateCurrentColor()V

    .line 80
    return-void
.end method

.method public setSize(I)V
    .locals 2

    .prologue
    .line 83
    iput p1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->height:I

    iput p1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    .line 84
    iget v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->width:I

    iget v1, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->pickerRadiusOuter:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/view/ColorPickerView;->strokeWidth:F

    .line 85
    return-void
.end method
