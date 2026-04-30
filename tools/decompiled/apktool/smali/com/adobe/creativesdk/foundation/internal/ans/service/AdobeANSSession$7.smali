.class Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;
.super Ljava/lang/Object;
.source "AdobeANSSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

.field final synthetic val$httpMethod:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

.field final synthetic val$responseCallback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;->val$responseCallback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;->val$httpMethod:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;->val$responseCallback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 439
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    .line 413
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_3

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_1

    .line 418
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;->val$responseCallback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;->onSuccess(Lorg/json/JSONObject;)V

    .line 433
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;->val$httpMethod:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodDELETE:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-ne v0, v1, :cond_2

    .line 422
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;->val$responseCallback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;->onSuccess(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 425
    :cond_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->access$000()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_0

    .line 430
    :cond_3
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->access$000()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_0
.end method
