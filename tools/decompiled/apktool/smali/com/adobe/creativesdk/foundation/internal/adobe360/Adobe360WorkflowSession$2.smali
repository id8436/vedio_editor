.class Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;
.super Ljava/lang/Object;
.source "Adobe360WorkflowSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$path:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;)V

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 192
    return-void
.end method

.method public onMiss()V
    .locals 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$path:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$2;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;)V

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 209
    return-void
.end method
