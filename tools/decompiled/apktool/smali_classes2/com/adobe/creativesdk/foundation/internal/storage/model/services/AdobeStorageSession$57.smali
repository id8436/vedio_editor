.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

.field final synthetic val$callBackRequiredForHandler:Landroid/os/Handler;

.field final synthetic val$doCopyResponseHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

.field final synthetic val$isNew:Z

.field final synthetic val$outObj:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1internalClassForPreviousRequest;

.field final synthetic val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

.field final synthetic val$self:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1internalClassForPreviousRequest;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;)V
    .locals 0

    .prologue
    .line 4703
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$self:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$callBackRequiredForHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    iput-boolean p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$isNew:Z

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$outObj:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1internalClassForPreviousRequest;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$doCopyResponseHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 4719
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$doCopyResponseHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 4720
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 5

    .prologue
    .line 4706
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    .line 4707
    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    const/16 v1, 0x199

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_1

    .line 4710
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$callBackRequiredForHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$self:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$isNew:Z

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$outObj:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1internalClassForPreviousRequest;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1internalClassForPreviousRequest;->_prevRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$doCopyResponseHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$1doCopy;->perform(ZLcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 4715
    :goto_0
    return-void

    .line 4713
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$57;->val$doCopyResponseHandler:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    goto :goto_0
.end method
