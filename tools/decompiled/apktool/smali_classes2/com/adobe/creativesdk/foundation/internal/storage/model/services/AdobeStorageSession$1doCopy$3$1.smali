.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3$1;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;


# instance fields
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;)V
    .locals 0

    .prologue
    .line 4564
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 2

    .prologue
    .line 4567
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->parseAsyncResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    .line 4568
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;->val$innerResponseHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 4569
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 2

    .prologue
    .line 4574
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->parseAsyncResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    .line 4575
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;->val$innerResponseHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 4577
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 4581
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy$3;->val$innerResponseHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 4583
    return-void
.end method
