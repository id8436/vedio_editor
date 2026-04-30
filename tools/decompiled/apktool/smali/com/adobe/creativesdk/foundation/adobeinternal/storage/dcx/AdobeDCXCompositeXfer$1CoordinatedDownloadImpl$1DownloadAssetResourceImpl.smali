.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$DownloadAssetResource;


# instance fields
.field private _originalRequestPath:Ljava/lang/String;

.field private _tempReplacementPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

.field final synthetic val$completionCallbackWrapper:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;

.field final synthetic val$finalSourceHref:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3313
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->val$completionCallbackWrapper:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->val$finalSourceHref:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->_originalRequestPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method commitMoveTempToOriginal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3332
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->_tempReplacementPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3333
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->_originalRequestPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3334
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 3335
    return-void
.end method

.method createTempPathForOriginal(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3321
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->_originalRequestPath:Ljava/lang/String;

    .line 3322
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->access$500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3324
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->access$600()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->access$600()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->access$602(Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->_tempReplacementPath:Ljava/lang/String;

    .line 3325
    monitor-exit v1

    .line 3326
    return-void

    .line 3325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTempReplacementPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->_tempReplacementPath:Ljava/lang/String;

    return-object v0
.end method

.method public perform(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 3341
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->createTempPathForOriginal(Ljava/lang/String;)V

    .line 3343
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3344
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorCancelled:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    .line 3345
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->val$completionCallbackWrapper:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1CompletionCallbackWrapper;->perform(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3346
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$pendingOperationCountWrapper:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1PendingOperationCountWrapper;->decrementPendingCountWithError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3462
    :cond_0
    :goto_0
    return-void

    .line 3349
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->val$finalSourceHref:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 3350
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    move-wide v8, v0

    .line 3354
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 3355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 3356
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0, v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setTotalUnitCount(J)V

    .line 3357
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setCompletedUnitCount(J)V

    .line 3367
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->val$finalSourceHref:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 3368
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$session:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v2, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->getTempReplacementPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;

    invoke-direct {v4, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->downloadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 3454
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_0

    .line 3455
    if-eqz v0, :cond_0

    .line 3456
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1, v0, v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->addComponentRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;J)V

    goto :goto_0

    .line 3352
    :cond_3
    const-wide/16 v0, 0xa

    move-wide v8, v0

    goto :goto_1

    .line 3359
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setTotalUnitCount(J)V

    goto :goto_2

    .line 3405
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$session:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->val$finalSourceHref:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;

    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;->getTempReplacementPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$2;

    invoke-direct {v5, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1CoordinatedDownloadImpl$1DownloadAssetResourceImpl;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->downloadFromHref(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_3
.end method
