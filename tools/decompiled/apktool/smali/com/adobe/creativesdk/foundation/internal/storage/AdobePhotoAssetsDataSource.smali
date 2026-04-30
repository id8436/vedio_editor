.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;
.super Ljava/lang/Object;
.source "AdobePhotoAssetsDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;


# static fields
.field private static final kNumberOfPhotoAssetsPerPage:I = 0x14


# instance fields
.field private _assets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;"
        }
    .end annotation
.end field

.field private _assetsLoaded:Z

.field private _collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

.field private _delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;

.field private _emptyCollection:Z

.field private _initialQueryRequested:Z

.field private _loadingItems:Z

.field private _nextRequestedPage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;

.field private _queryForMoreData:Z

.field private _sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

.field private _totalNumberOfPhotos:I

.field private _uniqueAssets:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;

    .line 71
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastCollectionSortType()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

    .line 72
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    .line 74
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assetsLoaded:Z

    .line 75
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_queryForMoreData:Z

    .line 76
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_initialQueryRequested:Z

    .line 77
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_emptyCollection:Z

    .line 78
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_nextRequestedPage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;

    .line 79
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_totalNumberOfPhotos:I

    .line 80
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    .line 81
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_uniqueAssets:Ljava/util/HashSet;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_totalNumberOfPhotos:I

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_totalNumberOfPhotos:I

    return p1
.end method

.method static synthetic access$1002(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assetsLoaded:Z

    return p1
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_emptyCollection:Z

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_uniqueAssets:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_uniqueAssets:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$402(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_queryForMoreData:Z

    return p1
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_loadingItems:Z

    return p1
.end method

.method static synthetic access$702(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_initialQueryRequested:Z

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_nextRequestedPage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;

    return-object v0
.end method

.method static synthetic access$802(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_nextRequestedPage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;

    return-object p1
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->appendAssets(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private appendAssets(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 328
    const/4 v3, 0x0

    .line 329
    const/4 v0, 0x0

    .line 331
    if-nez p1, :cond_0

    .line 361
    :goto_0
    return v3

    .line 334
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 336
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_uniqueAssets:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 338
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_2
    move v1, v0

    .line 344
    goto :goto_1

    .line 342
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    goto :goto_2

    .line 346
    :cond_2
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_totalNumberOfPhotos:I

    if-nez v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_totalNumberOfPhotos:I

    .line 352
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 353
    float-to-double v0, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_4

    .line 355
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "More than 70% of the last page had duplicate values. Pulling the next page."

    invoke-static {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_queryForMoreData:Z

    .line 358
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->loadNextPageOfData()V

    move v0, v2

    :goto_3
    move v3, v0

    .line 361
    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_3
.end method

.method public static getRenditionForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<[B",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getRenditions()Ljava/util/Map;

    move-result-object v0

    .line 366
    const-string/jumbo v1, "thumbnail2x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    const-string/jumbo v1, "thumbnail2x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;

    .line 369
    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->downloadRendition(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadAssetsOnPage(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;>;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_queryForMoreData:Z

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_queryForMoreData:Z

    .line 207
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_initialQueryRequested:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_nextRequestedPage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;

    if-nez v0, :cond_2

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_queryForMoreData:Z

    .line 210
    if-eqz p3, :cond_0

    .line 211
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_2
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;->ADOBE_PHOTO_COLLECTION_SORT_BY_DATE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;

    .line 218
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;->ADOBE_PHOTO_SORT_TYPE_CUSTOM:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

    if-ne p2, v0, :cond_3

    .line 220
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;->ADOBE_PHOTO_COLLECTION_SORT_BY_CUSTOM_ORDER:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    const/16 v3, 0x14

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ADOBE_PHOTO_COLLECTION_FLAG_ALL:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$5;

    invoke-direct {v5, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$6;

    invoke-direct {v6, p0, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->listAssetsOnPage(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;ILcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public getAssets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAssetsLoaded()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assetsLoaded:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalAssetsCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_totalNumberOfPhotos:I

    return v0
.end method

.method public hasMorePages()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_initialQueryRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_nextRequestedPage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollectionEmpty()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_emptyCollection:Z

    return v0
.end method

.method public loadFirstPage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_loadingItems:Z

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;->willLoadFirstPage()V

    .line 121
    :cond_2
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_loadingItems:Z

    .line 123
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assetsLoaded:Z

    .line 124
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_queryForMoreData:Z

    .line 125
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_initialQueryRequested:Z

    .line 126
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_emptyCollection:Z

    .line 127
    iput-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_nextRequestedPage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;

    .line 128
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_totalNumberOfPhotos:I

    .line 130
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Show first page for photos with sorting by "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;->ADOBE_PHOTO_SORT_TYPE_TIME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

    if-ne v0, v4, :cond_3

    const-string/jumbo v0, "time"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$2;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->assetCount(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$4;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)V

    invoke-direct {p0, v5, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->loadAssetsOnPage(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0

    .line 130
    :cond_3
    const-string/jumbo v0, "custom order"

    goto :goto_1
.end method

.method public loadItemsFromScratch()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->loadFirstPage()V

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public loadNextPageOfData()V
    .locals 5

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_loadingItems:Z

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assetsLoaded:Z

    if-nez v0, :cond_0

    .line 286
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_queryForMoreData:Z

    if-eqz v0, :cond_2

    .line 287
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Show first page for photos with sorting by "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;->ADOBE_PHOTO_SORT_TYPE_TIME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

    if-ne v0, v4, :cond_4

    const-string/jumbo v0, "time"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;->willLoadNextPage()V

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_nextRequestedPage:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$7;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$8;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->loadAssetsOnPage(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0

    .line 287
    :cond_4
    const-string/jumbo v0, "custom order"

    goto :goto_1
.end method

.method public resetDelegate()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->setDataSourceDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;)V

    .line 325
    return-void
.end method

.method public searchPhotoAssets(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    goto :goto_0

    .line 92
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_assets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 95
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 99
    goto :goto_0
.end method

.method public setDataSourceDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;

    .line 104
    return-void
.end method

.method public setSortType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->_sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobePhotoSortType;

    .line 108
    return-void
.end method
