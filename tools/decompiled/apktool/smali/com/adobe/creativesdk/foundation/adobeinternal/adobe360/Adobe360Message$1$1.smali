.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;
.super Ljava/lang/Object;
.source "Adobe360Message.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;

.field final synthetic val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$finalMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V
    .locals 0

    .prologue
    .line 963
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;->val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;->val$finalMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;->val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    if-eqz v0, :cond_1

    .line 967
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;->val$finalError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1$1;->val$finalMessage:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0
.end method
