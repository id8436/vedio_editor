.class Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;
.super Ljava/lang/Object;
.source "PrExportTransferManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageResourceRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

.field final synthetic val$component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

.field final synthetic val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Lcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->val$component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V
    .locals 4

    .prologue
    .line 113
    const-string/jumbo v0, "PrExportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "itemexistsatdest - got item path and md5 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getMd5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string/jumbo v0, "PrExportManager"

    const-string/jumbo v1, "file already exists at CC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->val$component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onItemExistsAtDestination(ZLcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->val$component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onItemExistsAtDestination(ZLcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->printStackTrace()V

    .line 125
    const-string/jumbo v0, "PrExportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "itemexistsatdestination - error at getheaderinfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  error message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->val$component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onItemExistsAtDestination(ZLcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    .line 128
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 132
    const-string/jumbo v0, "PrExportMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "itemexistsatdestination - progress at getheaderinfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method
