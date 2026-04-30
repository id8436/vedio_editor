.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MobileCreationPackageCollectionListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field _assetPackagePagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;",
            ">;"
        }
    .end annotation
.end field

.field private isLoki:Ljava/lang/Boolean;

.field isSearch:Z

.field private final mContext:Landroid/content/Context;

.field query:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 221
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->isSearch:Z

    .line 217
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->query:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->mContext:Landroid/content/Context;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->isLoki:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->isLoki:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->getPackagePagesCount()I

    move-result v0

    return v0
.end method

.method public getPackageAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->getPackagePagesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 405
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 408
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPackagePagesCount()I
    .locals 2

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->getPackagePagesList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->getPackagePagesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 397
    :cond_0
    return v0
.end method

.method protected getPackagePagesList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;->_assetDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    if-eqz v0, :cond_2

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    .line 379
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->isSearch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;->_assetDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->searchAssets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 381
    :goto_0
    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 384
    instance-of v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;->_assetDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->assetsToDisplay()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public invalidateMobilePackageDataSources()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    .line 375
    return-void
.end method

.method protected isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 3

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 416
    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    .line 417
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const/4 v0, 0x1

    .line 424
    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 438
    move-object v3, p1

    check-cast v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;

    .line 439
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->getPackageAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    move-result-object v4

    .line 441
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->setName(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->setItemsCount(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 443
    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->setPages(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 444
    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->setIcon(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 446
    instance-of v0, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSMixFile;

    if-nez v0, :cond_0

    instance-of v0, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSFixFile;

    if-eqz v0, :cond_4

    .line 449
    :cond_0
    iget-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_threeImagesLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    :goto_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    invoke-direct {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->setAssetClickListner(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->isLoki:Ljava/lang/Boolean;

    .line 459
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->isLoki:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    invoke-direct {v1, v2, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;->contextMenuClickListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;

    .line 461
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;->contextMenuClickListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->setContextMenuListener(Landroid/view/View$OnClickListener;)V

    .line 464
    :cond_1
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 467
    :cond_2
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->setEmptyCell()V

    .line 554
    :cond_3
    :goto_1
    return-void

    .line 453
    :cond_4
    iget-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_threeImagesLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 472
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 475
    new-instance v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 476
    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    .line 478
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 480
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;->_reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 481
    if-nez v0, :cond_8

    .line 484
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v8

    .line 485
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;Ljava/util/ArrayList;)V

    .line 521
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    invoke-virtual {v2, v1, v8, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 529
    :goto_2
    iget-wide v0, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    iput-wide v0, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    .line 530
    iget-wide v0, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    const-wide/16 v8, 0x3

    cmp-long v0, v0, v8

    if-lez v0, :cond_6

    .line 534
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 536
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 539
    :pswitch_0
    iget-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_secondThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_thirdThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    iget-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_fourthThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 525
    :cond_8
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    int-to-long v8, v1

    invoke-static {v3, v8, v9, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;JLandroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_2

    .line 544
    :pswitch_1
    iget-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_thirdThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    iget-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_fourthThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 548
    :pswitch_2
    iget-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_fourthThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_mobilecreation_package_cell:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 430
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;Landroid/view/View;)V

    return-object v1
.end method
