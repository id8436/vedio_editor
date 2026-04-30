.class public Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;
.super Ljava/lang/Object;
.source "BehanceSDKColumnCountUtil.java"


# static fields
.field private static final phoneProjectActivityColumnWidth:D = 1.5

.field private static final tabletProjectActivityColumnWidth:D = 1.75


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityColumnCount(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_big_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 29
    const-wide/high16 v2, 0x3ffc000000000000L    # 1.75

    invoke-static {v0, v2, v3}, Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;->getColumnCount(Landroid/util/DisplayMetrics;D)I

    move-result v0

    .line 32
    :goto_0
    return v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 32
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v2, v3}, Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;->getColumnCount(Landroid/util/DisplayMetrics;D)I

    move-result v0

    goto :goto_0
.end method

.method private static getColumnCount(Landroid/util/DisplayMetrics;D)I
    .locals 5

    .prologue
    .line 41
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 42
    int-to-double v0, v0

    iget v2, p0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    .line 43
    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getDiscoverProjectColumnCount(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_big_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 19
    const-wide/high16 v2, 0x3ffc000000000000L    # 1.75

    invoke-static {v0, v2, v3}, Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;->getColumnCount(Landroid/util/DisplayMetrics;D)I

    move-result v0

    .line 22
    :goto_0
    return v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 22
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v2, v3}, Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;->getColumnCount(Landroid/util/DisplayMetrics;D)I

    move-result v0

    goto :goto_0
.end method

.method public static getImagePickerColumnCount(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_big_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;->getColumnCount(Landroid/util/DisplayMetrics;D)I

    move-result v0

    return v0

    :cond_0
    const-wide v0, 0x3fe4cccccccccccdL    # 0.65

    goto :goto_0
.end method
