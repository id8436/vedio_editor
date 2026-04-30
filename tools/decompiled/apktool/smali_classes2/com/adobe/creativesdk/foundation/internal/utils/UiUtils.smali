.class public Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustLayout(ZLandroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    const/high16 v1, 0x8000000

    .line 100
    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method private static getHasTranslucentNav(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->getSoftButtonsBarSizePort(Landroid/app/Activity;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->isTabletDevice(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNavBarHeightInternal(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 131
    const/4 v1, 0x0

    .line 132
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 133
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v2

    .line 135
    if-eqz v0, :cond_0

    if-nez v2, :cond_4

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 141
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "navigation_bar_height"

    :goto_0
    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 147
    :goto_1
    if-lez v0, :cond_4

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 151
    :goto_2
    return v0

    .line 142
    :cond_1
    const-string/jumbo v0, "navigation_bar_height_landscape"

    goto :goto_0

    .line 144
    :cond_2
    if-ne v0, v4, :cond_3

    const-string/jumbo v0, "navigation_bar_height"

    :goto_3
    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "navigation_bar_width"

    goto :goto_3

    :cond_4
    move v0, v1

    .line 151
    goto :goto_2
.end method

.method private static getSoftButtonsBarSizePort(Landroid/app/Activity;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 112
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 117
    if-le v1, v2, :cond_0

    .line 118
    sub-int v0, v1, v2

    .line 122
    :cond_0
    return v0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/j/a/a;

    invoke-direct {v0, p0}, Lcom/j/a/a;-><init>(Landroid/app/Activity;)V

    .line 40
    invoke-virtual {v0}, Lcom/j/a/a;->a()Lcom/j/a/c;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/j/a/c;->b()I

    move-result v0

    return v0
.end method

.method public static handleTranslucency(Landroid/app/Activity;ILandroid/view/View;Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/16 v3, 0x18

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-static {p0, p1, p2, p4}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->setStatusBarHeight(Landroid/app/Activity;ILandroid/view/View;Z)V

    .line 73
    if-eqz p4, :cond_0

    .line 75
    invoke-static {v1, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->adjustLayout(ZLandroid/app/Activity;Landroid/view/View;)V

    .line 95
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 96
    return-void

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->getHasTranslucentNav(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {v1, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->adjustLayout(ZLandroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v2, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->adjustLayout(ZLandroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 88
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-static {v2, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->adjustLayout(ZLandroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {v1, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->adjustLayout(ZLandroid/app/Activity;Landroid/view/View;)V

    goto :goto_0
.end method

.method private static isTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTabletDevice(Landroid/app/Activity;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    move v3, v0

    .line 26
    :goto_0
    if-eqz v3, :cond_2

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 28
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    .line 29
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v5, v2

    .line 30
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 31
    const/high16 v4, 0x44160000    # 600.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    move v2, v0

    .line 35
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    :goto_2
    return v0

    :cond_0
    move v3, v1

    .line 24
    goto :goto_0

    :cond_1
    move v0, v1

    .line 35
    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public static setStatusBarHeight(Landroid/app/Activity;ILandroid/view/View;Z)V
    .locals 3

    .prologue
    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 46
    if-eqz p3, :cond_0

    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->getHasTranslucentNav(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 61
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
