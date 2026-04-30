.class Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2$1;
.super Ljava/lang/Object;
.source "BehanceSDKFabToBarAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2$1;->this$1:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2$1;->this$1:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;

    iget-object v0, v0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$2;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$302(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;Z)Z

    .line 108
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
