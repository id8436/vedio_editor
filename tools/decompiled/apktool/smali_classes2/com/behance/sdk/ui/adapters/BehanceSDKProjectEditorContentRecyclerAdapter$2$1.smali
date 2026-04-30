.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentRecyclerAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;

.field final synthetic val$moduleImage:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;->val$moduleImage:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;->val$moduleImage:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isFullBleed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 182
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 183
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$500(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_module_reg_padding_outer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 174
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 175
    return-void
.end method
