.class abstract Lcom/e/a/a/a/b/a;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BaseDraggableItemDecorator.java"


# instance fields
.field protected a:Landroid/support/v7/widget/RecyclerView;

.field protected b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 32
    const/16 v0, 0xc8

    iput v0, p0, Lcom/e/a/a/a/b/a;->c:I

    .line 40
    iput-object p1, p0, Lcom/e/a/a/a/b/a;->a:Landroid/support/v7/widget/RecyclerView;

    .line 41
    iput-object p2, p0, Lcom/e/a/a/a/b/a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 43
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 44
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/e/a/a/a/b/a;->d:I

    .line 45
    return-void
.end method

.method protected static a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FF)V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 111
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 112
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 113
    return-void
.end method

.method private static a()Z
    .locals 2

    .prologue
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/e/a/a/a/b/a;->c:I

    .line 49
    return-void
.end method

.method protected a(Landroid/view/View;Z)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 56
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    float-to-int v3, v0

    .line 57
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    float-to-int v4, v0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    .line 60
    if-lez v0, :cond_0

    int-to-float v2, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move v2, v0

    .line 61
    :goto_0
    if-lez v5, :cond_1

    int-to-float v0, v4

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 62
    :goto_1
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v6, v2

    .line 63
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v6, v0

    .line 64
    iget v5, p0, Lcom/e/a/a/a/b/a;->c:I

    int-to-float v5, v5

    mul-float/2addr v2, v2

    sub-float v2, v6, v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v7

    float-to-int v2, v2

    .line 65
    iget v5, p0, Lcom/e/a/a/a/b/a;->c:I

    int-to-float v5, v5

    mul-float/2addr v0, v0

    sub-float v0, v6, v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v7

    float-to-int v0, v0

    .line 66
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 67
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 69
    invoke-static {}, Lcom/e/a/a/a/b/a;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    const/16 v3, 0x14

    if-le v0, v3, :cond_2

    iget v3, p0, Lcom/e/a/a/a/b/a;->d:I

    if-le v2, v3, :cond_2

    .line 72
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 74
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 75
    iget-object v0, p0, Lcom/e/a/a/a/b/a;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 76
    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 77
    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 78
    new-instance v0, Lcom/e/a/a/a/b/b;

    invoke-direct {v0, p0, v2}, Lcom/e/a/a/a/b/b;-><init>(Lcom/e/a/a/a/b/a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 99
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 104
    :goto_2
    return-void

    :cond_0
    move v2, v1

    .line 60
    goto :goto_0

    :cond_1
    move v0, v1

    .line 61
    goto :goto_1

    .line 101
    :cond_2
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 102
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/e/a/a/a/b/a;->e:Landroid/view/animation/Interpolator;

    .line 53
    return-void
.end method
