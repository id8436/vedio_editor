.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

.field final synthetic val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field final synthetic val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$completionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 2765
    .line 2766
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v1

    .line 2769
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2770
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 2773
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/util/AdobePhotoUtils;->JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v4, v1

    move-object v2, v0

    .line 2778
    :goto_0
    if-eqz v4, :cond_7

    .line 2780
    :try_start_1
    const-string/jumbo v1, "links"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2781
    const-string/jumbo v1, "links"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2782
    if-eqz v1, :cond_6

    .line 2783
    const-string/jumbo v3, "prev"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "prev"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "prev"

    .line 2784
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v6, "href"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2785
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    const-string/jumbo v6, "prev"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "href"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 2788
    :goto_1
    :try_start_2
    const-string/jumbo v6, "next"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "next"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "next"

    .line 2789
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "href"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2790
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    const-string/jumbo v7, "next"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v7, "href"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    move-object v1, v3

    .line 2795
    :goto_2
    :try_start_3
    const-string/jumbo v3, "assets"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2796
    const-string/jumbo v3, "assets"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2797
    if-eqz v4, :cond_1

    .line 2798
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 2799
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2800
    if-eqz v6, :cond_0

    .line 2801
    new-instance v7, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;

    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-direct {v7, v8}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    .line 2802
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v7, v8}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 2803
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getBaseURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->setBaseHref(Ljava/lang/String;)V

    .line 2804
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->updateFromDictionary(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2805
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2798
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2774
    :catch_0
    move-exception v1

    move-object v4, v0

    move-object v2, v1

    .line 2775
    goto/16 :goto_0

    .line 2810
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    .line 2812
    :goto_4
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-static {v4, v6, v7, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2822
    :cond_1
    :goto_5
    if-nez v2, :cond_3

    .line 2823
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$completionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;

    invoke-interface {v2, v5, v1, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;->onCompletion(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;)V

    .line 2826
    :goto_6
    return-void

    .line 2820
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    move-result-object v2

    move-object v1, v0

    goto :goto_5

    .line 2825
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, v2}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_6

    .line 2813
    :catch_2
    move-exception v2

    move-object v1, v0

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v1, v3

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_5

    .line 2810
    :catch_5
    move-exception v1

    move-object v9, v1

    move-object v1, v3

    move-object v3, v9

    goto :goto_4

    :catch_6
    move-exception v3

    goto :goto_4

    :cond_4
    move-object v1, v3

    goto/16 :goto_2

    :cond_5
    move-object v3, v0

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_2

    :cond_7
    move-object v1, v0

    goto :goto_5
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2830
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    .line 2832
    if-eqz v0, :cond_0

    .line 2833
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    move-result-object v0

    .line 2841
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$51;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 2842
    return-void

    .line 2835
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNotEntitledToService:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_1

    .line 2836
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 2838
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
    .line 2848
    return-void
.end method
