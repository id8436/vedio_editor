.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorCoverStripRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

.field final synthetic val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;

.field final synthetic val$image:Lcom/behance/sdk/dto/BehanceSDKImageDTO;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;Lcom/behance/sdk/dto/BehanceSDKImageDTO;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;

    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->val$image:Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 61
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->access$002(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;I)I

    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;

    move-result-object v1

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-static {v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->val$image:Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->isLocal()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;->onCoverClick(Ljava/lang/String;Z)V

    .line 63
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 65
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 68
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;->val$holder:Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverOverlay:Landroid/view/View;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->access$302(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 70
    return-void
.end method
