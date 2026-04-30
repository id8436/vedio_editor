.class public Lcom/j/a/c;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:F


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 376
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/j/a/c;->h:Z

    .line 377
    invoke-direct {p0, p1}, Lcom/j/a/c;->a(Landroid/app/Activity;)F

    move-result v0

    iput v0, p0, Lcom/j/a/c;->i:F

    .line 378
    const-string/jumbo v0, "status_bar_height"

    invoke-direct {p0, v3, v0}, Lcom/j/a/c;->a(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->c:I

    .line 379
    invoke-direct {p0, p1}, Lcom/j/a/c;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->d:I

    .line 380
    invoke-direct {p0, p1}, Lcom/j/a/c;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->f:I

    .line 381
    invoke-direct {p0, p1}, Lcom/j/a/c;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->g:I

    .line 382
    iget v0, p0, Lcom/j/a/c;->f:I

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/j/a/c;->e:Z

    .line 383
    iput-boolean p2, p0, Lcom/j/a/c;->a:Z

    .line 384
    iput-boolean p3, p0, Lcom/j/a/c;->b:Z

    .line 385
    return-void

    :cond_0
    move v0, v2

    .line 376
    goto :goto_0

    :cond_1
    move v1, v2

    .line 382
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZZLcom/j/a/b;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/j/a/c;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private a(Landroid/app/Activity;)F
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 458
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 459
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 464
    :goto_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 465
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    .line 466
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 462
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 391
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 395
    :cond_0
    return v0
.end method

.method private a(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    const-string/jumbo v1, "dimen"

    const-string/jumbo v2, "android"

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 449
    if-lez v1, :cond_0

    .line 450
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 452
    :cond_0
    return v0
.end method

.method private b(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 401
    const/4 v0, 0x0

    .line 402
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 403
    invoke-direct {p0, p1}, Lcom/j/a/c;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    iget-boolean v0, p0, Lcom/j/a/c;->h:Z

    if-eqz v0, :cond_1

    .line 406
    const-string/jumbo v0, "navigation_bar_height"

    .line 410
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/j/a/c;->a(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 413
    :cond_0
    return v0

    .line 408
    :cond_1
    const-string/jumbo v0, "navigation_bar_height_landscape"

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 419
    const/4 v0, 0x0

    .line 420
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 421
    invoke-direct {p0, p1}, Lcom/j/a/c;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    const-string/jumbo v0, "navigation_bar_width"

    invoke-direct {p0, v1, v0}, Lcom/j/a/c;->a(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 425
    :cond_0
    return v0
.end method

.method private d(Landroid/content/Context;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 431
    const-string/jumbo v3, "config_showNavigationBar"

    const-string/jumbo v4, "bool"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 432
    if-eqz v3, :cond_1

    .line 433
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 435
    const-string/jumbo v3, "1"

    invoke-static {}, Lcom/j/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    :goto_0
    return v0

    .line 437
    :cond_0
    const-string/jumbo v0, "0"

    invoke-static {}, Lcom/j/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 438
    goto :goto_0

    .line 442
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 477
    iget v0, p0, Lcom/j/a/c;->i:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/j/a/c;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/j/a/c;->c:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/j/a/c;->e:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/j/a/c;->f:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/j/a/c;->g:I

    return v0
.end method
