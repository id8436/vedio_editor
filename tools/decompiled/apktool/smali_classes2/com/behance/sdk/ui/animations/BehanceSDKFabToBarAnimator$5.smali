.class Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$5;
.super Ljava/lang/Object;
.source "BehanceSDKFabToBarAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$5;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$5;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$302(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;Z)Z

    .line 199
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method
