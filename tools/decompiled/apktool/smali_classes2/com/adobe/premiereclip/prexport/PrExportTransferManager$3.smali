.class Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;
.super Ljava/lang/Object;
.source "PrExportTransferManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

.field final synthetic val$adobeStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

.field final synthetic val$destResource:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

.field final synthetic val$srcResource:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

.field final synthetic val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Lcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$adobeStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p4, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$srcResource:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    iput-object p5, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$destResource:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    const-string/jumbo v0, "PrExportTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media server-to-server copy cancelled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getSourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 278
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$400(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Z)V

    .line 279
    return-void
.end method

.method public onCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 283
    const-string/jumbo v0, "PrExportTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media server-to-server copy success for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getSourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$400(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Z)V

    .line 286
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->onCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V

    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 290
    const-string/jumbo v0, "PrExportTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media server-to-server copy error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x199

    if-ne v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$adobeStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$srcResource:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$destResource:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    new-instance v3, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;

    invoke-direct {v3, p0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;-><init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->copyFile(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 326
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0, v4}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$400(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 331
    const-string/jumbo v0, "PrExportTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media server-to-server copy progess is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method
