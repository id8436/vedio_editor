.class Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;
.super Ljava/lang/Object;
.source "LooksListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

.field final synthetic val$requestResult:Lcom/adobe/premiereclip/looks/CandyLook;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;Lcom/adobe/premiereclip/looks/CandyLook;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

    iput-object p2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->val$requestResult:Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 525
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

    iget-object v1, v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->val$viewHolder:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

    iget v2, v2, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->val$position:I

    iget-object v3, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->val$requestResult:Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->access$800(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V

    .line 526
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->val$requestResult:Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/CandyLook;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

    iget-object v1, v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$1000(Lcom/adobe/premiereclip/library/LooksListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

    iget v0, v0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->val$position:I

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

    iget-object v1, v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$1100(Lcom/adobe/premiereclip/library/LooksListActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;

    iget v1, v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$3;->val$position:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->setSelectedPosition(I)V

    .line 529
    :cond_0
    return-void
.end method
