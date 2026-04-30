.class Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$3;
.super Ljava/lang/Object;
.source "BehanceSDKFabToBarAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$3;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator$3;->this$0:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->access$000(Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 155
    return-void
.end method
