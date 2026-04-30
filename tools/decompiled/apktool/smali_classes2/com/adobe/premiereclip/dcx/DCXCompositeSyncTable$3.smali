.class Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;
.super Ljava/lang/Object;
.source "DCXCompositeSyncTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$pos:I

.field final synthetic val$requestType:Ljava/lang/String;

.field final synthetic val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Ljava/lang/String;Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;I)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$requestType:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    iput-object p4, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    iput p5, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$requestType:Ljava/lang/String;

    const-string/jumbo v1, "ccAssetDownload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setCcAssetDownloadText(Ljava/lang/String;)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setSyncedStatusText(Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$600(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$pos:I

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;->projectStatusChanged(I)V

    .line 306
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$requestType:Ljava/lang/String;

    const-string/jumbo v1, "pullRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setDownloadStatusText(Ljava/lang/String;)V

    .line 294
    :goto_2
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$requestType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->removeRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setUploadStatusText(Ljava/lang/String;)V

    goto :goto_2

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getPullRequest()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getPushRequest()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    .line 300
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getCcAssetDownloadText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$800(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;)V

    .line 303
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setSyncedStatusText(Ljava/lang/String;)V

    goto :goto_1
.end method
