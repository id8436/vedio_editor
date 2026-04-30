.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;
.source "CompositionsListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;-><init>(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V

    .line 53
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 54
    return-void
.end method


# virtual methods
.method protected createRecyclerViewAdapter(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/RecyclerView;",
            ")",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_packageAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;

    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_packageAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;

    return-object v0
.end method

.method protected getAssetPackageCollectionNavigationCommand(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;-><init>()V

    .line 100
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->setCollectionGUID(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->setCollectionName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getHref()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->setCollectionHref(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getParentHref()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->setParentHref(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->setAssetPackagePages(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V

    .line 105
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->setDataSourceType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    if-eqz v1, :cond_2

    .line 108
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->setDataSourceType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V

    goto :goto_0

    .line 109
    :cond_2
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToMobileCreationPackageCollectionData;->setDataSourceType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V

    goto :goto_0
.end method

.method protected getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/ColumnCountUtil;->getColumnCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_numColumnsInTwoWay:I

    .line 70
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_numColumnsInTwoWay:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;II)V

    return-object v0
.end method

.method protected handleItemClick(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_packageAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->getPackageAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    move-result-object v0

    .line 77
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;

    if-eqz v1, :cond_2

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;->handleItemClick(Landroid/view/View;I)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    if-eqz v0, :cond_1

    .line 84
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;-><init>()V

    .line 85
    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;->_packagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 86
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    .line 87
    iput p2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;->startIndex:I

    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 90
    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handleAssetClickAction(Ljava/lang/Object;)V

    goto :goto_0
.end method
