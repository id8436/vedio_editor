.class Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4$1;
.super Ljava/lang/Object;
.source "LooksListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 540
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;

    iget-object v0, v0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;

    iget-object v1, v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;->val$viewHolder:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4$1;->this$2:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;

    iget v2, v2, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$4;->val$position:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->access$800(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V

    .line 541
    return-void
.end method
