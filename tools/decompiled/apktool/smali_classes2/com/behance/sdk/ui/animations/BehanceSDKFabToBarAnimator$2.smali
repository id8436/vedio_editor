.class Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;
.super Ljava/lang/Object;
.source "BehanceSDKFabToBarAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field b:Z

.field final synthetic this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)V
    .locals 1

    .prologue
    .line 86
    iput-object p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->b:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 91
    iget-boolean v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$000(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 92
    iput-boolean v9, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->b:Z

    .line 93
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    .line 94
    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v2}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v3}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v4, v3

    iget-object v3, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v3}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 93
    invoke-static {v0, v1, v2, v8, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-static {}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$200()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 99
    new-instance v1, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2$1;-><init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v2}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$000(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v3}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$000(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v3}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 121
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 122
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$200()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fe66666    # 1.8f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 123
    iget-object v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$200()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 124
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 125
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 128
    :cond_0
    return-void
.end method
