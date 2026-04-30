.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;

.field final synthetic val$componentDestinationPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3368
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;->val$componentDestinationPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3372
    .line 3373
    if-eqz p2, :cond_0

    .line 3379
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3380
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_3

    .line 3381
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorMissingComponentAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;)V

    move-object v0, v2

    .line 3398
    :goto_0
    if-nez v1, :cond_2

    .line 3399
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->val$completionCallbackWrapper:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;->perform(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3400
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$pendingOperationCountWrapper:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;->decrementPendingCountWithError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3401
    return-void

    .line 3384
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->localComponentAssetsAreImmutable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3386
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->commitMoveTempToOriginal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 3393
    :goto_2
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLockImmutableComponents()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3394
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;->val$componentDestinationPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageFileUtils;->setReadOnly(Ljava/lang/String;)Z

    :cond_1
    move-object v0, p2

    goto :goto_0

    .line 3388
    :catch_0
    move-exception v0

    .line 3390
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorComponentWriteFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid write permissions for filePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;

    .line 3391
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->access$700(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3390
    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 3398
    goto :goto_1

    :cond_3
    move-object v1, v2

    move-object v0, p2

    goto :goto_0
.end method
