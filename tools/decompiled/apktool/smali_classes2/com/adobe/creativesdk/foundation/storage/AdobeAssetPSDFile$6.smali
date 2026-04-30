.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;
.super Ljava/lang/Object;
.source "AdobeAssetPSDFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

.field final synthetic val$netListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

.field final synthetic val$psdComposite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

.field final synthetic val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->val$psdComposite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->val$netListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method handleCommonCompletionTasks()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$200(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->val$netListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->unregisterListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    .line 464
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$202(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 465
    return-void
.end method

.method public onCompletion(Z)V
    .locals 2

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->handleCommonCompletionTasks()V

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->val$psdComposite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->acceptPushWithError()Z

    .line 431
    const-string/jumbo v0, "Product Saves"

    const-string/jumbo v1, "Creative Cloud"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackSharingAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->val$psdComposite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->handleCommonCompletionTasks()V

    .line 448
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 449
    check-cast v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    .line 450
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorCancelled:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_0

    .line 451
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PSD composite push request for %@ has been cancelled for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getHref()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$6;->val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 460
    :cond_1
    return-void
.end method
