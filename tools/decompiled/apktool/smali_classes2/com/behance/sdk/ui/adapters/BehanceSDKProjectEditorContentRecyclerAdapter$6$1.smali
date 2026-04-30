.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentRecyclerAdapter.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;

.field final synthetic val$popup:Landroid/support/v7/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;Landroid/support/v7/widget/PopupMenu;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$1;->val$popup:Landroid/support/v7/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 314
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$1;->val$popup:Landroid/support/v7/widget/PopupMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/PopupMenu;->setOnDismissListener(Landroid/support/v7/widget/PopupMenu$OnDismissListener;)V

    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/behance/sdk/R$id;->bsdk_menu_editor_edit:I

    if-ne v1, v2, :cond_0

    .line 316
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->focus(Landroid/webkit/WebView;)V

    .line 317
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->moveCursorToEnd(Landroid/webkit/WebView;)V

    .line 323
    :goto_0
    return v0

    .line 319
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/behance/sdk/R$id;->bsdk_menu_editor_delete:I

    if-ne v1, v2, :cond_1

    .line 320
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->deleteModule(I)V

    goto :goto_0

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
