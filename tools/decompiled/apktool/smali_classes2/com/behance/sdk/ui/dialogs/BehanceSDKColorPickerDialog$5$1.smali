.class Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5$1;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 211
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;

    iget-object v0, v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$900(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 212
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;

    iget-object v0, v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$900(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;

    iget-object v1, v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$900(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;

    iget-object v2, v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$900(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 213
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;

    iget-object v0, v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$900(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 214
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;

    iget-object v0, v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$900(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5$1;->this$1:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;

    iget-object v1, v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog$5;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;->access$900(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 215
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method
