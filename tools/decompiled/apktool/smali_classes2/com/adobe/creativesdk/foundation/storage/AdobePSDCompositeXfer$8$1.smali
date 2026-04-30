.class Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8$1;
.super Ljava/lang/Object;
.source "AdobePSDCompositeXfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;

.field final synthetic val$pulled:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8$1;->val$pulled:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 598
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8$1;->val$pulled:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;)V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->markFinished()V

    .line 601
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$8;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setCompletedUnitCount(J)V

    .line 602
    return-void
.end method
