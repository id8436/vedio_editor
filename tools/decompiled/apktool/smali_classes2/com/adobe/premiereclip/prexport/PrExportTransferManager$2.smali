.class Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;
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
.field final synthetic this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

.field final synthetic val$localURL:Ljava/net/URL;

.field final synthetic val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Lcom/adobe/premiereclip/prexport/PrExportTransfer;Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$localURL:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    const-string/jumbo v0, "PrExportTransferMgr"

    const-string/jumbo v1, "xml upload cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 151
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadComplete(Z)V

    .line 152
    return-void
.end method

.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 156
    const-string/jumbo v0, "PrExportTransferMgr"

    const-string/jumbo v1, "xml upload success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 158
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadComplete(Z)V

    .line 159
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 163
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 164
    const-string/jumbo v0, "PrExportTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xml upload error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x199

    if-ne v0, v1, :cond_0

    .line 166
    const-string/jumbo v0, "PrExportTransferMgr"

    const-string/jumbo v1, "xml already exists, updating it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$300(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$localURL:Ljava/net/URL;

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getTargetType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;

    invoke-direct {v3, p0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2$1;-><init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;)V

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    .line 202
    invoke-static {v4}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$200(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Landroid/os/Handler;

    move-result-object v4

    .line 167
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->update(Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->val$transfer:Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 207
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadComplete(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    double-to-float v1, p1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$102(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;F)F

    .line 215
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportTransferManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadProgress()V

    .line 216
    return-void
.end method
