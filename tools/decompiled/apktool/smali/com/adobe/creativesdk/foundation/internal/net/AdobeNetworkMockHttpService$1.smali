.class Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;
.super Ljava/util/TimerTask;
.source "AdobeNetworkMockHttpService.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService;

.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

.field final synthetic val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field final synthetic val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$error:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorCancelled:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 113
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$error:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$error:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->getException()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    if-nez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-direct {v1, v2, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpResponse;->getException()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 105
    const-string/jumbo v2, "Response"

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    new-instance v3, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;)V

    invoke-interface {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkMockHttpService$1;->val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    goto :goto_0
.end method
