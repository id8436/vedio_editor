.class Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;
.super Ljava/lang/Object;
.source "AdobePhotoSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

.field final synthetic val$catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

.field final synthetic val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1067
    .line 1068
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    .line 1070
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    .line 1073
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/util/AdobePhotoUtils;->JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1078
    :goto_0
    if-eqz v0, :cond_1

    .line 1080
    :try_start_1
    const-string/jumbo v3, "albums"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v3, v2

    .line 1082
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 1083
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1084
    if-eqz v0, :cond_0

    .line 1085
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoCollectionInternal;

    invoke-direct {v6}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoCollectionInternal;-><init>()V

    .line 1086
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {v6, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoCollectionInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 1087
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getBaseURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoCollectionInternal;->setBaseHref(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1090
    :try_start_2
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-virtual {v6, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoCollectionInternal;->updateFromDictionary(Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Z
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 1094
    :goto_2
    if-eqz v0, :cond_0

    .line 1095
    :try_start_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1074
    :catch_0
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 1075
    goto :goto_0

    .line 1091
    :catch_1
    move-exception v0

    .line 1092
    sget-object v7, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v8, "AdobePhotoSession.listCollectionsInCatalog"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v2

    goto :goto_2

    .line 1100
    :catch_2
    move-exception v0

    .line 1102
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, ""

    const-string/jumbo v5, ""

    invoke-static {v2, v3, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    .line 1111
    :goto_3
    if-nez v0, :cond_4

    .line 1112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, v4}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 1115
    :goto_4
    return-void

    .line 1105
    :cond_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getType()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;->AdobePhotoCatalogTypeLightroom:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->isInSync()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x194

    if-ne v0, v2, :cond_3

    move-object v0, v1

    goto :goto_3

    .line 1109
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    move-result-object v0

    goto :goto_3

    .line 1114
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1119
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    .line 1121
    if-eqz v0, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    move-result-object v0

    .line 1130
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession$18;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 1131
    return-void

    .line 1124
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNotEntitledToService:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_1

    .line 1125
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_NOT_ENTITLED_TO_SERVICE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 1127
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
    .line 1137
    return-void
.end method
