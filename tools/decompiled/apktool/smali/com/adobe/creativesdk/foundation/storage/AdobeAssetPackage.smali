.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
.source "AdobeAssetPackage.java"


# instance fields
.field private asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

.field private manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

.field private metadataLoaded:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->metadataLoaded:Z

    .line 77
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 230
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->internalID:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->GUID:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->href:Ljava/net/URI;

    .line 232
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->etag:Ljava/lang/String;

    .line 233
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->name:Ljava/lang/String;

    .line 235
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->parentHref:Ljava/net/URI;

    .line 237
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->created:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->creationDate:Ljava/util/Date;

    .line 238
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->modified:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->modificationDate:Ljava/util/Date;

    .line 240
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->creationDate:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->modificationDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->modificationDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->creationDate:Ljava/util/Date;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setOrderBy(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;)V

    .line 247
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setOrder(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;)V

    .line 249
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 3

    .prologue
    .line 219
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getOrderBy()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 220
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->getOrder()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    .line 219
    :goto_2
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V

    .line 222
    return-void

    .line 219
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;->ADOBE_STORAGE_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-object v2, v0

    goto :goto_0

    .line 220
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;->ADOBE_STORAGE_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-object v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    return-object p1
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->metadataLoaded:Z

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 299
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    if-eqz v0, :cond_0

    .line 300
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAsrCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    return-object v0
.end method

.method public getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMetadataLoaded()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->metadataLoaded:Z

    return v0
.end method

.method loadDCXManifest(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 131
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;-><init>()V

    .line 132
    const-string/jumbo v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->href:Ljava/net/URI;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-string/jumbo v4, "manifest"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->href:Ljava/net/URI;

    .line 134
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    move-result-object v1

    .line 135
    if-nez v1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 138
    :cond_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v1, v0, v2, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->requestFor(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    .line 140
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 142
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;

    invoke-direct {v3, p0, v2, p2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Ljava/lang/ref/WeakReference;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 205
    invoke-virtual {v1, v0, v5, v5, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->isMetadataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;->onCompletion()V

    .line 127
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 108
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Ljava/lang/ref/WeakReference;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V

    .line 117
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$2;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 125
    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->loadDCXManifest(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0
.end method

.method public reloadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->metadataLoaded:Z

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 90
    return-void
.end method

.method protected resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->href:Ljava/net/URI;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->name:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->GUID:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->internalID:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->href:Ljava/net/URI;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    .line 280
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->etag:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    return-object v0
.end method

.method protected setAsrCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 46
    return-void
.end method

.method protected setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 289
    return-void
.end method

.method protected setManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 42
    return-void
.end method

.method protected setMetadataLoaded(Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->metadataLoaded:Z

    .line 50
    return-void
.end method
