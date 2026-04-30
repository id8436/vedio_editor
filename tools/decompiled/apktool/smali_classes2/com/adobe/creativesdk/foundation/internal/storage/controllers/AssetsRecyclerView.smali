.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;
.source "AssetsRecyclerView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewListCellDelegate;


# instance fields
.field protected _assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

.field protected _itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field protected _layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field protected _mainRootView:Landroid/view/View;

.field private _onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field protected _recyclerView:Landroid/support/v7/widget/RecyclerView;

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
    .line 79
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_requestedThumbnails:Ljava/util/HashMap;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->setAssetEmptyBackground(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_requestedThumbnails:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getCellDataFromAssetFile(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->loadAndDisplayModifiedPhotoCount(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    return-void
.end method

.method public static adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;
    .locals 4

    .prologue
    .line 100
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getAdjustedDimension(F)D

    move-result-wide v0

    double-to-float v0, v0

    .line 101
    iget v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getAdjustedDimension(F)D

    move-result-wide v2

    double-to-float v1, v2

    .line 103
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-direct {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    .line 104
    return-object v2
.end method

.method public static getAdjustedDimension(F)D
    .locals 5

    .prologue
    .line 84
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 87
    float-to-double v0, p0

    .line 89
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x140

    if-lt v3, v4, :cond_1

    .line 90
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    float-to-double v0, v0

    .line 94
    :cond_0
    :goto_0
    return-wide v0

    .line 91
    :cond_1
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xa0

    if-le v2, v3, :cond_0

    .line 92
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method private getCellDataFromAssetFile(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
    .locals 4

    .prologue
    .line 602
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;-><init>()V

    .line 603
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    .line 604
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->title:Ljava/lang/String;

    .line 605
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getModificationDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->modificationDate:Ljava/util/Date;

    .line 606
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->creationDate:Ljava/util/Date;

    .line 607
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getOptionalMetadata()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->optionalMetadata:Lorg/json/JSONObject;

    .line 608
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->imageMD5Hash:Ljava/lang/String;

    .line 609
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    .line 610
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getFileSize()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->fileSize:J

    .line 611
    return-object v0
.end method

.method private loadAndDisplayModifiedPhotoCount(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 2

    .prologue
    .line 584
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$9;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$9;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;)V

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->assetCount(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 599
    return-void
.end method

.method private setAssetEmptyBackground(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeAssetInfoUtil;->getEmptyCellImageForExtension(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 272
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private setRecyclerPadding()V
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_assetbrowser_grid_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 616
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getHostActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/NavBarUtil;->getTranslucentNavHeight(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 617
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

.method protected attachScrollListenerToListView()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 162
    return-void
.end method

.method abstract cancelThumbnailRenditionRequestOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V
.end method

.method protected abstract createAssetItemsAdapter(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;
.end method

.method protected abstract getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;
.end method

.method protected getFirstVisiblePosition()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 146
    if-nez v1, :cond_0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getInstanceState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 387
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$RecyclerViewInstanceState;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$RecyclerViewInstanceState;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;)V

    .line 388
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$RecyclerViewInstanceState;->_layoutManagerState:Landroid/os/Parcelable;

    .line 390
    :cond_0
    return-object v0
.end method

.method protected abstract getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.end method

.method protected getLastVisiblePosition()I
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end method

.method protected abstract getMainRootView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_mainRootView:Landroid/view/View;

    return-object v0
.end method

.method public abstract handleAssetCellSelectionToggle(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;)V
.end method

.method protected abstract handleListItemClick(I)V
.end method

.method protected handleListItemLongClick(I)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected handlePopupMenuClick(ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method handleScrollOffsetChange()V
    .locals 6

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    .line 174
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getLastVisiblePosition()I

    move-result v1

    .line 176
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getItemCount()I

    move-result v2

    .line 178
    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    int-to-double v4, v1

    sub-int v0, v1, v0

    sub-int v0, v2, v0

    int-to-double v0, v0

    div-double v0, v4, v0

    .line 183
    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 185
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 186
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 187
    :cond_2
    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->loadMoreItemsFromDataSource()V

    goto :goto_0
.end method

.method protected abstract isAssetSelected(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
.end method

.method protected loadAndDisplayLatestModifiedFileRendition(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$7;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getPageData(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 581
    return-void
.end method

.method loadAndDisplayThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->shouldFilterOutAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v1

    .line 195
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setDisabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_requestedThumbnails:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->cancelThumbnailRenditionRequestOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V

    .line 202
    :cond_0
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoDuration:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$2;

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;IZ)V

    .line 261
    invoke-virtual {p0, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->loadThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;)V

    .line 262
    return-void
.end method

.method loadAndDisplayThumbnailForFolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;IZZ)V
    .locals 7

    .prologue
    .line 278
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->shouldFilterOutAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v6

    .line 279
    invoke-virtual {p1, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setDisabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_requestedThumbnails:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    .line 282
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->cancelThumbnailRenditionRequestOfAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V

    .line 286
    :cond_0
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoDuration:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_videoLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;ZZIZ)V

    .line 302
    invoke-virtual {p0, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->loadThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;)V

    .line 303
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
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract loadAssetRenditionFromCache(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Landroid/graphics/Bitmap;
.end method

.method loadThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;)V
    .locals 4

    .prologue
    const/16 v0, 0x10e

    .line 306
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;)V

    .line 359
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_requestedThumbnails:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->optionalMetadata:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->optionalMetadata:Lorg/json/JSONObject;

    const-string/jumbo v3, "width"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 363
    :cond_0
    int-to-float v1, v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    .line 364
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v0

    .line 368
    :goto_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->loadAssetRendition(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Z

    .line 371
    return-void

    .line 366
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    move-object v0, v1

    goto :goto_0
.end method

.method public performInitialization(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getMainRootView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_mainRootView:Landroid/view/View;

    .line 417
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 418
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$5;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 435
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 436
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 439
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->createAssetItemsAdapter(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    .line 440
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getRealAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 442
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 443
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 445
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 449
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_recylerview_padding_bottom_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 450
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$RecyclerViewBottomOffsetDecoration;

    float-to-int v0, v0

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$RecyclerViewBottomOffsetDecoration;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;I)V

    .line 451
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 453
    const-string/jumbo v0, "#2098f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 454
    const-string/jumbo v1, "#f5f9fa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 456
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    aput v0, v3, v4

    const/4 v0, 0x3

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 458
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->attachScrollListenerToListView()V

    .line 460
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->setRecyclerPadding()V

    .line 461
    return-void
.end method

.method public refreshDueToDataChange()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->invalidateAssetsList()V

    .line 470
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->markDataSetChanged()V

    .line 471
    return-void
.end method

.method public refreshDueToNewItemsInsertion()V
    .locals 0

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->refreshDueToDataChange()V

    .line 376
    return-void
.end method

.method public refreshLayoutDueToOrientationChange()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 480
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_3

    move v1, v2

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getHostActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 503
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->refreshDueToDataChange()V

    .line 509
    if-eq v1, v2, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 511
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->setRecyclerPadding()V

    .line 512
    return-void

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_5

    .line 488
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v1, v0, [I

    .line 490
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 491
    const/4 v0, 0x0

    aget v0, v1, v0

    move v1, v0

    .line 496
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getHostActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/utils/ColumnCountUtil;->getColumnCount(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 493
    goto :goto_1

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_6

    .line 498
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v2

    .line 499
    goto :goto_0
.end method

.method public refreshOnlyListView()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 465
    return-void
.end method

.method protected resetFolderView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;ZZZ)V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method public restoreFromState(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;)V
    .locals 2

    .prologue
    .line 395
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$RecyclerViewInstanceState;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$RecyclerViewInstanceState;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$RecyclerViewInstanceState;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$RecyclerViewInstanceState;->_layoutManagerState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 400
    :cond_0
    return-void
.end method

.method protected shouldFilterOutAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public showLoadingFooter()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public startRefreshAnimation()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 408
    return-void
.end method

.method public stopRefreshAnimation()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 412
    return-void
.end method
