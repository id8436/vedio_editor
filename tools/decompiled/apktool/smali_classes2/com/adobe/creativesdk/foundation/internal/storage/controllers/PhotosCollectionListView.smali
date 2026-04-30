.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;
.source "PhotosCollectionListView.java"


# instance fields
.field private _photoCollectionAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;

.field private _photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

.field private _reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field private rightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->rightMargin:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->rightMargin:I

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->rightMargin:I

    return p1
.end method


# virtual methods
.method protected addAssetRenditionToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Z
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImageWithBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method protected addAssetRenditionToCache([BLjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z
    .locals 4
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
    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$1;

    invoke-direct {v2, p0, p5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$2;

    invoke-direct {v3, p0, p6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImageWithData(Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected createAssetItemsAdapter(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_photoCollectionAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;

    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_photoCollectionAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;

    return-object v0
.end method

.method protected getPhotoCollectionNavigationCommand(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->setCollectionGUID(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->setCollectionName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->setCatalogGUID(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->setCatalogName(Ljava/lang/String;)V

    .line 115
    return-object v0
.end method

.method protected handleListItemClick(I)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    .line 126
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->getPhotoCollectionNavigationCommand(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->navigateToCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;)V

    goto :goto_0
.end method

.method protected handlePopupMenuClick(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 137
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    .line 138
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 139
    if-eqz v1, :cond_0

    .line 140
    invoke-interface {v1, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V

    .line 143
    :cond_0
    return-void
.end method

.method protected loadAssetRenditionFromCache(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    :cond_0
    return-object v0
.end method

.method public searchInPhotoCollections(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_photoCollectionAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->isSearch:Z

    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_photoCollectionAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->query:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->refreshDueToDataChange()V

    .line 51
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->showEmptySearch()V

    .line 52
    return-void
.end method

.method public setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 98
    return-void
.end method

.method public set_photoCollectionsDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    .line 41
    return-void
.end method

.method public showEmptySearch()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->_photoCollectionAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->getAssetsCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->checkToSetEmptySearchView(Z)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
