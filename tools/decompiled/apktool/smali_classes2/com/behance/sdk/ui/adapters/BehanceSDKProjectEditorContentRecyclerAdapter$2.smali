.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

.field final synthetic val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 163
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    .line 164
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getWidth()I

    move-result v1

    const/16 v2, 0x578

    if-le v1, v2, :cond_2

    .line 165
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->toggleFullBleed()V

    .line 166
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v2, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageFullBleed:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isFullBleed()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_contract:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    new-instance v2, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v3, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)I

    move-result v4

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isFullBleed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    sub-int v1, v4, v1

    invoke-direct {v2, v3, v1}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;-><init>(Landroid/view/View;I)V

    .line 168
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->setDuration(J)V

    .line 169
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;

    invoke-direct {v1, p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;)V

    invoke-virtual {v2, v1}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 190
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 194
    :goto_2
    return-void

    .line 166
    :cond_0
    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_expand:I

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$400(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$500(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_full_bleed_image_unsupported_message:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
