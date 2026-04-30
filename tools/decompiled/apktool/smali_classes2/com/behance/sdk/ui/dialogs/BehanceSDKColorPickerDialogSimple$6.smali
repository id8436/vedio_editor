.class Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;
.super Ljava/lang/Object;
.source "BehanceSDKColorPickerDialogSimple.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$500(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 168
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$700(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$600(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    .line 169
    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$700(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 168
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 172
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$800(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 173
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$800(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$800(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$800(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$800(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 174
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$800(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 175
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$900(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 176
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKColorPickerSquare;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x8c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 178
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    .line 170
    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$600(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple$6;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;

    .line 171
    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;->access$700(Lcom/behance/sdk/ui/dialogs/BehanceSDKColorPickerDialogSimple;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
