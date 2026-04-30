.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;
.source "CompositionsListView.java"


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

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;Landroid/content/Context;)V

    .line 125
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->mContext:Landroid/content/Context;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->isLoki:Ljava/lang/Boolean;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->isLoki:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v0, v1, :cond_1

    .line 402
    :cond_0
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->getItemCount()I

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->getPackagePagesCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->getPackageAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    move-result-object v0

    .line 391
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->getAssetDataSourceTypeFor(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v0

    .line 393
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v0, v1, :cond_1

    .line 394
    :cond_0
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPackageAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->getPackagePagesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPackagePagesCount()I
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->getPackagePagesList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->getPackagePagesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 252
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
    .line 234
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_assetDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    if-eqz v0, :cond_2

    .line 235
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->isSearch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_assetDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->searchAssets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 236
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    .line 237
    if-eqz v0, :cond_2

    .line 238
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

    .line 239
    instance-of v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_assetDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->assetsToDisplay()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public invalidateMobilePackageDataSources()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->_assetPackagePagesList:Ljava/util/ArrayList;

    .line 231
    return-void
.end method

.method protected isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 271
    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    .line 272
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 279
    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .prologue
    .line 297
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->getPackageAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    move-result-object v4

    .line 298
    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->getAssetDataSourceTypeFor(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v0

    .line 300
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v0, v1, :cond_2

    .line 301
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 386
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v3, p1

    .line 303
    check-cast v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;

    .line 306
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->setName(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->setItemsCount(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 308
    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->setPages(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 309
    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->setIcon(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 312
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 313
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 314
    :cond_3
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->setEmptyCell()V

    goto :goto_0

    .line 318
    :cond_4
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    invoke-direct {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->setAssetClickListner(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->isLoki:Ljava/lang/Boolean;

    .line 322
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->isLoki:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    invoke-direct {v1, v2, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->contextMenuClickListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;

    .line 324
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->contextMenuClickListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->setContextMenuListener(Landroid/view/View$OnClickListener;)V

    .line 328
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    new-instance v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 332
    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    .line 334
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 335
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

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

    .line 336
    if-nez v0, :cond_7

    .line 338
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v8

    .line 339
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;Ljava/util/ArrayList;)V

    .line 375
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    invoke-virtual {v2, v1, v8, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 381
    :goto_1
    iget-wide v0, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    iput-wide v0, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    .line 382
    iget-wide v0, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;->index:J

    const-wide/16 v8, 0x3

    cmp-long v0, v0, v8

    if-lez v0, :cond_6

    goto/16 :goto_0

    .line 377
    :cond_7
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    int-to-long v8, v1

    invoke-static {v3, v8, v9, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;JLandroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 285
    if-nez p2, :cond_0

    .line 286
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_composition_cell:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 289
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;Landroid/view/View;)V

    goto :goto_0
.end method
