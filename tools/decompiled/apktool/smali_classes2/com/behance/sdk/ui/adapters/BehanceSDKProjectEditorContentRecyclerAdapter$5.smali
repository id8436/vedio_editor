.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentRecyclerAdapter.java"

# interfaces
.implements Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

.field final synthetic val$module:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

.field final synthetic val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$module:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlur()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->checkEmpty(Landroid/webkit/WebView;)V

    .line 262
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5$2;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;)V

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$700(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method public onEditorLoaded()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onEmptyCheck(Z)V
    .locals 2

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5$3;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5$3;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;)V

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$700(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Ljava/lang/Runnable;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onFocus()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$600(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;->onEditTextWebViewActive(Landroid/webkit/WebView;)V

    .line 250
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;)V

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$700(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method public onKeyUp()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public onLoadComplete()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$module:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->getHtml()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$module:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$module:Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->setText(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$600(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;->onEditTextCreated(ILandroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public onSelectionChanged(Z)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onSelectionStateFetched(Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$600(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;->onSelectionStateChanged(Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;)V

    .line 289
    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;->val$viewHolder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->setHtml(Ljava/lang/String;)V

    .line 237
    return-void
.end method
