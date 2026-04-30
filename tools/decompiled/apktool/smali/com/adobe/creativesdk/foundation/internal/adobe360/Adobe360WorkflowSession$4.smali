.class Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$4;
.super Ljava/lang/Object;
.source "Adobe360WorkflowSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

.field final synthetic val$exception:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$4;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$4;->val$exception:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$4;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$4;->val$exception:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 337
    return-void
.end method
