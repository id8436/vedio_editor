.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
.source "AdobeAssetFileInternal.java"


# instance fields
.field public _videDuration:I

.field public hlsHref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 60
    return-void
.end method

.method public static AdobeAssetFileFromInfo(Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 102
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->AdobeAssetFileFromInfo(Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 45
    invoke-static/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->tmpFileupdateFunction(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    return-void
.end method

.method public static createFromURL(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    .line 108
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    .line 110
    if-nez p3, :cond_0

    .line 150
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 114
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$1;

    invoke-direct {v3, p1, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    invoke-virtual {v0, v1, v3, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getAssetMetadata(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageDataRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    goto :goto_0
.end method

.method public static createTmpFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getValidatedAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    if-eqz v3, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    const-string/jumbo v1, "ADOBE_ASSET_DETAILS_STRING_KEY"

    const-string/jumbo v2, "Illegal Characters in name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/util/HashMap;)V

    .line 273
    if-eqz p4, :cond_1

    .line 274
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$3;

    invoke-direct {v0, p3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-interface {p3, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string/jumbo v2, "temp/"

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    :goto_2
    if-nez v0, :cond_3

    .line 302
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorBadRequest:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;)V

    .line 303
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 297
    :catch_1
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    .line 307
    :cond_3
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v7

    .line 308
    iput-object p2, v7, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 310
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 311
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v5

    check-cast v5, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 313
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPUT:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const/4 v2, 0x1

    invoke-virtual {v5, v7, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->requestFor(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v1

    .line 315
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    invoke-virtual {v5, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getHeaderInfoForFile(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageResourceRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    goto :goto_0
.end method

.method public static internalCreate(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-static/range {p0 .. p6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    return-object v0
.end method

.method public static internalCreateFromStream(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Ljava/io/InputStream;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-static/range {p0 .. p6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->createFromStream(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Ljava/io/InputStream;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    return-object v0
.end method

.method private static tmpFileupdateFunction(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 157
    .line 159
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string/jumbo v2, "temp/"

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :goto_1
    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorBadRequest:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;)V

    .line 174
    invoke-interface {p5, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 247
    :goto_2
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 178
    :cond_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v0

    .line 179
    iput-object p3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 182
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$2;

    invoke-direct {v3, v0, v2, p5, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;)V

    invoke-virtual {p4, p0, p1, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_2
.end method


# virtual methods
.method public canStreamVideo()Z
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->hlsHref:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->hlsHref:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v0, 0x1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 370
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    if-eqz v0, :cond_0

    .line 371
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHlsHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->hlsHref:Ljava/lang/String;

    return-object v0
.end method

.method public getParentAssetFolder()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->getParentFolder()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method public getStorageResourceItem()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->asrItem:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    return-object v0
.end method

.method public getVideoDuration()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->_videDuration:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 378
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->creationDate:Ljava/util/Date;

    .line 384
    return-void
.end method

.method public setModifiedDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->modificationDate:Ljava/util/Date;

    .line 389
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->type:Ljava/lang/String;

    .line 65
    return-void
.end method
