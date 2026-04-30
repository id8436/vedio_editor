.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorCoverFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

.field final synthetic val$coverImages:Ljava/util/List;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    iput-object p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->val$coverImages:Ljava/util/List;

    iput p3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    .line 84
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 85
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    new-instance v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->val$coverImages:Ljava/util/List;

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->val$orientation:I

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    .line 86
    invoke-static {v4}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isCoverChosen()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    :goto_0
    iget-object v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IILcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;)V

    .line 85
    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 87
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->val$coverImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDraftCover()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->onNewClick()V

    .line 90
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
