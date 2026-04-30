.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

.field final synthetic val$moduleEmbed:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

.field final synthetic val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;->val$moduleEmbed:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;->val$moduleEmbed:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->toggleFullBleed()V

    .line 395
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;

    iget-object v1, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleFullBleed:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;->val$moduleEmbed:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->isFullBleed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_contract:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$900(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;->val$moduleEmbed:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 398
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->notifyItemChanged(I)V

    .line 399
    return-void

    .line 395
    :cond_0
    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_expand:I

    goto :goto_0
.end method
