.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12$1;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageAsyncResponseHandlerCallback;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;->val$editAssetCallback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;->onComplete()V

    .line 1089
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;->val$editAssetCallback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getAssetErrorFromResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 1094
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$12;->val$editAssetCallback:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getStorageError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 1101
    return-void
.end method
