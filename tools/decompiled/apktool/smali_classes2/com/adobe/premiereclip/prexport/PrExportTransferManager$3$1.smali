.class Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;
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
.field final synthetic this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    const-string/jumbo v0, "PrExportTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media server-to-server copy cancelled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    iget-object v2, v2, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getSourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 297
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$400(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Z)V

    .line 298
    return-void
.end method

.method public onCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 302
    const-string/jumbo v0, "PrExportTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media server-to-server copy success for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    iget-object v2, v2, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getSourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadProgress()V

    .line 304
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 305
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$400(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Z)V

    .line 306
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 292
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->onCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V

    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 310
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

    .line 311
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 312
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$400(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Z)V

    .line 313
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 292
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 317
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

    .line 319
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadProgress()V

    .line 320
    return-void
.end method
