.class Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2$1;
.super Ljava/lang/Object;
.source "AdobePSDCompositeXfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->markFinished()V

    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setCompletedUnitCount(J)V

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$2;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;->onCompletion(Z)V

    .line 189
    :cond_0
    return-void
.end method
