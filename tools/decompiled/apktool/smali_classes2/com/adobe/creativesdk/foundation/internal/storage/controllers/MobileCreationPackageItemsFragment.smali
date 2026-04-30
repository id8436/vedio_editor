.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;
.source "MobileCreationPackageItemsFragment.java"


# instance fields
.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private _mcPackageItemsWrapperDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

.field private _mcdatSouorceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;

.field private _mobileCreationPackageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

.field _mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

.field _reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field private _targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mcPackageItemsWrapperDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    return-object v0
.end method

.method public static getPackagePagesFromHref(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 4

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 115
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v3

    .line 118
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    .line 119
    const-string/jumbo v1, "/adobedraw/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "/adobedrawandroid/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetDrawFileInternal;

    invoke-direct {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetDrawFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    move-object v0, v1

    .line 133
    :cond_1
    :goto_0
    return-object v0

    .line 121
    :cond_2
    const-string/jumbo v1, "/adobesketch/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "/adobesketch-android/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    :cond_3
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookInternal;

    invoke-direct {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    move-object v0, v1

    goto :goto_0

    .line 123
    :cond_4
    const-string/jumbo v1, "/adobe-psmix/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "/adobeclsmix/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    :cond_5
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixFileInternal;

    invoke-direct {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    move-object v0, v1

    goto :goto_0

    .line 125
    :cond_6
    const-string/jumbo v1, "/adobe-layup/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "/adobecompandroid/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 126
    :cond_7
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompFileInternal;

    invoke-direct {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    move-object v0, v1

    goto :goto_0

    .line 127
    :cond_8
    const-string/jumbo v1, "/adobe-psfix/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "/adobefixandroid/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "/adobe-psfix-cls/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_9
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixFileInternal;

    invoke-direct {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getPackagePagesFromHref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 89
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v3

    .line 92
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    .line 93
    const-string/jumbo v1, "/adobedraw/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "/adobedrawandroid/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetDrawFileInternal;

    invoke-direct {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetDrawFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    move-object v0, v1

    .line 107
    :cond_1
    :goto_0
    return-object v0

    .line 95
    :cond_2
    const-string/jumbo v1, "/adobesketch/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "/adobesketch-android/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    :cond_3
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookInternal;

    invoke-direct {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetSketchbookInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    move-object v0, v1

    goto :goto_0

    .line 97
    :cond_4
    const-string/jumbo v1, "/adobe-psmix/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "/adobeclsmix/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 98
    :cond_5
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixFileInternal;

    invoke-direct {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSMixFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    move-object v0, v1

    goto :goto_0

    .line 99
    :cond_6
    const-string/jumbo v1, "/adobe-layup/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "/adobecompandroid/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 100
    :cond_7
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompFileInternal;

    invoke-direct {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetCompFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    move-object v0, v1

    goto :goto_0

    .line 101
    :cond_8
    const-string/jumbo v1, "/adobe-psfix/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "/adobefixandroid/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "/adobe-psfix-cls/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_9
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixFileInternal;

    invoke-direct {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetPSFixFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected createActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsActionBarController;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;)V

    return-object v0
.end method

.method protected getAssetSelectionCount()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method protected getAssetViewConfiguration(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->createFromBundle(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 66
    return-object v0
.end method

.method protected getContainerNameForRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_csdk_myassets_main:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentTargetCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->isMetadataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getName()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mcPackageItemsWrapperDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    return-object v0
.end method

.method public getReusableImageWorker()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    return-object v0
.end method

.method protected handleAppOrientationChange()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->refreshLayoutDueToOrientationChange()V

    .line 200
    return-void
.end method

.method public handleAssetClickAction(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 258
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;

    .line 262
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerControllerConfigurations;->getLokiConfigurationKey()I

    move-result v0

    move v1, v0

    .line 266
    :goto_0
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerConfigurationFactory;->getOneUpViewerController(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;

    move-result-object v0

    .line 267
    const-string/jumbo v2, "ADOBE_ONE_UP_VIEW_MOBILE_CREATION_CONFIGURATION"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->getConfiguration(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;

    .line 269
    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;->setItemsList(Ljava/util/ArrayList;)V

    .line 270
    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;->_packagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;->setAssetPackagePages(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 271
    iget v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;->startIndex:I

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;->setStartIndex(I)V

    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXMobilePackageItemOneUpViewerActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 275
    const-string/jumbo v2, "one_up_controller_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x859

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    return-void

    .line 264
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerControllerConfigurations;->getCsdkConfigurationKey()I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method protected handleCancelSelectionUserAction()V
    .locals 0

    .prologue
    .line 242
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->resetSelectedAssets()V

    .line 243
    return-void
.end method

.method public handleLongClickOnAsset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method protected handleOpenCurrentSelectedFilesUserAction()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_OPEN_SELECTED_FILES:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V

    .line 238
    return-void
.end method

.method public handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method protected handleSearchFunctionality(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method protected hasActionBarOptions()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected hookUpDataSourceDelegate(Z)V
    .locals 2

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mcPackageItemsWrapperDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mcdatSouorceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;->setDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;)V

    .line 195
    :cond_0
    return-void
.end method

.method protected initializeFromViewConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V
    .locals 3

    .prologue
    .line 137
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;

    .line 139
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;->getTargetCollectionHref()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;->getTargetParentCollectionHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeMobilePackageCollectionConfiguration;->getTargetModifedDate()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getPackagePagesFromHref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 141
    return-void
.end method

.method public isContainerReadOnly()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method protected isContainerShowingRootCollection()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public navigateToCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->clearCache()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 297
    :cond_0
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onDestroy()V

    .line 298
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 176
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->getNavBarHeightInternal(Landroid/content/Context;)I

    move-result v1

    .line 181
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 182
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    .line 181
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 183
    return-void
.end method

.method protected resetAssetsListViewVisualLayout()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->getMainView()Landroid/view/View;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getAssetsMainRootFrame()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getAssetsMainRootFrame()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    .line 233
    return-void
.end method

.method protected setupAssetsDataSourceAndListViewControllers()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 150
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mcPackageItemsWrapperDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    .line 151
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mcdatSouorceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;

    .line 152
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mcPackageItemsWrapperDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mcdatSouorceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;->setDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;)V

    .line 154
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;-><init>()V

    .line 155
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    .line 157
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 158
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;)V

    .line 160
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    .line 161
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->setContainerController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;)V

    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->setTargetPackage(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->performInitialization(Landroid/content/Context;)V

    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V

    .line 166
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mcPackageItemsWrapperDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;->loadItemsFromScratch()Z

    .line 168
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;

    const-string/jumbo v1, "grid"

    const-string/jumbo v2, "mobile_creation"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;->endAndTrackEvent()V

    .line 171
    return-void
.end method

.method public showCoachMarkForCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
