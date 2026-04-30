.class Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;
.super Ljava/lang/Object;
.source "DCXCompositeSyncTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

.field final synthetic val$compositeId:Ljava/lang/String;

.field final synthetic val$isInitial:Z

.field final synthetic val$pos:I

.field final synthetic val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field final synthetic val$requestType:Ljava/lang/String;

.field final synthetic val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Ljava/lang/String;Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;ZI)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$requestType:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    iput-object p4, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$compositeId:Ljava/lang/String;

    iput-object p5, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iput-boolean p6, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$isInitial:Z

    iput p7, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$requestType:Ljava/lang/String;

    const-string/jumbo v1, "ccAssetDownload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$compositeId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$500(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setCcAssetDownloadText(Ljava/lang/String;)V

    .line 342
    :goto_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$isInitial:Z

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$600(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$pos:I

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;->projectStatusChanged(I)V

    .line 345
    :cond_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$requestType:Ljava/lang/String;

    const-string/jumbo v1, "pullRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$300(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setDownloadStatusText(Ljava/lang/String;)V

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$requestType:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->addRequest(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    goto :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$300(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setUploadStatusText(Ljava/lang/String;)V

    goto :goto_1
.end method
