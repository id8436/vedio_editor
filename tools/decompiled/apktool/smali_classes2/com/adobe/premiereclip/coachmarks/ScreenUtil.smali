.class public Lcom/adobe/premiereclip/coachmarks/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# static fields
.field private static density:F

.field private static height:[F

.field private static resource:Landroid/content/res/Resources;

.field private static width:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 27
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->density:F

    .line 30
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->width:[F

    .line 31
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->height:[F

    .line 33
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->resource:Landroid/content/res/Resources;

    return-void

    .line 30
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 31
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeightInPx(I)F
    .locals 2

    .prologue
    .line 52
    const/high16 v0, -0x40800000    # -1.0f

    sget-object v1, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->height:[F

    aget v1, v1, p0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->resource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->height:[F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    aput v0, v1, p0

    .line 56
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->height:[F

    aget v0, v0, p0

    return v0
.end method

.method public static getScreenDensity()F
    .locals 2

    .prologue
    .line 36
    const/high16 v0, -0x40800000    # -1.0f

    sget v1, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->resource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 38
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->density:F

    .line 40
    :cond_0
    sget v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->density:F

    return v0
.end method

.method public static getWidthInPx(I)F
    .locals 2

    .prologue
    .line 44
    const/high16 v0, -0x40800000    # -1.0f

    sget-object v1, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->width:[F

    aget v1, v1, p0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->resource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->width:[F

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    aput v0, v1, p0

    .line 48
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/coachmarks/ScreenUtil;->width:[F

    aget v0, v0, p0

    return v0
.end method
