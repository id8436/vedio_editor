.class Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "BehanceSDKDrawerBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mTargetState:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;->mView:Landroid/view/View;

    .line 630
    iput p3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;->mTargetState:I

    .line 631
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$800(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$800(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;->mTargetState:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setStateInternal(I)V

    goto :goto_0
.end method
