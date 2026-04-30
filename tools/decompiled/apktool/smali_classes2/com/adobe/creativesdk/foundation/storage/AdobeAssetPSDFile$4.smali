.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;
.super Ljava/lang/Object;
.source "AdobeAssetPSDFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

.field final synthetic val$netListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

.field final synthetic val$psdComposite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

.field final synthetic val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->val$psdComposite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->val$netListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method handleCommonCompletionTasks()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->val$netListener:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->unregisterListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->access$102(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 357
    :cond_0
    return-void
.end method

.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;)V
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->handleCommonCompletionTasks()V

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->val$psdComposite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->resolvePulledBranch()Z

    .line 328
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->val$psdComposite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->handleCommonCompletionTasks()V

    .line 340
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    if-eqz v0, :cond_0

    .line 341
    check-cast p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    .line 342
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorCancelled:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_0

    .line 343
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PSD composite pull request for %@ has been cancelled for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getHref()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$4;->val$psdCompositeCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCancellation()V

    .line 350
    :cond_0
    return-void
.end method
