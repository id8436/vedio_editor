.class Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1$1;
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
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1$1;->val$error:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 175
    .line 177
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 182
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "Adobe360WorkflowSession"

    invoke-static {v2, v3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public onMiss()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2$1$1;->val$error:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 188
    return-void
.end method
