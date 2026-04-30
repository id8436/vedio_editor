.class Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;
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
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    const-string/jumbo v0, "PrExportTransferMgr"

    const-string/jumbo v1, "xml update cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 172
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadComplete(Z)V

    .line 173
    return-void
.end method

.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 177
    const-string/jumbo v0, "PrExportTransferMgr"

    const-string/jumbo v1, "xml update success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadComplete(Z)V

    .line 180
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 184
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 185
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 186
    const-string/jumbo v0, "PrExportTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xml update error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 188
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadComplete(Z)V

    .line 195
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string/jumbo v0, "PrExportTransferMgr"

    const-string/jumbo v1, "xml update success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 193
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadComplete(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    double-to-float v1, p1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$102(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;F)F

    .line 200
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadProgress()V

    .line 201
    return-void
.end method
