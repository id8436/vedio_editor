.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;
.super Ljava/lang/Object;
.source "AdobeLibraryImageUploader.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;->val$callback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;->val$callback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 101
    :try_start_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "assets/adobe-libraries/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/net/URI;

    const-string/jumbo v2, "assets/adobe-libraries/"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v1

    .line 104
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;

    invoke-direct {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 105
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 107
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1$1;

    invoke-direct {v0, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;)V

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeLibraryImageUploader$1;)V

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
