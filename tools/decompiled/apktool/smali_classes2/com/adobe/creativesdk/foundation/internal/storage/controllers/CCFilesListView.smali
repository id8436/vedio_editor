.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;
.source "CCFilesListView.java"


# static fields
.field private static final T:Ljava/lang/String;


# instance fields
.field private _assetViewerConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

.field protected _ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

.field protected _isContainerCollectionReadOnly:Z

.field private _targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

.field private _uploadTrackingnData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;-><init>(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_uploadTrackingnData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_uploadTrackingnData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    return-object v0
.end method

.method private fetchUploadAssetThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 218
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$2;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;->getThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    goto :goto_0
.end method

.method private isAssetALocalUpload(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 221
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    return v0
.end method

.method private performUploadTrackingSetup()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method


# virtual methods
.method protected abstract addAssetRenditionToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Z
.end method

.method protected abstract addAssetRenditionToCache([BLjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected attachBaseAdapterToListView(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    .prologue
    .line 370
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;

    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    .line 371
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getRealAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 374
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 376
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->notifyDataSetChanged()V

    .line 377
    return-void
.end method

.method cancelThumbnailRenditionRequestOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 343
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->cancelRenditionRequest()V

    .line 345
    :cond_0
    return-void
.end method

.method public cleanUpUploadRelatedSetup()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_uploadTrackingnData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->resetSelf()V

    .line 393
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected abstract createUploadCombinedAdapter()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;
.end method

.method protected getFolderNavigationCommand(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;
    .locals 2

    .prologue
    .line 239
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;-><init>()V

    .line 241
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 242
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;->getResourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->setCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 244
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;->isReadOnly()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->setReadOnly(Z)V

    .line 248
    :goto_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->setDataSourceType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V

    .line 249
    return-object v1

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->setCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    goto :goto_0
.end method

.method public getSelectionOverallVisibility()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive()Z

    move-result v0

    return v0
.end method

.method public handleAssetCellSelectionToggle(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;)V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getPosition()I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 264
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 265
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 268
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->isMarkedSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->markSelected(Z)V

    .line 271
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->removeSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->markSelected(Z)V

    .line 276
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->addSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    goto :goto_0
.end method

.method protected handleListItemClick(I)V
    .locals 4

    .prologue
    .line 283
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->T:Ljava/lang/String;

    const-string/jumbo v1, "handleListItemClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v2

    .line 286
    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    move-object v1, v0

    .line 287
    :goto_0
    if-nez v1, :cond_2

    .line 305
    :cond_0
    :goto_1
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 291
    instance-of v3, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v3, :cond_3

    .line 293
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->getFolderNavigationCommand(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->navigateToCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;)V

    goto :goto_1

    .line 298
    :cond_3
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->shouldFilterOutAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    iget-object v1, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handleAssetClickAction(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected handleListItemLongClick(I)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    move-object v1, v0

    .line 311
    :goto_0
    if-nez v1, :cond_2

    .line 318
    :cond_0
    :goto_1
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handleLongClickOnAsset(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected handlePopupMenuClick(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    move-object v1, v0

    .line 324
    :goto_0
    if-nez v1, :cond_2

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_1
.end method

.method protected isAssetSelected(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->containsAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Z

    move-result v0

    return v0
.end method

.method protected loadAssetRendition(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 104
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 106
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {p0, v1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->loadAssetRenditionFromCache(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_0

    .line 108
    invoke-interface {p4, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    move v0, v7

    .line 188
    :goto_0
    return v0

    .line 112
    :cond_0
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v1, :cond_1

    move-object v6, v0

    .line 113
    check-cast v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 114
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)V

    invoke-virtual {v6, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    move v0, v7

    .line 173
    goto :goto_0

    .line 175
    :cond_1
    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_2

    move v0, v7

    .line 178
    goto :goto_0

    .line 180
    :cond_2
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->isAssetALocalUpload(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    .line 182
    iput-object p2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendype:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    .line 183
    iput-object p3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    .line 184
    invoke-direct {p0, p1, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->fetchUploadAssetThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    move v0, v7

    .line 185
    goto :goto_0

    .line 188
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadAssetRenditionFromCache(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Landroid/graphics/Bitmap;
.end method

.method public refreshDueToDataChange()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->assetsToDisplay()Ljava/util/ArrayList;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getAdobeStorageSortIndexCollation()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->createSectionDataFromMaster(Ljava/util/ArrayList;)Z

    .line 97
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->refreshDueToDataChange()V

    .line 98
    return-void
.end method

.method protected resetFolderView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;ZZZ)V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public setAssetListViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetViewerConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    .line 79
    return-void
.end method

.method public setContainerReadOnly(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_isContainerCollectionReadOnly:Z

    .line 194
    return-void
.end method

.method public setStorageDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    .line 349
    return-void
.end method

.method public setUpListViewToTrackActiveUploads(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_uploadTrackingnData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;

    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_uploadTrackingnData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    .line 356
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_uploadTrackingnData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;->_originalAssetsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    .line 358
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->createUploadCombinedAdapter()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    move-result-object v1

    .line 359
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->setCCFilesAdapter(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;)V

    .line 360
    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->setUploadSession(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    .line 362
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_uploadTrackingnData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;->_localAssetsCCFilesCombinedAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    .line 364
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->removeHeaders()V

    .line 366
    :cond_0
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->attachBaseAdapterToListView(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 367
    return-void
.end method

.method public set_targetCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 409
    return-void
.end method

.method protected shouldFilterOutAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->shouldFilterStorageAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    return v0
.end method

.method protected shouldFilterStorageAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z
    .locals 3

    .prologue
    .line 225
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetViewerConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getMimeTypesFilter()Ljava/util/EnumSet;

    move-result-object v0

    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 227
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_assetViewerConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getIsMimeTypeFilterInclusive()Z

    move-result v2

    .line 226
    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->shouldFilterAssetMimeType(Ljava/util/EnumSet;Ljava/lang/String;Z)Z

    move-result v0

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showEmptySearch()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->assetsToDisplay()Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->checkToSetEmptySearchView(Z)V

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
