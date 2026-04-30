.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;
.source "PhotosBaseListView.java"


# instance fields
.field private _photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method cancelThumbnailRenditionRequestOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->cancelDownloadRequest()V

    .line 187
    :cond_0
    return-void
.end method

.method protected getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;-><init>(ILandroid/content/Context;)V

    return-object v0
.end method

.method protected getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/ColumnCountUtil;->getColumnCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 77
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setGapStrategy(I)V

    .line 78
    return-object v0
.end method

.method protected getMainRootView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .prologue
    .line 51
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_storage_assets_gridview:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_gridview_swipe_refresh_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 55
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_assetbrowser_StaggeredGridView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$integer;->adobe_csdk_AUTOMATION_PHOTOS_ASSET_RECYCLER_VIEW:I

    const-string/jumbo v3, "PHOTOS_ASSET_RECYCLER_VIEW"

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->setTag(ILjava/lang/Object;)V

    .line 57
    return-object v1
.end method

.method public getSelectionOverallVisibility()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public handleAssetCellSelectionToggle(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getPosition()I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 85
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;

    .line 86
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->isMultiSelectModeActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 89
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->isMarkedSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->markSelected(Z)V

    .line 92
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->removeSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->markSelected(Z)V

    .line 97
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->addSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    goto :goto_0
.end method

.method protected isAssetSelected(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->containsAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Z

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadAssetRendition(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Z
    .locals 7
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
    const/4 v6, 0x1

    .line 108
    iget-object v3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    .line 112
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCoverAsset()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCoverAsset()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getGUID()Ljava/lang/String;

    move-result-object v3

    .line 115
    :cond_0
    invoke-virtual {p0, v3, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->loadAssetRenditionFromCache(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 171
    :cond_1
    :goto_0
    return v6

    .line 122
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;

    move-object v1, p0

    move-object v2, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)V

    .line 154
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    .line 155
    instance-of v2, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    if-eqz v2, :cond_3

    .line 157
    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    .line 158
    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->getRenditionForCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    goto :goto_0

    .line 161
    :cond_3
    instance-of v2, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v2, :cond_1

    .line 163
    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 164
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getRenditions()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "thumbnail2x"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;

    .line 165
    if-eqz v2, :cond_4

    .line 166
    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->downloadRendition(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    goto :goto_0

    .line 169
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showEmptySearch()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
