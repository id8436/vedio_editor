.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$86;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 4725
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$86;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$86;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$86;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 4728
    .line 4729
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v1

    .line 4731
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_7

    .line 4734
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobePhotoUtils;->JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    .line 4738
    :goto_0
    if-eqz v2, :cond_0

    .line 4740
    :try_start_1
    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4741
    const-string/jumbo v3, "created"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4742
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_CREATED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4764
    :cond_0
    :goto_1
    if-nez v1, :cond_8

    .line 4765
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$86;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 4768
    :goto_2
    return-void

    .line 4735
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 4736
    goto :goto_0

    .line 4743
    :cond_1
    :try_start_2
    const-string/jumbo v3, "trial"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4744
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    goto :goto_1

    .line 4745
    :cond_2
    const-string/jumbo v3, "trial_grace_period"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4746
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_GRACE_PERIOD:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    goto :goto_1

    .line 4747
    :cond_3
    const-string/jumbo v3, "trial_expired"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4748
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_TRIAL_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    goto :goto_1

    .line 4749
    :cond_4
    const-string/jumbo v3, "subscriber"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4750
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    goto :goto_1

    .line 4751
    :cond_5
    const-string/jumbo v3, "subscriber_grace_period"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4752
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_GRACE_PERIOD:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;

    goto :goto_1

    .line 4753
    :cond_6
    const-string/jumbo v3, "subscriber_expired"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4754
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;->ADOBE_PHOTO_ACCOUNT_STATUS_SUBSCRIBER_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$AdobePhotoAccountStatus;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 4756
    :catch_1
    move-exception v1

    .line 4757
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4758
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_MISSING_JSON_DATA:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;)V

    goto :goto_1

    .line 4762
    :cond_7
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$86;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    move-result-object v1

    goto :goto_1

    .line 4767
    :cond_8
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$86;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4772
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$86;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    .line 4774
    if-eqz v0, :cond_0

    .line 4775
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$86;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    move-result-object v0

    .line 4783
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$86;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 4784
    return-void

    .line 4777
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNotEntitledToService:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_1

    .line 4778
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 4780
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
    .line 4790
    return-void
.end method
