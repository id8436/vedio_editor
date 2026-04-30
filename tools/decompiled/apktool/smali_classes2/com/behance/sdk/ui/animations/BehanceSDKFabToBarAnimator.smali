.class public Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;
.super Ljava/lang/Object;
.source "BehanceSDKFabToBarAnimator.java"


# static fields
.field private static final animDurationOne:I

.field private static final animDurationThree:I

.field private static final animDurationTwo:I

.field private static f:I


# instance fields
.field private bar:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private fab:Landroid/support/design/widget/FloatingActionButton;

.field private open:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->f:I

    .line 25
    sget v0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->f:I

    mul-int/lit16 v0, v0, 0x96

    sput v0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationOne:I

    sget v0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->f:I

    mul-int/lit16 v0, v0, 0xe1

    sput v0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationTwo:I

    sget v0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->f:I

    mul-int/lit16 v0, v0, 0x12c

    sput v0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationThree:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->open:Z

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->fab:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationThree:I

    return v0
.end method

.method static synthetic access$302(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->open:Z

    return p1
.end method

.method private animateBarToFab()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 135
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$color;->bsdk_behance_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$color;->bsdk_card_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 149
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v9

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 150
    sget v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationOne:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    new-instance v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$3;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$3;-><init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    iget-object v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget-object v6, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 157
    invoke-static {v1, v2, v3, v4, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 160
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    iget-object v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 162
    sget v2, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationThree:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 163
    new-instance v2, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$4;

    invoke-direct {v2, p0, v0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$4;-><init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 187
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationThree:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 188
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationThree:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 189
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationTwo:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationTwo:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 190
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationTwo:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationTwo:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$5;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$5;-><init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 212
    :cond_0
    return-void
.end method

.method private animateFabToBar()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 63
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 65
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$color;->bsdk_behance_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$color;->bsdk_card_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 76
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 77
    sget v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationOne:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    new-instance v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$1;-><init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_fab_to_bar_anim_y_translation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v2, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationTwo:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 86
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget v2, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animDurationTwo:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;-><init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 130
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 131
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-direct {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;-><init>()V

    .line 33
    invoke-virtual {v0, p2}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->setBar(Landroid/view/View;)V

    .line 34
    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->setFab(Landroid/support/design/widget/FloatingActionButton;)V

    .line 35
    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->setContext(Landroid/content/Context;)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public barToFab()V
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->open:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animateBarToFab()V

    .line 47
    :cond_0
    return-void
.end method

.method public fabToBar()V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->open:Z

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->animateFabToBar()V

    .line 42
    :cond_0
    return-void
.end method

.method public setBar(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->bar:Landroid/view/View;

    .line 59
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public setFab(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 55
    return-void
.end method
