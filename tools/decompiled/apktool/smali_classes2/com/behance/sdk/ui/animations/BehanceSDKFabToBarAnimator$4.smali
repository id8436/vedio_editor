.class Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$4;
.super Ljava/lang/Object;
.source "BehanceSDKFabToBarAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

.field final synthetic val$colorAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$4;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    iput-object p2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$4;->val$colorAnimation:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$4;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$4;->val$colorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 173
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$4;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$000(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 174
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method
