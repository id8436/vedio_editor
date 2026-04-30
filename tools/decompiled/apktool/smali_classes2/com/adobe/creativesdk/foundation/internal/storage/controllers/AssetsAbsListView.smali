.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;
.source "AssetsAbsListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewListCellDelegate;


# instance fields
.field protected _absListView:Landroid/widget/AbsListView;

.field protected _assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;

.field protected _mainRootView:Landroid/view/View;

.field private _onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final _requestedThumbnails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
            ">;"
        }
    .end annotation
.end field

.field protected _swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_requestedThumbnails:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_requestedThumbnails:Ljava/util/HashMap;

    return-object v0
.end method

.method public static adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;
    .locals 4

    .prologue
    .line 284
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->getAdjustedDimension(F)D

    move-result-wide v0

    double-to-float v0, v0

    .line 285
    iget v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->getAdjustedDimension(F)D

    move-result-wide v2

    double-to-float v1, v2

    .line 287
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    .line 288
    return-object v2
.end method

.method public static getAdjustedDimension(F)D
    .locals 5

    .prologue
    .line 245
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 251
    float-to-double v0, p0

    .line 253
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x140

    if-lt v3, v4, :cond_1

    .line 254
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    float-to-double v0, v0

    .line 258
    :cond_0
    :goto_0
    return-wide v0

    .line 255
    :cond_1
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xa0

    if-le v2, v3, :cond_0

    .line 256
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected attachScrollListenerToListView()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 323
    return-void
.end method

.method abstract cancelThumbnailRenditionRequestOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V
.end method

.method protected abstract createAssetItemsAdapter(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;
.end method

.method getBitmapFromBytesData([B)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getConcreteAbsListView(Landroid/content/Context;)Landroid/widget/AbsListView;
.end method

.method public getInstanceState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AbsListInstanceState;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AbsListInstanceState;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)V

    .line 67
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AbsListInstanceState;->_listViewState:Landroid/os/Parcelable;

    .line 68
    return-object v0
.end method

.method protected abstract getMainRootView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_mainRootView:Landroid/view/View;

    return-object v0
.end method

.method public abstract handleAssetCellSelectionToggle(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;)V
.end method

.method protected abstract handleListItemClick(I)V
.end method

.method protected handleListItemLongClick(I)V
    .locals 0

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->handleListItemClick(I)V

    .line 384
    return-void
.end method

.method handleScrollOffsetChange()V
    .locals 6

    .prologue
    .line 302
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 305
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getCount()I

    move-result v2

    .line 307
    if-nez v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    int-to-double v4, v1

    sub-int v0, v1, v0

    sub-int v0, v2, v0

    int-to-double v0, v0

    div-double v0, v4, v0

    .line 312
    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->loadMoreItemsFromDataSource()V

    goto :goto_0
.end method

.method protected abstract isAssetSelected(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
.end method

.method loadAndDisplayThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->shouldFilterOutAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v1

    .line 136
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setDisabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_requestedThumbnails:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->cancelThumbnailRenditionRequestOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V

    .line 143
    :cond_0
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoDuration:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;IZ)V

    .line 181
    invoke-virtual {p0, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->loadThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;)V

    .line 182
    return-void
.end method

.method protected abstract loadAssetRendition(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<[B",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)Z"
        }
    .end annotation
.end method

.method loadThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;)V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;)V

    .line 236
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_requestedThumbnails:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v1

    .line 239
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->loadAssetRendition(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Z

    .line 242
    return-void
.end method

.method public performInitialization(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 328
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->getMainRootView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_mainRootView:Landroid/view/View;

    .line 329
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->getConcreteAbsListView(Landroid/content/Context;)Landroid/widget/AbsListView;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    .line 332
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$4;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 354
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->createAssetItemsAdapter(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;

    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getRealAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    const-string/jumbo v0, "#2098f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 358
    const-string/jumbo v1, "#f5f9fa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 360
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v1, v3, v5

    const/4 v4, 0x2

    aput v0, v3, v4

    const/4 v0, 0x3

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 362
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->attachScrollListenerToListView()V

    .line 364
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$5;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 372
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$6;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 379
    return-void
.end method

.method public refreshDueToDataChange()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->invalidateAssetsList()V

    .line 392
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->markDataSetChanged()V

    .line 393
    return-void
.end method

.method public refreshDueToNewItemsInsertion()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->refreshDueToDataChange()V

    .line 57
    return-void
.end method

.method public refreshOnlyListView()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 387
    return-void
.end method

.method public restoreFromState(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;)V
    .locals 2

    .prologue
    .line 73
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AbsListInstanceState;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AbsListInstanceState;

    .line 75
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_absListView:Landroid/widget/AbsListView;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AbsListInstanceState;->_listViewState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected shouldFilterOutAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public showLoadingFooter()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public startRefreshAnimation()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 294
    return-void
.end method

.method public stopRefreshAnimation()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 298
    return-void
.end method
