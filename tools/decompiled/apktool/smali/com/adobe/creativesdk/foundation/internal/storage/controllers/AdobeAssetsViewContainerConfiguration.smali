.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;
.super Ljava/lang/Object;
.source "AdobeAssetsViewContainerConfiguration.java"


# static fields
.field public static final ADOBE_CLOUD_KEY:Ljava/lang/String; = "ADOBE_CLOUD"

.field public static final DATA_SOURCE_TYPE_KEY:Ljava/lang/String; = "ASSET_CONTAINER_DATA_SOURCE_TYPE"

.field public static final MIME_FILTERS_KEY:Ljava/lang/String; = "ASSET_CONTAINER_MIME_FILTERS"

.field public static final MIME_FILTER_TYPE_KEY:Ljava/lang/String; = "ASSET_CONTAINER_MIME_TYPES_FILTER"

.field public static final MOBILECREATION_FILTERES_TYPES:Ljava/lang/String; = "MOBILE_CREATION_FILTERED_TYPES"

.field public static final TARGET_COLLECTION:Ljava/lang/String; = "ASSET_CONTAINER_TARGET_COLLECTION"

.field public static final TARGET_COLLECTION_IS_READ_ONLY:Ljava/lang/String; = "ASSET_CONTAINER_IS_READ_ONLY"


# instance fields
.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private _isReadOnly:Z

.field private dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field private isMimeTypeFilterInclusive:Z

.field private mimeTypesFilter:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation
.end field

.field private mobileCreationFilteredTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation
.end field

.field private targetCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

.field private targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "ASSET_CONTAINER_DATA_SOURCE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 82
    const-string/jumbo v0, "ASSET_CONTAINER_TARGET_COLLECTION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->targetCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    .line 83
    const-string/jumbo v0, "ASSET_CONTAINER_MIME_FILTERS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->mimeTypesFilter:Ljava/util/EnumSet;

    .line 84
    const-string/jumbo v0, "ASSET_CONTAINER_MIME_TYPES_FILTER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->isMimeTypeFilterInclusive:Z

    .line 86
    const-string/jumbo v0, "ASSET_CONTAINER_IS_READ_ONLY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->_isReadOnly:Z

    .line 88
    const-string/jumbo v0, "ADOBE_CLOUD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getMatchingCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 93
    :cond_0
    const-string/jumbo v0, "MOBILE_CREATION_FILTERED_TYPES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->mobileCreationFilteredTypes:Ljava/util/EnumSet;

    .line 94
    return-void
.end method

.method public getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    return-object v0
.end method

.method public getDataSourceType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    return-object v0
.end method

.method public getIsMimeTypeFilterInclusive()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->isMimeTypeFilterInclusive:Z

    return v0
.end method

.method public getMimeTypesFilter()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->mimeTypesFilter:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getMobileCreationFilteredTypes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->mobileCreationFilteredTypes:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getTargetCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->targetCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    return-object v0
.end method

.method public getTargetCollectionHref()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->targetCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->targetCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->targetCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->_isReadOnly:Z

    return v0
.end method

.method public isStartAtRootCollection()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->targetCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
