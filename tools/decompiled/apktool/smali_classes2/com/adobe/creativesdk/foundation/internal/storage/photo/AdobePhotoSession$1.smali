.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

.field final synthetic val$catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->val$catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 5

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 314
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    .line 315
    const/16 v2, 0xc9

    if-ne v0, v2, :cond_0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->val$catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->updateFromData(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 324
    :goto_0
    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->val$catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 328
    :goto_1
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePhotoSession.createCatalog"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 320
    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 332
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    move-result-object v0

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$1;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 344
    return-void

    .line 337
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNotEntitledToService:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_1

    .line 338
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 350
    return-void
.end method
