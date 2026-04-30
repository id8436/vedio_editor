.class public Lcom/behance/sdk/edmodo/cropper/util/PaintUtil;
.super Ljava/lang/Object;
.source "PaintUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR_ID:Ljava/lang/String; = "#97000000"

.field private static final DEFAULT_CORNER_COLOR:I = -0x1

.field private static final DEFAULT_CORNER_THICKNESS_DP:F = 5.0f

.field private static final DEFAULT_GUIDELINE_THICKNESS_PX:F = 1.0f

.field private static final DEFAULT_LINE_THICKNESS_DP:F = 3.0f

.field private static final SEMI_TRANSPARENT:Ljava/lang/String; = "#AAFFFFFF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCornerThickness()F
    .locals 1

    .prologue
    .line 115
    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method public static getLineThickness()F
    .locals 1

    .prologue
    .line 124
    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public static newBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 83
    const-string/jumbo v1, "#97000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    return-object v0
.end method

.method public static newBorderPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    const/high16 v1, 0x40400000    # 3.0f

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 47
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 52
    const-string/jumbo v2, "#AAFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    return-object v1
.end method

.method public static newCornerPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x1

    const/high16 v1, 0x40a00000    # 5.0f

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 97
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 102
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    return-object v1
.end method

.method public static newGuidelinePaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 67
    const-string/jumbo v1, "#AAFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    return-object v0
.end method
