.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;
.source "PhotosAssetListView.java"


# instance fields
.field private PHOTO_UPLOAD_TYPE:I

.field private _photoAssetsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

.field private _photoItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;

.field private _photoUploadObservers:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;

.field private _reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field private _uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;"
        }
    .end annotation
.end field

.field private _uploadingPhotoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoUploadObservers:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;

    .line 52
    const/16 v0, 0x16

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->PHOTO_UPLOAD_TYPE:I

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoAssetsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)I
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->getUploadingPhotosSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->PHOTO_UPLOAD_TYPE:I

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadingPhotoArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoUploadObservers:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    return-object v0
.end method

.method private getUploadingPhotosSize()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadingPhotoArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadingPhotoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected addAssetRenditionToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImageWithBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected addAssetRenditionToCache([BLjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z
    .locals 3
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

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$1;

    invoke-direct {v1, p0, p5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$2;

    invoke-direct {v2, p0, p6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImageWithData(Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public cleanUpUpload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoUploadObservers:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->resetBinder()V

    .line 310
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    .line 311
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadingPhotoArray:Ljava/util/ArrayList;

    .line 312
    return-void
.end method

.method protected createAssetItemsAdapter(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;

    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;

    return-object v0
.end method

.method public getSelectionOverallVisibility()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->isMultiSelectModeActive()Z

    move-result v0

    return v0
.end method

.method protected handleListItemClick(I)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handleAssetClickAction(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleListItemLongClick(I)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v1

    .line 144
    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handleLongClickOnAsset(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handlePopupMenuClick(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v1

    .line 154
    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected loadAssetRenditionFromCache(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    :cond_0
    return-object v0
.end method

.method public refreshDueToDataChange()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->invalidateAssetsList()V

    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->notifyDataSetChanged()V

    .line 165
    return-void
.end method

.method public searchInPhotoAssets(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->isSearch:Z

    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->query:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->refreshDueToDataChange()V

    .line 75
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->showEmptySearch()V

    .line 76
    return-void
.end method

.method public setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 69
    return-void
.end method

.method public set_photoAssetsDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoAssetsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    .line 60
    return-void
.end method

.method public setupUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadingPhotoArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 301
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadingPhotoArray:Ljava/util/ArrayList;

    .line 303
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadingPhotoArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 304
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->refreshDueToDataChange()V

    .line 306
    :cond_0
    return-void
.end method

.method public showEmptySearch()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->_photoItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->getAssetsCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->checkToSetEmptySearchView(Z)V

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
