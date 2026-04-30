.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;
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
    .line 151
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageToolsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageToolsContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Landroid/view/View;Landroid/view/View;)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageToolsContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;->val$imageViewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v3, v3, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method
