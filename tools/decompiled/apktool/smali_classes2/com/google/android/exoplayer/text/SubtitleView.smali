.class public Lcom/google/android/exoplayer/text/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private backgroundColor:I

.field private final cornerRadius:F

.field private edgeColor:I

.field private edgeType:I

.field private foregroundColor:I

.field private hasMeasurements:Z

.field private innerPaddingX:I

.field private lastMeasuredWidth:I

.field private layout:Landroid/text/StaticLayout;

.field private final lineBounds:Landroid/graphics/RectF;

.field private final outlineWidth:F

.field private paint:Landroid/graphics/Paint;

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private spacingAdd:F

.field private spacingMult:F

.field private final textBuilder:Ljava/lang/StringBuilder;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/text/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/text/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->lineBounds:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textBuilder:Ljava/lang/StringBuilder;

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 91
    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 93
    const/16 v2, 0xf

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 94
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/exoplayer/text/SubtitleView;->spacingAdd:F

    .line 95
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/text/SubtitleView;->spacingMult:F

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 100
    const/high16 v3, 0x40000000    # 2.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 101
    int-to-float v3, v0

    iput v3, p0, Lcom/google/android/exoplayer/text/SubtitleView;->cornerRadius:F

    .line 102
    int-to-float v3, v0

    iput v3, p0, Lcom/google/android/exoplayer/text/SubtitleView;->outlineWidth:F

    .line 103
    int-to-float v3, v0

    iput v3, p0, Lcom/google/android/exoplayer/text/SubtitleView;->shadowRadius:F

    .line 104
    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->shadowOffset:F

    .line 106
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textPaint:Landroid/text/TextPaint;

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->paint:Landroid/graphics/Paint;

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iput v5, p0, Lcom/google/android/exoplayer/text/SubtitleView;->innerPaddingX:I

    .line 114
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/text/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    int-to-float v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->setTextSize(F)V

    .line 116
    sget-object v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->setStyle(Lcom/google/android/exoplayer/text/CaptionStyleCompat;)V

    .line 117
    return-void

    .line 89
    :array_0
    .array-data 4
        0x101014f
        0x1010095
        0x1010217
        0x1010218
    .end array-data
.end method

.method private computeMeasurements(I)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 217
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->hasMeasurements:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->lastMeasuredWidth:I

    if-ne p1, v0, :cond_0

    .line 232
    :goto_0
    return v7

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer/text/SubtitleView;->innerPaddingX:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 223
    sub-int v3, p1, v0

    .line 224
    if-gtz v3, :cond_1

    .line 225
    const/4 v7, 0x0

    goto :goto_0

    .line 228
    :cond_1
    iput-boolean v7, p0, Lcom/google/android/exoplayer/text/SubtitleView;->hasMeasurements:Z

    .line 229
    iput v3, p0, Lcom/google/android/exoplayer/text/SubtitleView;->lastMeasuredWidth:I

    .line 230
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/exoplayer/text/SubtitleView;->spacingMult:F

    iget v6, p0, Lcom/google/android/exoplayer/text/SubtitleView;->spacingAdd:F

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->layout:Landroid/text/StaticLayout;

    goto :goto_0
.end method

.method private forceUpdate(Z)V
    .locals 1

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->hasMeasurements:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->requestLayout()V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->invalidate()V

    .line 181
    return-void
.end method

.method private setTooSmallMeasureDimensionV11()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v0, 0x1000000

    .line 207
    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->setMeasuredDimension(II)V

    .line 208
    return-void
.end method

.method private setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->forceUpdate(Z)V

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 237
    iget-object v3, p0, Lcom/google/android/exoplayer/text/SubtitleView;->layout:Landroid/text/StaticLayout;

    .line 238
    if-nez v3, :cond_0

    .line 295
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 243
    iget v2, p0, Lcom/google/android/exoplayer/text/SubtitleView;->innerPaddingX:I

    .line 244
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 247
    iget-object v6, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textPaint:Landroid/text/TextPaint;

    .line 248
    iget-object v7, p0, Lcom/google/android/exoplayer/text/SubtitleView;->paint:Landroid/graphics/Paint;

    .line 249
    iget-object v8, p0, Lcom/google/android/exoplayer/text/SubtitleView;->lineBounds:Landroid/graphics/RectF;

    .line 251
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 252
    iget v9, p0, Lcom/google/android/exoplayer/text/SubtitleView;->cornerRadius:F

    .line 253
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    int-to-float v1, v0

    .line 255
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->backgroundColor:I

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 259
    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v10

    int-to-float v11, v2

    sub-float/2addr v10, v11

    iput v10, v8, Landroid/graphics/RectF;->left:F

    .line 260
    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v10

    int-to-float v11, v2

    add-float/2addr v10, v11

    iput v10, v8, Landroid/graphics/RectF;->right:F

    .line 261
    iput v1, v8, Landroid/graphics/RectF;->top:F

    .line 262
    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v8, Landroid/graphics/RectF;->bottom:F

    .line 263
    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    .line 265
    invoke-virtual {p1, v8, v9, v9, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 270
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 271
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->outlineWidth:F

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 272
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 290
    :cond_2
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->foregroundColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 293
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 294
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 275
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 276
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->shadowRadius:F

    iget v1, p0, Lcom/google/android/exoplayer/text/SubtitleView;->shadowOffset:F

    iget v2, p0, Lcom/google/android/exoplayer/text/SubtitleView;->shadowOffset:F

    iget v5, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeColor:I

    invoke-virtual {v6, v0, v1, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 277
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 279
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    move v2, v0

    .line 280
    :goto_3
    if-eqz v2, :cond_7

    const/4 v0, -0x1

    move v1, v0

    .line 281
    :goto_4
    if-eqz v2, :cond_8

    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeColor:I

    .line 282
    :goto_5
    iget v2, p0, Lcom/google/android/exoplayer/text/SubtitleView;->shadowRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    .line 283
    iget v5, p0, Lcom/google/android/exoplayer/text/SubtitleView;->foregroundColor:I

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 285
    iget v5, p0, Lcom/google/android/exoplayer/text/SubtitleView;->shadowRadius:F

    neg-float v7, v2

    neg-float v8, v2

    invoke-virtual {v6, v5, v7, v8, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 286
    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 287
    iget v1, p0, Lcom/google/android/exoplayer/text/SubtitleView;->shadowRadius:F

    invoke-virtual {v6, v1, v2, v2, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_2

    .line 279
    :cond_6
    const/4 v0, 0x0

    move v2, v0

    goto :goto_3

    .line 280
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeColor:I

    move v1, v0

    goto :goto_4

    .line 281
    :cond_8
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 212
    sub-int v0, p4, p2

    .line 213
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->computeMeasurements(I)Z

    .line 214
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 187
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/SubtitleView;->computeMeasurements(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v2, p0, Lcom/google/android/exoplayer/text/SubtitleView;->layout:Landroid/text/StaticLayout;

    .line 189
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/google/android/exoplayer/text/SubtitleView;->innerPaddingX:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    .line 190
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->getPaddingTop()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v1

    .line 192
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    move v1, v0

    .line 193
    :goto_0
    if-ge v0, v5, :cond_0

    .line 194
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    add-int v0, v1, v3

    .line 197
    invoke-virtual {p0, v0, v4}, Lcom/google/android/exoplayer/text/SubtitleView;->setMeasuredDimension(II)V

    .line 203
    :goto_1
    return-void

    .line 198
    :cond_1
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 199
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/SubtitleView;->setTooSmallMeasureDimensionV11()V

    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 125
    iput p1, p0, Lcom/google/android/exoplayer/text/SubtitleView;->backgroundColor:I

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->forceUpdate(Z)V

    .line 127
    return-void
.end method

.method public setStyle(Lcom/google/android/exoplayer/text/CaptionStyleCompat;)V
    .locals 1

    .prologue
    .line 159
    iget v0, p1, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->foregroundColor:I

    iput v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->foregroundColor:I

    .line 160
    iget v0, p1, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->backgroundColor:I

    iput v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->backgroundColor:I

    .line 161
    iget v0, p1, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeType:I

    iput v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeType:I

    .line 162
    iget v0, p1, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeColor:I

    iput v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->edgeColor:I

    .line 163
    iget-object v0, p1, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    iget v0, p1, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->windowColor:I

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->forceUpdate(Z)V

    .line 166
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->forceUpdate(Z)V

    .line 138
    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 148
    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/text/SubtitleView;->innerPaddingX:I

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/SubtitleView;->forceUpdate(Z)V

    .line 151
    :cond_0
    return-void
.end method
