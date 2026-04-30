.class Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$1;
.super Ljava/lang/Object;
.source "DCXSyncStatusActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$1;->this$0:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public projectAdded(I)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$1;->this$0:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->access$000(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;->notifyItemInserted(I)V

    .line 216
    return-void
.end method

.method public projectStatusChanged(I)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$1;->this$0:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->access$000(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;->notifyItemChanged(I)V

    .line 221
    return-void
.end method

.method public updateProjectsStatus()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$1;->this$0:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->access$000(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;->notifyDataSetChanged()V

    .line 210
    return-void
.end method
