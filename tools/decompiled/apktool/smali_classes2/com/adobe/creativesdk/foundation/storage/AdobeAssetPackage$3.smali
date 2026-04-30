.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;
.super Ljava/lang/Object;
.source "AdobeAssetPackage.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$successCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$weakThis:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Ljava/lang/ref/WeakReference;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->val$weakThis:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->val$successCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->val$weakThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    .line 151
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_3

    .line 153
    const-string/jumbo v1, "The requested manifest for package %s not found. This is most likely due to an empty asset package (no manifest)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->getDescription()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v1, :cond_2

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/util/HashMap;)V

    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 193
    :cond_0
    :goto_1
    return-void

    .line 153
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 169
    :cond_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeAssetPackage.loadDCXManifest"

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_3
    :try_start_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;-><init>(Ljava/lang/String;)V

    .line 178
    if-eqz v0, :cond_4

    .line 179
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->GUID:Ljava/lang/String;

    .line 180
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->name:Ljava/lang/String;

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->val$successCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->val$successCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method
