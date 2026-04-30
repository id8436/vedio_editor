.class Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;
.super Ljava/lang/Object;
.source "DCXCompositeSyncTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

.field final synthetic val$isInitial:Z

.field final synthetic val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;Z)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    iput-boolean p3, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;->val$isInitial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$100(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;->val$isInitial:Z

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$600(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$100(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;->projectAdded(I)V

    .line 375
    :cond_0
    return-void
.end method
