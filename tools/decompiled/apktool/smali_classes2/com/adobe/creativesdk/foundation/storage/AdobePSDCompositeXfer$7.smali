.class final Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;
.super Ljava/lang/Object;
.source "AdobePSDCompositeXfer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBackRequiredForHandler:Landroid/os/Handler;

.field final synthetic val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

.field final synthetic val$imageSession:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

.field final synthetic val$storageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$composite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$imageSession:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$storageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$callBackRequiredForHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
    .locals 4

    .prologue
    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$composite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$imageSession:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$storageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->internalPullMinimalPSDComposite(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$callBackRequiredForHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$callBackRequiredForHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;)V

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->markFinished()V

    .line 538
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setCompletedUnitCount(J)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

    if-eqz v1, :cond_2

    .line 543
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->postFailureOnPullCompletionHandler(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->markFinished()V

    .line 545
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setCompletedUnitCount(J)V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$7;->call()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    return-object v0
.end method
