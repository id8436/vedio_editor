.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaToneCurveFilter.java"


# static fields
.field public static final TONE_CURVE_FRAGMENT_SHADER:Ljava/lang/String; = " varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }"


# instance fields
.field private mBlueControlPoints:[Landroid/graphics/PointF;

.field private mBlueCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mGreenControlPoints:[Landroid/graphics/PointF;

.field private mGreenCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRedControlPoints:[Landroid/graphics/PointF;

.field private mRedCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRgbCompositeControlPoints:[Landroid/graphics/PointF;

.field private mRgbCompositeCurve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mToneCurveTexture:[I

.field private mToneCurveTextureUniformLocation:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 63
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, " varying highp vec2 textureCoordinate;\n uniform sampler2D inputImageTexture;\n uniform sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-array v0, v6, [I

    const/4 v1, -0x1

    aput v1, v0, v5

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mToneCurveTexture:[I

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    .line 66
    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 67
    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    .line 68
    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    .line 69
    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;)[I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mToneCurveTexture:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRedCurve:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mGreenCurve:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mBlueCurve:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRgbCompositeCurve:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createSecondDerivative([Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    array-length v3, p1

    .line 316
    const/4 v0, 0x1

    if-gt v3, v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    .line 320
    :cond_0
    const/4 v0, 0x3

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 321
    new-array v4, v3, [D

    .line 322
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v1, v2

    .line 324
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v1, v2

    .line 325
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v1, v2

    .line 327
    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v2, v3, -0x1

    if-ge v1, v2, :cond_1

    .line 328
    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    .line 329
    aget-object v5, p1, v1

    .line 330
    add-int/lit8 v6, v1, 0x1

    aget-object v6, p1, v6

    .line 332
    aget-object v7, v0, v1

    const/4 v8, 0x0

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-double v10, v9

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    div-double/2addr v10, v12

    aput-wide v10, v7, v8

    .line 333
    aget-object v7, v0, v1

    const/4 v8, 0x1

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-double v10, v9

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v12

    aput-wide v10, v7, v8

    .line 334
    aget-object v7, v0, v1

    const/4 v8, 0x2

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v10, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-double v10, v9

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    div-double/2addr v10, v12

    aput-wide v10, v7, v8

    .line 335
    iget v7, v6, Landroid/graphics/Point;->y:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    int-to-double v8, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    div-double v6, v8, v6

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v2, v5, v2

    int-to-double v10, v2

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v4, v1

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    :cond_1
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v1

    .line 340
    add-int/lit8 v1, v3, -0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v1

    .line 342
    add-int/lit8 v1, v3, -0x1

    aget-object v1, v0, v1

    const/4 v2, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v1, v2

    .line 344
    add-int/lit8 v1, v3, -0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v1, v2

    .line 345
    add-int/lit8 v1, v3, -0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v1, v2

    .line 348
    const/4 v1, 0x1

    :goto_2
    if-ge v1, v3, :cond_2

    .line 349
    aget-object v2, v0, v1

    const/4 v5, 0x0

    aget-wide v6, v2, v5

    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    const/4 v5, 0x1

    aget-wide v8, v2, v5

    div-double/2addr v6, v8

    .line 350
    aget-object v2, v0, v1

    const/4 v5, 0x1

    aget-wide v8, v2, v5

    add-int/lit8 v10, v1, -0x1

    aget-object v10, v0, v10

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    aput-wide v8, v2, v5

    .line 351
    aget-object v2, v0, v1

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v2, v5

    .line 352
    aget-wide v8, v4, v1

    add-int/lit8 v2, v1, -0x1

    aget-wide v10, v4, v2

    mul-double/2addr v6, v10

    sub-double v6, v8, v6

    aput-wide v6, v4, v1

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 355
    :cond_2
    add-int/lit8 v1, v3, -0x2

    :goto_3
    if-ltz v1, :cond_3

    .line 356
    aget-object v2, v0, v1

    const/4 v5, 0x2

    aget-wide v6, v2, v5

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    const/4 v5, 0x1

    aget-wide v8, v2, v5

    div-double/2addr v6, v8

    .line 357
    aget-object v2, v0, v1

    const/4 v5, 0x1

    aget-wide v8, v2, v5

    add-int/lit8 v10, v1, 0x1

    aget-object v10, v0, v10

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    aput-wide v8, v2, v5

    .line 358
    aget-object v2, v0, v1

    const/4 v5, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v2, v5

    .line 359
    aget-wide v8, v4, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v10, v4, v2

    mul-double/2addr v6, v10

    sub-double v6, v8, v6

    aput-wide v6, v4, v1

    .line 355
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 362
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 363
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    aget-wide v6, v4, v2

    aget-object v5, v0, v2

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 365
    goto/16 :goto_0
.end method

.method private createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/16 v7, 0xff

    const/4 v2, 0x0

    .line 203
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 204
    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    .line 208
    :cond_1
    invoke-virtual {p1}, [Landroid/graphics/PointF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PointF;

    .line 209
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter$2;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 223
    array-length v1, v0

    new-array v3, v1, [Landroid/graphics/Point;

    move v1, v2

    .line 224
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 225
    aget-object v4, v0, v1

    .line 226
    new-instance v5, Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-direct {v5, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v1

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_2
    invoke-direct {p0, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->createSplineCurve2([Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object v1

    .line 233
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 234
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-lez v3, :cond_3

    .line 235
    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_2
    if-ltz v0, :cond_3

    .line 236
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 241
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 242
    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ge v2, v7, :cond_4

    .line 243
    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    if-gt v0, v7, :cond_4

    .line 244
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 249
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 251
    new-instance v4, Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-direct {v4, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 253
    iget v1, v4, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v1, v4, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v5

    int-to-double v8, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 255
    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v4, v0, :cond_6

    .line 256
    neg-float v0, v1

    .line 259
    :goto_5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object v0, v2

    .line 262
    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_5
.end method

.method private createSplineCurve2([Landroid/graphics/Point;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct/range {p0 .. p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->createSecondDerivative([Landroid/graphics/Point;)Ljava/util/ArrayList;

    move-result-object v4

    .line 270
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 271
    const/4 v2, 0x1

    if-ge v7, v2, :cond_0

    .line 272
    const/4 v2, 0x0

    .line 311
    :goto_0
    return-object v2

    .line 274
    :cond_0
    new-array v8, v7, [D

    .line 277
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_1

    .line 278
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v8, v3

    .line 277
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 282
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    add-int/lit8 v2, v7, 0x1

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    const/4 v2, 0x0

    move v6, v2

    :goto_2
    add-int/lit8 v2, v7, -0x1

    if-ge v6, v2, :cond_5

    .line 285
    aget-object v9, p1, v6

    .line 286
    add-int/lit8 v2, v6, 0x1

    aget-object v10, p1, v2

    .line 288
    iget v2, v9, Landroid/graphics/Point;->x:I

    :goto_3
    iget v4, v10, Landroid/graphics/Point;->x:I

    if-ge v2, v4, :cond_4

    .line 289
    iget v4, v9, Landroid/graphics/Point;->x:I

    sub-int v4, v2, v4

    int-to-double v4, v4

    iget v11, v10, Landroid/graphics/Point;->x:I

    iget v12, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    int-to-double v12, v11

    div-double/2addr v4, v12

    .line 291
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v4

    .line 293
    iget v11, v10, Landroid/graphics/Point;->x:I

    iget v14, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v14

    int-to-double v14, v11

    .line 295
    iget v11, v9, Landroid/graphics/Point;->y:I

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    iget v11, v10, Landroid/graphics/Point;->y:I

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    add-double v16, v16, v18

    mul-double/2addr v14, v14

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    div-double v14, v14, v18

    mul-double v18, v12, v12

    mul-double v18, v18, v12

    sub-double v12, v18, v12

    aget-wide v18, v8, v6

    mul-double v12, v12, v18

    mul-double v18, v4, v4

    mul-double v18, v18, v4

    sub-double v4, v18, v4

    add-int/lit8 v11, v6, 0x1

    aget-wide v18, v8, v11

    mul-double v4, v4, v18

    add-double/2addr v4, v12

    mul-double/2addr v4, v14

    add-double v4, v4, v16

    .line 297
    const-wide v12, 0x406fe00000000000L    # 255.0

    cmpl-double v11, v4, v12

    if-lez v11, :cond_3

    .line 298
    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 303
    :cond_2
    :goto_4
    new-instance v11, Landroid/graphics/Point;

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v11, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 299
    :cond_3
    const-wide/16 v12, 0x0

    cmpg-double v11, v4, v12

    if-gez v11, :cond_2

    .line 300
    const-wide/16 v4, 0x0

    goto :goto_4

    .line 284
    :cond_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    .line 308
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_6

    .line 309
    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p1, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v2, v3

    .line 311
    goto/16 :goto_0
.end method

.method private readShort(Ljava/io/InputStream;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private updateToneCurveTexture()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter$1;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method


# virtual methods
.method protected onDrawArraysPre()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mToneCurveTexture:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 97
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 98
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mToneCurveTexture:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 99
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mToneCurveTextureUniformLocation:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onInit()V
    .locals 6

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 74
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 75
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "toneCurveTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mToneCurveTextureUniformLocation:I

    .line 76
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 77
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mToneCurveTexture:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mToneCurveTexture:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 79
    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 80
    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 81
    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 82
    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 83
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 88
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->setRgbCompositeControlPoints([Landroid/graphics/PointF;)V

    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->setRedControlPoints([Landroid/graphics/PointF;)V

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->setGreenControlPoints([Landroid/graphics/PointF;)V

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->setBlueControlPoints([Landroid/graphics/PointF;)V

    .line 92
    return-void
.end method

.method public setBlueControlPoints([Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    .line 165
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mBlueCurve:Ljava/util/ArrayList;

    .line 166
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->updateToneCurveTexture()V

    .line 167
    return-void
.end method

.method public setFromCurveFileInputStream(Ljava/io/InputStream;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 105
    :try_start_0
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    .line 106
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v3

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    const v5, 0x3b808081

    move v2, v1

    .line 111
    :goto_0
    if-ge v2, v3, :cond_1

    .line 113
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v6

    .line 115
    new-array v7, v6, [Landroid/graphics/PointF;

    move v0, v1

    .line 121
    :goto_1
    if-ge v0, v6, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v8

    .line 123
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->readShort(Ljava/io/InputStream;)S

    move-result v9

    .line 125
    new-instance v10, Landroid/graphics/PointF;

    int-to-float v9, v9

    mul-float/2addr v9, v5

    int-to-float v8, v8

    mul-float/2addr v8, v5

    invoke-direct {v10, v9, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v10, v7, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_0
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 133
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    .line 134
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    .line 135
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mBlueControlPoints:[Landroid/graphics/PointF;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_2
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public setGreenControlPoints([Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 158
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    .line 159
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mGreenControlPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mGreenCurve:Ljava/util/ArrayList;

    .line 160
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->updateToneCurveTexture()V

    .line 161
    return-void
.end method

.method public setRedControlPoints([Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 152
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    .line 153
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRedControlPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRedCurve:Ljava/util/ArrayList;

    .line 154
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->updateToneCurveTexture()V

    .line 155
    return-void
.end method

.method public setRgbCompositeControlPoints([Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 146
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    .line 147
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRgbCompositeControlPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->createSplineCurve([Landroid/graphics/PointF;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->mRgbCompositeCurve:Ljava/util/ArrayList;

    .line 148
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;->updateToneCurveTexture()V

    .line 149
    return-void
.end method
