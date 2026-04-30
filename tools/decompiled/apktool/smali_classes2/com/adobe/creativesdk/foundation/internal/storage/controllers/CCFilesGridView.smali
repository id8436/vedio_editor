.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;
.source "CCFilesGridView.java"


# static fields
.field private static final T:Ljava/lang/String;


# instance fields
.field private _reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field private _staggeredGridView:Landroid/support/v7/widget/RecyclerView;

.field private isMoveFragment:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->isMoveFragment:Z

    .line 86
    return-void
.end method


# virtual methods
.method protected addAssetRenditionToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Z
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

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

    .line 80
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
    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

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

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$1;

    invoke-direct {v2, p0, p5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$2;

    invoke-direct {v3, p0, p6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImageWithData(Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method protected createAssetItemsAdapter(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;Landroid/content/Context;)V

    return-object v0
.end method

.method protected createUploadCombinedAdapter()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$LocalUploadAssetsCCFilesCombinedGridAdapter;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$LocalUploadAssetsCCFilesCombinedGridAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;Landroid/content/Context;)V

    return-object v0
.end method

.method protected getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_staggeredGridView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->getHostActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;-><init>(ILandroid/content/Context;)V

    return-object v0
.end method

.method protected getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/ColumnCountUtil;->getColumnCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 139
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setGapStrategy(I)V

    .line 140
    return-object v0
.end method

.method protected getMainRootView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .prologue
    .line 95
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 97
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_storage_assets_gridview:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_gridview_swipe_refresh_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 99
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_assetbrowser_StaggeredGridView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_staggeredGridView:Landroid/support/v7/widget/RecyclerView;

    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_staggeredGridView:Landroid/support/v7/widget/RecyclerView;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$integer;->adobe_csdk_AUTOMATION_FILES_ASSET_RECYCLER_VIEW:I

    const-string/jumbo v3, "FILES_ASSET_RECYCLER_VIEW"

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->setTag(ILjava/lang/Object;)V

    .line 102
    return-object v1
.end method

.method protected handleListItemClick(I)V
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->T:Ljava/lang/String;

    const-string/jumbo v1, "handleListItemClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    .line 212
    :goto_0
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->isMoveFragment:Z

    if-eqz v0, :cond_1

    .line 219
    :goto_1
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :cond_1
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->handleListItemClick(I)V

    goto :goto_1
.end method

.method protected loadAssetRenditionFromCache(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

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

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    :cond_0
    return-object v0
.end method

.method public performInitialization(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->performInitialization(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public refreshDueToDataChange()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->assetsToDisplay()Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getAdobeStorageSortIndexCollation()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->createSectionDataFromMaster(Ljava/util/ArrayList;)Z

    .line 109
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->refreshDueToDataChange()V

    .line 110
    return-void
.end method

.method protected resetFolderView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;ZZZ)V
    .locals 1

    .prologue
    .line 147
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->isMoveFragment:Z

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->resetFolderView(ZZZZ)V

    .line 153
    return-void
.end method

.method public setMoveOperation(Z)V
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->isMoveFragment:Z

    .line 223
    return-void
.end method

.method public setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 91
    return-void
.end method
