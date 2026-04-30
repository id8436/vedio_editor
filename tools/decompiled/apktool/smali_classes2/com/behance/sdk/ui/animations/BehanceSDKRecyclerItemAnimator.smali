.class public Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;
.super Ljava/lang/Object;
.source "BehanceSDKRecyclerItemAnimator.java"


# instance fields
.field private beginSlideAnimPos:I

.field private columns:I

.field private context:Landroid/content/Context;

.field private lastPos:I

.field private slideDist:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->lastPos:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->beginSlideAnimPos:I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_recycler_slide_up_anim_dist:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->getInstance(Landroid/content/Context;II)Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;II)Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;

    invoke-direct {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;-><init>()V

    .line 22
    iput-object p0, v0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->context:Landroid/content/Context;

    .line 23
    iput p1, v0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->columns:I

    .line 24
    iput p2, v0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->slideDist:I

    .line 25
    return-object v0
.end method

.method private setStartSlidePos(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->beginSlideAnimPos:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->beginSlideAnimPos:I

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;IZ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->columns:I

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->setStartSlidePos(Landroid/view/View;I)V

    .line 31
    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->lastPos:I

    if-le p2, v0, :cond_0

    .line 32
    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->beginSlideAnimPos:I

    if-lt p2, v0, :cond_1

    .line 33
    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->slideDist:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$integer;->bsdk_recycler_slide_up_anim_dur:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 39
    :goto_0
    if-nez p3, :cond_0

    .line 40
    iput p2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->lastPos:I

    .line 42
    :cond_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$integer;->bsdk_recycler_slide_up_anim_dur:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
