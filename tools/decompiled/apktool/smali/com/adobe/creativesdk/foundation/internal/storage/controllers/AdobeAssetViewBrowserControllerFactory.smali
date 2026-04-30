.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;
.super Ljava/lang/Object;
.source "AdobeAssetViewBrowserControllerFactory.java"


# static fields
.field private static mobileCreationsDataSourceTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->mobileCreationsDataSourceTypes:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private static getAllSupportedDataSourcesList()Ljava/util/EnumSet;
    .locals 4
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
    .line 223
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 238
    return-object v0
.end method

.method public static getAssetViewConfigurationBundle(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    const-string/jumbo v0, "ASSET_CONTAINER_DATA_SOURCE_TYPE"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 83
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p0, v0, :cond_0

    .line 84
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->mobileCreationsDataSourceTypes:Ljava/util/EnumSet;

    .line 85
    const-string/jumbo v2, "MOBILE_CREATION_FILTERED_TYPES"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 88
    :cond_0
    if-eqz p1, :cond_2

    .line 90
    const-string/jumbo v0, "MIME_TYPES_FILTER_ARRAY"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    .line 93
    if-eqz v0, :cond_1

    .line 94
    const-string/jumbo v2, "ASSET_CONTAINER_MIME_FILTERS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 97
    :cond_1
    const-string/jumbo v0, "MIME_TYPES_FILTER_TYPE"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    .line 101
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;->ADOBE_ASSET_MIMETYPE_FILTERTYPE_EXCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    if-eq v0, v2, :cond_4

    const/4 v0, 0x1

    .line 103
    :goto_0
    const-string/jumbo v2, "ASSET_CONTAINER_MIME_TYPES_FILTER"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    const-string/jumbo v0, "ADOBE_CLOUD"

    const-string/jumbo v2, "ADOBE_CLOUD"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 109
    :cond_2
    if-eqz p2, :cond_3

    .line 110
    const-string/jumbo v0, "ASSET_CONTAINER_TARGET_COLLECTION"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    :cond_3
    return-object v1

    .line 101
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAssetViewFragmentDetails(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 128
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;-><init>()V

    .line 130
    if-eqz p2, :cond_6

    .line 131
    const-string/jumbo v0, "ADOBE_FILES_PROVIDER_KEY"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 133
    :goto_0
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v3, :cond_2

    if-eqz v0, :cond_2

    .line 134
    const-string/jumbo v0, "ADOBE_MULTIPLE_FILES_PROVIDER_KEY"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->setClassTag(Ljava/lang/Class;)V

    .line 167
    :cond_0
    :goto_1
    invoke-static {p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getAssetViewConfigurationBundle(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->setArgumentsBundle(Landroid/os/Bundle;)V

    .line 169
    return-object v2

    .line 138
    :cond_1
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderFragment;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->setClassTag(Ljava/lang/Class;)V

    goto :goto_1

    .line 143
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v0, :cond_3

    .line 144
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getCCFilesContainerFragmentClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->setClassTag(Ljava/lang/Class;)V

    goto :goto_1

    .line 146
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v0, :cond_4

    .line 147
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->setClassTag(Ljava/lang/Class;)V

    goto :goto_1

    .line 149
    :cond_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v0, :cond_5

    .line 150
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->setClassTag(Ljava/lang/Class;)V

    goto :goto_1

    .line 162
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v0, :cond_0

    .line 164
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;Ljava/lang/Class;)Ljava/lang/Class;

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static getBaseHostFragmentFromClientBundle(Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getBaseHostFragmentFromClientBundle(Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseHostFragmentFromClientBundle(Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;
    .locals 3

    .prologue
    .line 202
    .line 204
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getDataSourcesListToDisplayFromBundle(Landroid/os/Bundle;)Ljava/util/EnumSet;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 208
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;-><init>()V

    .line 209
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 218
    :goto_0
    return-object v0

    .line 214
    :cond_1
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getFirstDataSource(Ljava/util/EnumSet;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v0

    invoke-static {p0, v0, p1, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getHostFragmentForDataSource(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCCFilesContainerFragmentClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 117
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    goto :goto_0
.end method

.method public static getConfigurationFromBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 317
    if-nez p0, :cond_0

    .line 318
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v5

    move-object v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;-><init>(Ljava/util/EnumSet;ZLjava/util/EnumSet;ZLcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 337
    :goto_0
    return-object v0

    .line 320
    :cond_0
    const-string/jumbo v0, "DATA_SOURCE_FILTER_ARRAY"

    .line 321
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    .line 322
    const-string/jumbo v0, "DATA_SOURCE_FILTER_TYPE"

    .line 323
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    .line 324
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;->ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    if-ne v0, v3, :cond_2

    move v6, v2

    .line 327
    :goto_1
    const-string/jumbo v0, "MIME_TYPES_FILTER_ARRAY"

    .line 328
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/EnumSet;

    .line 329
    const-string/jumbo v0, "MIME_TYPES_FILTER_TYPE"

    .line 330
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    .line 333
    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;->ADOBE_ASSET_MIMETYPE_FILTERTYPE_EXCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    if-eq v0, v5, :cond_1

    move v4, v2

    .line 335
    :cond_1
    const-string/jumbo v0, "ADOBE_CLOUD"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 337
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserConfiguration;-><init>(Ljava/util/EnumSet;ZLjava/util/EnumSet;ZLcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    goto :goto_0

    :cond_2
    move v6, v4

    .line 324
    goto :goto_1
.end method

.method public static getCreateNewCollectionDialogFragment(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Landroid/support/v4/app/DialogFragment;
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;-><init>()V

    .line 380
    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 381
    return-object v0
.end method

.method public static getCreateNewFolderDialogFragment(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Landroid/support/v4/app/DialogFragment;
    .locals 1

    .prologue
    .line 368
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderMgr;->getCreateNewFolderDialogFragment(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getCreateNewLibraryDialogFragment()Landroid/support/v4/app/DialogFragment;
    .locals 1

    .prologue
    .line 373
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;-><init>()V

    .line 374
    return-object v0
.end method

.method static getDataSourcesListToDisplayFromBundle(Landroid/os/Bundle;)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    if-nez p0, :cond_1

    .line 244
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getAllSupportedDataSourcesList()Ljava/util/EnumSet;

    move-result-object v0

    .line 287
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    const-string/jumbo v0, "DATA_SOURCE_FILTER_ARRAY"

    .line 247
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    .line 248
    const-string/jumbo v1, "DATA_SOURCE_FILTER_TYPE"

    .line 249
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    .line 250
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;->ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    if-ne v1, v4, :cond_2

    move v4, v3

    .line 252
    :goto_1
    if-nez v0, :cond_3

    .line 253
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getAllSupportedDataSourcesList()Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v4, v2

    .line 250
    goto :goto_1

    .line 259
    :cond_3
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 260
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->isMobileCreation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 262
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->mobileCreationsDataSourceTypes:Ljava/util/EnumSet;

    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_3
    move v2, v1

    .line 264
    goto :goto_2

    .line 265
    :cond_4
    if-eqz v2, :cond_5

    .line 267
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->mobileCreationsDataSourceTypes:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 270
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 275
    :cond_5
    if-nez v4, :cond_0

    .line 277
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getAllSupportedDataSourcesList()Ljava/util/EnumSet;

    move-result-object v2

    .line 278
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getAllSupportedDataSourcesList()Ljava/util/EnumSet;

    move-result-object v1

    .line 279
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 281
    invoke-virtual {v2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 282
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move-object v0, v1

    .line 287
    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method public static getExtraConfigurationFromBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 342
    if-nez p0, :cond_0

    .line 343
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;-><init>(Ljava/lang/String;ZZ)V

    .line 347
    :goto_0
    return-object v0

    .line 344
    :cond_0
    const-string/jumbo v0, "START_WITH_COLLECTION_KEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    const-string/jumbo v0, "SHOULD_SHOW_ONLY_ASSETS"

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 346
    const-string/jumbo v0, "SHOW_LIBRARY_ITEM"

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 347
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetMainBrowserExtraConfiguration;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private static getFirstDataSource(Ljava/util/EnumSet;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHostFragmentForDataSource(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-static {p0, p1, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getHostFragmentForDataSource(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public static getHostFragmentForDataSource(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;
    .locals 2

    .prologue
    .line 179
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getAssetViewFragmentDetails(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->getClassTag()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->getArgumentsBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 180
    invoke-static {p0, v1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;

    .line 182
    return-object v0
.end method

.method public static getHostFragmentForEditErrorSummary(Ljava/lang/Object;)Landroid/support/v4/app/DialogFragment;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;-><init>()V

    .line 361
    check-cast p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    .line 362
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_errorAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment;->setEditFailedList(Ljava/util/List;)V

    .line 363
    return-object v0
.end method

.method public static getHostFragmentForUploadErrorSummary(Ljava/lang/Object;)Landroid/support/v4/app/DialogFragment;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;-><init>()V

    .line 353
    check-cast p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;

    .line 354
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;->_errorAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->setUploadFailedList(Ljava/util/ArrayList;)V

    .line 355
    return-object v0
.end method

.method public static shouldShowComponent(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z
    .locals 2

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p0, v1, :cond_1

    .line 297
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v0

    const-string/jumbo v1, "lightroom"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->isEntitledToService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p0, v1, :cond_2

    .line 301
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v0

    const-string/jumbo v1, "libraries"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->isEntitledToService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    goto :goto_0

    .line 303
    :cond_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p0, v1, :cond_3

    .line 305
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v0

    const-string/jumbo v1, "cc_storage"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->isEntitledToService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    goto :goto_0

    .line 307
    :cond_3
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p0, v1, :cond_0

    .line 308
    const/4 v0, 0x1

    goto :goto_0
.end method
