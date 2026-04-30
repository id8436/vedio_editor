.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DesignLibraryCollectionListView.java"


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
.field _libraryCollectionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ">;"
        }
    .end annotation
.end field

.field isSearch:Z

.field private final mContext:Landroid/content/Context;

.field query:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->isSearch:Z

    .line 209
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->query:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->mContext:Landroid/content/Context;

    .line 214
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/AdobeClean-SemiLight.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->typeface:Landroid/graphics/Typeface;

    .line 215
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 4

    .prologue
    .line 416
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLMAssetsListProviderMgr;->getProviderForUserAssetType(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetsListProvider;

    move-result-object v0

    .line 417
    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v1

    .line 418
    const/4 v0, 0x0

    .line 425
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;)V

    .line 448
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 449
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 450
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 453
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getAssetsCount()I
    .locals 2

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getLibraryList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getLibraryList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 383
    :cond_0
    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getAssetsCount()I

    move-result v0

    return v0
.end method

.method public getLibraryAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getLibraryList()Ljava/util/ArrayList;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 391
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLibraryList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->_libraryCollectionsList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->assetsToDisplay()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->_libraryCollectionsList:Ljava/util/ArrayList;

    .line 358
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->isSearch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->searchAssetContainName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-object v1, v0

    .line 361
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 362
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->isSelfUnshared()Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->_libraryCollectionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->assetsToDisplay()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->_libraryCollectionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 369
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->populateGuidToLibraryNameMap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->_libraryCollectionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public invalidateLibraryCollectionList()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->_libraryCollectionsList:Ljava/util/ArrayList;

    .line 351
    return-void
.end method

.method protected isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 3

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    .line 403
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const/4 v0, 0x1

    .line 410
    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .prologue
    .line 466
    move-object v2, p1

    check-cast v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;

    .line 467
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getLibraryAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v3

    move-object v0, v3

    .line 469
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 471
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setName(Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getLibraryManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCountOfElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setItemsCount(I)V

    .line 474
    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 476
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-direct {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 480
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-direct {v1, v4, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->contextMenuClickListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;

    .line 482
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->contextMenuClickListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setContextMenuListener(Landroid/view/View$OnClickListener;)V

    .line 485
    :cond_0
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->hasLibraryGuidAlreadyRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->populateGuidToLibraryNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_1
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isShared()Z

    move-result v0

    .line 490
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v1

    .line 491
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isPublic()Z

    move-result v4

    .line 493
    if-eqz v4, :cond_2

    .line 494
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setPublicLibraryImage()V

    .line 503
    :goto_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getLibraryManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCountOfElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)I

    move-result v0

    if-nez v0, :cond_5

    .line 505
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setEmptyCell()V

    .line 506
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_itemView:Landroid/view/View;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 691
    :goto_1
    return-void

    .line 496
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 497
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setIsReadyOnlyImage()V

    goto :goto_0

    .line 498
    :cond_3
    if-eqz v0, :cond_4

    .line 499
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setSharedLibraryImage()V

    goto :goto_0

    .line 501
    :cond_4
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_sharedLibraryView:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_library:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 510
    :cond_5
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 517
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kImage:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 518
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 519
    if-nez v4, :cond_9

    .line 521
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kColorTheme:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 522
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_7

    .line 525
    invoke-static {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/helper/ACColorThemeAssetHelper;->getColorThemeFromElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorTheme;

    move-result-object v0

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorTheme;->_colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColor;

    .line 528
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColor;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 530
    :cond_6
    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setColorTheme(Ljava/util/ArrayList;)V

    .line 531
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_itemView:Landroid/view/View;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 536
    :cond_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kColor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 537
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_8

    .line 541
    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeDesignLibraryUtils;->getRGBColorForElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setColor(I)V

    .line 542
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_itemView:Landroid/view/View;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 548
    :cond_8
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kBrush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 549
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 552
    if-nez v4, :cond_9

    .line 554
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kCharStyle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 555
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 557
    if-nez v4, :cond_9

    .line 559
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kLayerStyle:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 560
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 562
    if-nez v4, :cond_9

    .line 564
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kLooks:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 565
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 567
    if-nez v4, :cond_9

    .line 569
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->KPattern:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 570
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 572
    if-nez v4, :cond_9

    .line 574
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kTemplate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 575
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 577
    if-nez v4, :cond_9

    .line 579
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->k3DMaterial:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 580
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 582
    if-nez v4, :cond_9

    .line 584
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->k3DLight:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 585
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 587
    if-nez v4, :cond_9

    .line 589
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->k3DModel:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 590
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 592
    if-nez v4, :cond_9

    .line 594
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;->kAnimation:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;

    .line 595
    invoke-direct {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getElementOfAssetType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACUserAssetType;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v4

    .line 610
    :cond_9
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    const/high16 v0, 0x43e10000    # 450.0f

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    .line 614
    if-eqz v4, :cond_c

    .line 615
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/vnd.adobe.element.characterstyle+dcx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 616
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 618
    :cond_a
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 619
    if-nez v0, :cond_b

    .line 622
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)V

    .line 677
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 678
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;)I

    move-result v2

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v2, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/ACLibraryAssetRenditionUtils;->maxthumbnailSize(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;ILandroid/app/Activity;Z)I

    move-result v2

    .line 679
    invoke-static {v2, v3, v4, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/ACLibraryAssetRenditionUtils;->fetchAnyImageRepresentation(ILcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Z

    goto/16 :goto_1

    .line 683
    :cond_b
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setImageDrawagle(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 684
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_itemView:Landroid/view/View;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 688
    :cond_c
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setImageDrawagle(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 689
    iget-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_itemView:Landroid/view/View;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_library_collection_cell:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 460
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;Landroid/view/View;)V

    return-object v1
.end method
