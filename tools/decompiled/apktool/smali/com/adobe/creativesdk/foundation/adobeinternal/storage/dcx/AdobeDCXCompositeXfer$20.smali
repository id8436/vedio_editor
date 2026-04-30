.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

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

.field final synthetic val$components:Ljava/util/ArrayList;

.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

.field final synthetic val$pullCompletionHandlerInternal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;

.field final synthetic val$session:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;)V
    .locals 0

    .prologue
    .line 2548
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$components:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$session:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$callBackRequiredForHandler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$pullCompletionHandlerInternal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2551
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setScheduled(Z)V

    .line 2552
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$components:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$session:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->access$400(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    .line 2554
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$callBackRequiredForHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2555
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$callBackRequiredForHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2582
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 2567
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setScheduled(Z)V

    .line 2568
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$pullCompletionHandlerInternal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;

    if-eqz v1, :cond_1

    .line 2569
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$pullCompletionHandlerInternal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;->onSuccess(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    .line 2570
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->markFinished()V

    .line 2571
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setTotalUnitCount(J)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2574
    :catch_0
    move-exception v0

    .line 2575
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setScheduled(Z)V

    .line 2576
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$pullCompletionHandlerInternal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;

    if-eqz v1, :cond_2

    .line 2577
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$pullCompletionHandlerInternal:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2578
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->markFinished()V

    .line 2579
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setTotalUnitCount(J)V

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
    .line 2548
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$20;->call()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    return-object v0
.end method
