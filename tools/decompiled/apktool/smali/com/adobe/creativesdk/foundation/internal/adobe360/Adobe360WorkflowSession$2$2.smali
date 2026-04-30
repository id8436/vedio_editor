.class Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$2;
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
    .line 197
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$handler:Landroid/os/Handler;

    invoke-static {v0, p1, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    .line 201
    return-void
.end method
