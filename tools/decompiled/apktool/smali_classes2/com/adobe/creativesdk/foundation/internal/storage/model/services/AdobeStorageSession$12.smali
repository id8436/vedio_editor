.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

.field final synthetic val$editAssetCallback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

.field final synthetic val$self:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V
    .locals 0

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;->val$editAssetCallback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;->val$self:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 5

    .prologue
    .line 1080
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;->val$editAssetCallback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;->onComplete()V

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    .line 1084
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;

    const-wide/16 v2, 0x1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;->val$self:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12$1;

    invoke-direct {v4, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;)V

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;-><init>(JLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;)V

    .line 1103
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageAsyncResponseHandler;->startMonitoringServiceEndPoint(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 2

    .prologue
    .line 1109
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getStorageError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    .line 1110
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;->val$editAssetCallback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 1111
    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 1116
    return-void
.end method
