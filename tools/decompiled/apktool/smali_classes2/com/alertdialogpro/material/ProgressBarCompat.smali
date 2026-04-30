.class public Lcom/alertdialogpro/material/ProgressBarCompat;
.super Landroid/widget/ProgressBar;
.source "ProgressBarCompat.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alertdialogpro/material/ProgressBarCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 18
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/alertdialogpro/material/ProgressBarCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alertdialogpro/material/ProgressBarCompat;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget v0, Lcom/alertdialogpro/material/b;->colorControlActivated:I

    invoke-direct {p0, p1, v0}, Lcom/alertdialogpro/material/ProgressBarCompat;->a(Landroid/content/Context;I)I

    move-result v0

    .line 26
    const/4 v1, 0x1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/alertdialogpro/material/ProgressBarCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 32
    if-eqz v0, :cond_0

    .line 33
    new-instance v2, Lcom/alertdialogpro/material/a/a;

    invoke-direct {v2, v0, v1}, Lcom/alertdialogpro/material/a/a;-><init>(IF)V

    invoke-virtual {p0, v2}, Lcom/alertdialogpro/material/ProgressBarCompat;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 39
    if-nez p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_2

    .line 47
    iget v0, v1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 48
    :cond_2
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method
