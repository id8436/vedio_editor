.class Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;
.super Ljava/lang/Object;
.source "Adobe360WorkflowSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 7

    .prologue
    .line 169
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    const-string/jumbo v1, "action-registry"

    const-string/jumbo v2, "actions-list"

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 171
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-string/jumbo v4, "com.adobe.cc.360workflow"

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1$1;

    invoke-direct {v5, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    iget-object v6, v6, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$handler:Landroid/os/Handler;

    .line 169
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    .line 190
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$handler:Landroid/os/Handler;

    invoke-static {v0, p1, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    .line 165
    return-void
.end method
