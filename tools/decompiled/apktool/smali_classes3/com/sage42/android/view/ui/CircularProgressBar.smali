.class public Lcom/sage42/android/view/ui/CircularProgressBar;
.super Landroid/view/View;
.source "CircularProgressBar.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:Z

.field private final d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sage42/android/view/ui/CircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    sget-object v0, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 81
    const/high16 v0, 0x42800000    # 64.0f

    .line 82
    invoke-virtual {p0}, Lcom/sage42/android/view/ui/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 81
    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 84
    const/high16 v2, 0x40400000    # 3.0f

    .line 85
    invoke-virtual {p0}, Lcom/sage42/android/view/ui/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 84
    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 87
    const/high16 v3, 0x40800000    # 4.0f

    .line 88
    invoke-virtual {p0}, Lcom/sage42/android/view/ui/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 87
    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 90
    const/4 v4, 0x2

    const/high16 v5, 0x41600000    # 14.0f

    .line 91
    invoke-virtual {p0}, Lcom/sage42/android/view/ui/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 92
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 90
    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 96
    :try_start_0
    sget v5, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar_bgColor:I

    sget v6, Lcom/adobe/creativeapps/settings/R$color;->black:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 98
    sget v6, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar_bgStrokeWidth:I

    float-to-int v7, v2

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 102
    sget v7, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar_progressColor:I

    sget v8, Lcom/adobe/creativeapps/settings/R$color;->white:I

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 104
    sget v8, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar_progressStrokeWidth:I

    float-to-int v2, v2

    invoke-virtual {v1, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 107
    sget v8, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar_showProgressText:I

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->c:Z

    .line 109
    sget v8, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar_android_textSize:I

    float-to-int v4, v4

    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 112
    sget v8, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar_android_textColor:I

    sget v9, Lcom/adobe/creativeapps/settings/R$color;->white:I

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 115
    sget v9, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar_android_layout_margin:I

    float-to-int v3, v3

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->h:I

    .line 119
    sget v3, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar_max:I

    const/16 v9, 0x64

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->e:I

    .line 121
    sget v3, Lcom/adobe/creativeapps/settings/R$styleable;->circularProgressBar_diameter:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->g:F

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->a:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->a:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->a:Landroid/graphics/Paint;

    int-to-float v3, v6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->b:Landroid/graphics/Paint;

    .line 132
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->b:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->b:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->d:Landroid/graphics/Paint;

    .line 138
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->d:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 142
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->d:Landroid/graphics/Paint;

    int-to-float v2, v4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    return-void

    .line 145
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    throw v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->i:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->h:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->h:I

    int-to-float v3, v3

    iget v5, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->g:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->h:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->g:F

    add-float/2addr v5, v6

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->i:Landroid/graphics/RectF;

    .line 161
    :cond_0
    iget v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->g:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 162
    iget v1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->h:I

    int-to-float v1, v1

    add-float v6, v0, v1

    .line 163
    iget-object v1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    iget v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->f:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->e:I

    int-to-long v2, v1

    .line 168
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x4

    sget-object v3, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 167
    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 170
    const-wide/16 v2, 0x168

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->i:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    .line 175
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    iget-object v5, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->b:Landroid/graphics/Paint;

    move-object v0, p1

    .line 174
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 178
    iget-boolean v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->c:Z

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->j:Landroid/graphics/Rect;

    .line 186
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->d:Landroid/graphics/Paint;

    const-string/jumbo v1, "0"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->j:Landroid/graphics/Rect;

    .line 191
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    add-float/2addr v1, v6

    iget-object v2, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->d:Landroid/graphics/Paint;

    .line 190
    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 194
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->g:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->h:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 209
    invoke-virtual {p0, v0, v0}, Lcom/sage42/android/view/ui/CircularProgressBar;->setMeasuredDimension(II)V

    .line 210
    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    return-void
.end method

.method public setBgStrokeWidth(I)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->a:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    return-void
.end method

.method public setDiameter(F)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->g:F

    .line 255
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->e:I

    .line 215
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 198
    iput p1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->f:I

    .line 201
    invoke-virtual {p0}, Lcom/sage42/android/view/ui/CircularProgressBar;->invalidate()V

    .line 202
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    return-void
.end method

.method public setProgressStrokeWidth(I)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->b:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 235
    return-void
.end method

.method public setShowText(Z)V
    .locals 0

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->c:Z

    .line 240
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sage42/android/view/ui/CircularProgressBar;->d:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 245
    return-void
.end method
