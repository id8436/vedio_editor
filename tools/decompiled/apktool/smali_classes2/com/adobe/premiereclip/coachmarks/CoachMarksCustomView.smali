.class public Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;
.super Landroid/view/View;
.source "CoachMarksCustomView.java"


# static fields
.field private static final DEF_CORNER_RADIUS:I = 0x18

.field private static final DEF_FILL_COLOR:I = -0xff4967

.field private static final DEF_STROKE_COLOR:I = -0xffff20

.field private static final DEF_STROKE_WIDTH:I = 0x9


# instance fields
.field private bUpward:Z

.field private basePath:Landroid/graphics/Path;

.field private baseStrokePaint:Landroid/graphics/Paint;

.field private caretX:I

.field private caretY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCornerRadius:F

.field private mFillColor:I

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private modePaint:Landroid/graphics/Paint;

.field private nonBasePath:Landroid/graphics/Path;

.field private pA:Landroid/graphics/PointF;

.field private pB:Landroid/graphics/PointF;

.field private pC:Landroid/graphics/PointF;

.field private padX:I

.field private padY:I

.field private porterDuffXfermodeClear:Landroid/graphics/PorterDuffXfermode;

.field private rect:Landroid/graphics/RectF;

.field private shadowOffsetRectangle:[F

.field private shadowOffsetTriangle:[F

.field private shadowRadiusRectangle:F

.field private shadowRadiusTriangle:F

.field private solidPaint:Landroid/graphics/Paint;

.field private strokeJoinDelta:F

.field private strokePaint:Landroid/graphics/Paint;

.field private triBaseLengthHalf:F

.field private trianglePath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const v0, -0xff4967

    const v1, -0xffff20

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padX:I

    .line 41
    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padY:I

    .line 42
    iput v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokeJoinDelta:F

    .line 44
    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretX:I

    .line 45
    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretY:I

    .line 46
    iput-boolean v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->bUpward:Z

    .line 48
    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mFillColor:I

    .line 49
    iput v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mStrokeColor:I

    .line 50
    iput v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mStrokeWidth:F

    .line 51
    iput v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mCornerRadius:F

    .line 52
    iput v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->triBaseLengthHalf:F

    .line 54
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pA:Landroid/graphics/PointF;

    .line 55
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pB:Landroid/graphics/PointF;

    .line 56
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pC:Landroid/graphics/PointF;

    .line 57
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->basePath:Landroid/graphics/Path;

    .line 58
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->nonBasePath:Landroid/graphics/Path;

    .line 59
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->trianglePath:Landroid/graphics/Path;

    .line 60
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->rect:Landroid/graphics/RectF;

    .line 61
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->modePaint:Landroid/graphics/Paint;

    .line 62
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->baseStrokePaint:Landroid/graphics/Paint;

    .line 65
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->porterDuffXfermodeClear:Landroid/graphics/PorterDuffXfermode;

    .line 72
    new-array v2, v5, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowOffsetRectangle:[F

    .line 73
    new-array v2, v5, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowOffsetTriangle:[F

    .line 74
    const/high16 v2, 0x41500000    # 13.0f

    iput v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowRadiusRectangle:F

    .line 75
    const/high16 v2, 0x41400000    # 12.0f

    iput v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowRadiusTriangle:F

    .line 77
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mBitmap:Landroid/graphics/Bitmap;

    .line 82
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padX:I

    .line 83
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getPaddingTop()I

    move-result v2

    iput v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padY:I

    .line 85
    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padY:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->triBaseLengthHalf:F

    .line 87
    const/4 v2, 0x0

    .line 88
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/adobe/premiereclip/R$styleable;->CoachMarksCustomView:[I

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 94
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mFillColor:I

    .line 95
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mStrokeColor:I

    .line 96
    if-eqz v2, :cond_3

    const/16 v0, 0x9

    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    :goto_1
    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mStrokeWidth:F

    .line 97
    if-eqz v2, :cond_4

    const/4 v0, 0x3

    const/16 v1, 0x18

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    :goto_2
    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mCornerRadius:F

    .line 99
    iget v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mStrokeWidth:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokeJoinDelta:F

    .line 100
    return-void

    :cond_2
    move v0, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    const/high16 v0, 0x41100000    # 9.0f

    goto :goto_1

    .line 97
    :cond_4
    const/high16 v0, 0x41c00000    # 24.0f

    goto :goto_2

    .line 72
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 73
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setCoachmarkBitmap(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f110120

    const/high16 v11, 0x40400000    # 3.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 116
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getLeft()I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getTop()I

    move-result v1

    .line 118
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getWidth()I

    move-result v2

    .line 119
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getHeight()I

    move-result v3

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mBitmap:Landroid/graphics/Bitmap;

    .line 122
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->rect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padY:I

    int-to-float v7, v7

    iget v8, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padX:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget v8, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padY:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {v5, v6, v7, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    invoke-virtual {p0, v9, v13}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 129
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mFillColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowRadiusRectangle:F

    iget-object v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowOffsetRectangle:[F

    aget v5, v5, v10

    iget-object v6, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowOffsetRectangle:[F

    aget v6, v6, v9

    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 133
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mCornerRadius:F

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mCornerRadius:F

    iget-object v6, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 134
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 137
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 139
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mStrokeColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mCornerRadius:F

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mCornerRadius:F

    iget-object v6, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 145
    iget-boolean v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->bUpward:Z

    if-eqz v2, :cond_0

    .line 146
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pA:Landroid/graphics/PointF;

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->triBaseLengthHalf:F

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 147
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pB:Landroid/graphics/PointF;

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretX:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokeJoinDelta:F

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 148
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pC:Landroid/graphics/PointF;

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->triBaseLengthHalf:F

    add-float/2addr v2, v3

    int-to-float v0, v0

    sub-float v0, v2, v0

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padY:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->trianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pA:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pA:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 156
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->trianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pB:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pB:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->trianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pC:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pC:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 158
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->trianglePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 159
    iget-boolean v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->bUpward:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowOffsetTriangle:[F

    aget v0, v0, v9

    neg-float v0, v0

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowRadiusTriangle:F

    iget-object v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowOffsetTriangle:[F

    aget v3, v3, v10

    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 161
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->trianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 162
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 165
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowOffsetRectangle:[F

    aget v2, v2, v10

    iget-object v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowOffsetRectangle:[F

    aget v3, v3, v9

    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 169
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mCornerRadius:F

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mCornerRadius:F

    iget-object v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 170
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->solidPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 173
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->basePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pA:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pA:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 174
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->basePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pC:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pC:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->nonBasePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pA:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mStrokeWidth:F

    div-float/2addr v2, v11

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pA:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 178
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->nonBasePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pB:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pB:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->nonBasePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pC:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mStrokeWidth:F

    div-float/2addr v2, v11

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pC:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->nonBasePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v13}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 184
    return-void

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pA:Landroid/graphics/PointF;

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretX:I

    int-to-float v3, v3

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->triBaseLengthHalf:F

    sub-float/2addr v3, v5

    int-to-float v5, v0

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretY:I

    iget v6, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padY:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 152
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pB:Landroid/graphics/PointF;

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretY:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokeJoinDelta:F

    float-to-int v6, v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 153
    iget-object v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->pC:Landroid/graphics/PointF;

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretX:I

    int-to-float v3, v3

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->triBaseLengthHalf:F

    add-float/2addr v3, v5

    int-to-float v0, v0

    sub-float v0, v3, v0

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretY:I

    iget v5, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padY:I

    sub-int/2addr v3, v5

    sub-int v1, v3, v1

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->shadowOffsetTriangle:[F

    aget v0, v0, v9

    goto/16 :goto_1
.end method


# virtual methods
.method public getTriangleTip(Z)Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getLeft()I

    move-result v1

    .line 197
    invoke-virtual {p0}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->getTop()I

    move-result v2

    .line 198
    if-eqz p1, :cond_0

    .line 199
    new-instance v0, Landroid/graphics/PointF;

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokeJoinDelta:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 201
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    iget v3, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->strokeJoinDelta:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public getTriangleTipPadding()F
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->padX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mCornerRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->triBaseLengthHalf:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->setCoachmarkBitmap(Landroid/graphics/Canvas;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 193
    return-void
.end method

.method public setTipDirection(Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->bUpward:Z

    .line 113
    return-void
.end method

.method public setTipPosition(II)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretX:I

    .line 108
    iput p2, p0, Lcom/adobe/premiereclip/coachmarks/CoachMarksCustomView;->caretY:I

    .line 109
    return-void
.end method
