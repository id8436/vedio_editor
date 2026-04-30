.class Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;
.super Ljava/lang/Object;
.source "LooksListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

.field final synthetic val$look:Lcom/adobe/premiereclip/looks/BaseLook;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;->val$viewHolder:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    iput p3, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;->val$position:I

    iput-object p4, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;->val$look:Lcom/adobe/premiereclip/looks/BaseLook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;->val$viewHolder:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;

    iget v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;->val$position:I

    iget-object v3, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$2;->val$look:Lcom/adobe/premiereclip/looks/BaseLook;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->access$800(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;ILcom/adobe/premiereclip/looks/BaseLook;)V

    .line 510
    return-void
.end method
