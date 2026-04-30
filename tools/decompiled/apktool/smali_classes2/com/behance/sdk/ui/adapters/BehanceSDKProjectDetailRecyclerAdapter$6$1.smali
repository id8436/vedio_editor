.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectDetailRecyclerAdapter.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 459
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->val$commentDTO:Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;->onDeleteCommentRequested(Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;)V

    .line 461
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->val$commentDTO:Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 462
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 463
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$400(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 464
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$500(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->notifyItemChanged(I)V

    .line 467
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$400(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$402(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;I)I

    .line 468
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$500(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->notifyItemChanged(I)V

    .line 470
    :cond_0
    return v3

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->access$500(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->notifyItemRemoved(I)V

    goto :goto_0
.end method
