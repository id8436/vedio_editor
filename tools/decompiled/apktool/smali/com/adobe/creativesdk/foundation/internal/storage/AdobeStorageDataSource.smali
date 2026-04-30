.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;
.super Ljava/lang/Object;
.source "AdobeStorageDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageSearchProtocol;
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageSortProtocol;


# static fields
.field private static final AdobeStorageDataSourceDidLoadNewPageNotification:Ljava/lang/String; = "kAdobeStorageDataSourceDidLoadNewPageNotification"

.field private static kItemsPerPageLimit:I


# instance fields
.field private _delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private _internalFilters:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

.field private _loadingItemsFromScratch:Z

.field private _pageLimit:I

.field private _targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

.field private _totalAssetsLoaded:I

.field abortLoadingMorePages:Z

.field abortLoadingMorePagesWhileFiltering:Z

.field displayAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation
.end field

.field filter:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation
.end field

.field filterInclusive:Z

.field filterString:Ljava/lang/String;

.field filteredDisplayAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation
.end field

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation
.end field

.field loadingItems:Z

.field loadingItemsWhileFiltering:Z

.field recreateFilteredAssets:Z

.field public sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

.field sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x14

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->kItemsPerPageLimit:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_loadingItemsFromScratch:Z

    .line 55
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_totalAssetsLoaded:I

    .line 56
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_pageLimit:I

    .line 166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->createFreshSortIndexCollator()V

    .line 167
    return-void
.end method

.method private RunInternalFilters(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_internalFilters:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-object p1

    .line 383
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 386
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_internalFilters:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;->FilterOnlyFolders:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    if-ne v3, v4, :cond_2

    .line 388
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v3, :cond_1

    .line 389
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    :cond_2
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_internalFilters:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;->FilterOnlyFiles:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    if-ne v3, v4, :cond_1

    .line 393
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v3, :cond_1

    .line 394
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 397
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->RunInternalFilters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_totalAssetsLoaded:I

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_totalAssetsLoaded:I

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_loadingItemsFromScratch:Z

    return v0
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;Z)Z
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_loadingItemsFromScratch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->createFreshSortIndexCollator()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    return-object v0
.end method

.method private createFreshSortIndexCollator()V
    .locals 2

    .prologue
    .line 613
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortType()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    .line 615
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne v0, v1, :cond_0

    .line 617
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    .line 618
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    .line 625
    :goto_0
    return-void

    .line 622
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    .line 623
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    goto :goto_0
.end method

.method private getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public assetsToDisplay()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeSearch(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 850
    return-void
.end method

.method public fetchAndFilterAllAdditionalPages()V
    .locals 3

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItemsWhileFiltering:Z

    if-eqz v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItemsWhileFiltering:Z

    .line 786
    const/4 v0, 0x0

    .line 789
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->kItemsPerPageLimit:I

    .line 792
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v1

    .line 793
    if-eqz v1, :cond_2

    .line 794
    invoke-interface {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->didStartLoadingMorePagesToFilter()V

    .line 796
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)V

    .line 836
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getNextPage(ILcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;)V

    goto :goto_0

    .line 840
    :cond_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_0

    .line 842
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->didStopLoadingMorePagesToFilter()V

    goto :goto_0
.end method

.method public filterForFolders()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 861
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 863
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 866
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v3, :cond_0

    .line 868
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 873
    :cond_1
    return-object v2
.end method

.method public filterWithSearchString(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 714
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItems:Z

    if-eqz v2, :cond_1

    .line 716
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 724
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 725
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 727
    :cond_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_4

    :cond_3
    if-eqz v0, :cond_6

    .line 729
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    .line 735
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    .line 738
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 739
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 741
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 742
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 743
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 733
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    goto :goto_1

    .line 746
    :cond_7
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->recreateFilteredAssets:Z

    .line 749
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    .line 751
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 752
    if-eqz v0, :cond_8

    .line 753
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->didClearFilterString()V

    .line 756
    :cond_8
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->fetchAndFilterAllAdditionalPages()V

    goto :goto_0

    .line 760
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    .line 765
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->recreateFilteredAssets:Z

    .line 767
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 768
    if-eqz v0, :cond_0

    .line 769
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->didClearFilterString()V

    goto/16 :goto_0
.end method

.method public getAdobeStorageSortIndexCollation()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->count()I

    move-result v0

    return v0
.end method

.method public getDataInternalFilters()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_internalFilters:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    return-object v0
.end method

.method public getSortType()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    return-object v0
.end method

.method public isFilterInclusive()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterInclusive:Z

    return v0
.end method

.method public loadItems()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadItemsFromScratch(Z)Z

    .line 297
    return-void
.end method

.method public loadItemsFromScratch()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadItemsFromScratch(Z)Z

    move-result v0

    return v0
.end method

.method public loadItemsFromScratch(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 313
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItems:Z

    if-eqz v1, :cond_0

    .line 315
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->abortLoadingMorePages:Z

    if-nez v1, :cond_0

    .line 375
    :goto_0
    return v0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v1, :cond_3

    .line 321
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_loadingItemsFromScratch:Z

    .line 322
    if-eqz p1, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->resetFilterString()V

    .line 325
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resetPaging()V

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    .line 329
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_totalAssetsLoaded:I

    .line 331
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_1

    .line 333
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->willLoadDataFromScratch()V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 337
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_2

    .line 339
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->willLoadNextPageForExistingCollection()V

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadNextPage()Z

    move-result v0

    goto :goto_0

    .line 346
    :cond_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_4

    .line 348
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->willLoadNextPageForNonExistingCollection()V

    .line 350
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    .line 357
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;->SORT_STATE_ASCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    if-ne v0, v1, :cond_5

    .line 358
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    .line 363
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne v1, v2, :cond_6

    .line 364
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    .line 371
    :goto_2
    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getRootOrderedByField(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 373
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadNextPage()Z

    move-result v0

    goto :goto_0

    .line 360
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    goto :goto_1

    .line 366
    :cond_6
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    goto :goto_2

    .line 375
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadNextPage()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 408
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItems:Z

    if-eqz v2, :cond_1

    .line 410
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->abortLoadingMorePages:Z

    if-nez v2, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v0

    .line 413
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItems:Z

    .line 419
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_pageLimit:I

    if-nez v0, :cond_2

    .line 420
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->kItemsPerPageLimit:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_pageLimit:I

    .line 421
    :cond_2
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_pageLimit:I

    .line 422
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;I)V

    .line 607
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_pageLimit:I

    invoke-virtual {v0, v3, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getNextPage(ILcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;)V

    move v0, v1

    .line 609
    goto :goto_0
.end method

.method public loadNextPageOfData()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadItemsFromScratch(Z)Z

    .line 77
    return-void
.end method

.method public purifiedAssetsToDisplay()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 270
    :goto_0
    return-object v0

    .line 201
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;->FilterOnlyFiles:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->setDataInternalFilters(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;)V

    .line 202
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->RunInternalFilters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 203
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->setDataInternalFilters(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;)V

    .line 205
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filter:Ljava/util/EnumSet;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 206
    goto :goto_0

    .line 208
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 212
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 213
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->shouldFilterOutAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Z

    move-result v3

    .line 214
    if-nez v3, :cond_2

    .line 215
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 270
    goto :goto_0
.end method

.method public resetDelegate()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->setAdobeStorageDataSourceDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;)V

    .line 82
    return-void
.end method

.method public resetFilterString()V
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public resetSortIndexCollator()Z
    .locals 2

    .prologue
    .line 640
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortType()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne v1, v0, :cond_0

    .line 643
    const/4 v0, 0x0

    .line 650
    :goto_0
    return v0

    .line 647
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    move-result-object v1

    .line 649
    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortCollectionByType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;)V

    .line 650
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAbortLoadingMorePages(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->abortLoadingMorePages:Z

    .line 176
    return-void
.end method

.method public setAdobeStorageDataSourceDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;)V
    .locals 1

    .prologue
    .line 111
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_delegate:Ljava/lang/ref/WeakReference;

    .line 112
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataInternalFilters(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_internalFilters:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    .line 122
    return-void
.end method

.method public setFilter(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filter:Ljava/util/EnumSet;

    .line 148
    return-void
.end method

.method public setInclusiveFilter(Z)V
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterInclusive:Z

    .line 152
    return-void
.end method

.method protected setPageLimit(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_pageLimit:I

    .line 90
    return-void
.end method

.method public setTargetCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 161
    return-void
.end method

.method shouldFilterOutAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Z
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filter:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getType()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterInclusive:Z

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->shouldFilterAssetMimeType(Ljava/util/EnumSet;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method shouldRecreateFilteredAssets()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->recreateFilteredAssets:Z

    return v0
.end method

.method public sortCollectionByType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 656
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne p1, v0, :cond_4

    .line 658
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAlphaIndexCollation;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    .line 668
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    .line 669
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    .line 675
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;->SORT_STATE_ASCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    if-ne p2, v0, :cond_5

    .line 676
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    .line 680
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne v1, v2, :cond_6

    .line 681
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    .line 687
    :goto_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resetPagingOrderedByField(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)V

    .line 688
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_1

    .line 690
    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->didSortByType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;)V

    .line 692
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    .line 694
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItems:Z

    if-eqz v0, :cond_2

    .line 696
    iput-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->abortLoadingMorePages:Z

    .line 699
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItemsWhileFiltering:Z

    if-eqz v0, :cond_3

    .line 701
    iput-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->abortLoadingMorePagesWhileFiltering:Z

    .line 703
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 704
    if-eqz v0, :cond_3

    .line 705
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->didStopLoadingMorePagesToFilter()V

    .line 709
    :cond_3
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadItemsFromScratch(Z)Z

    .line 710
    return-void

    .line 662
    :cond_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_TIME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne p1, v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageTimeIndexCollation;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    goto :goto_0

    .line 678
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    goto :goto_1

    .line 683
    :cond_6
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    goto :goto_2
.end method
