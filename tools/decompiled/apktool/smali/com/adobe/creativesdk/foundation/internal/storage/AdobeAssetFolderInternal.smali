.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
.source "AdobeAssetFolderInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getResourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    return-object v0
.end method
