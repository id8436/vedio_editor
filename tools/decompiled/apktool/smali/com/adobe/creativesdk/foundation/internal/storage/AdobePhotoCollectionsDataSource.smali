.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;
.super Ljava/lang/Object;
.source "AdobePhotoCollectionsDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;


# static fields
.field private static final kNumberOfPhotoCollectionsPerPage:I = 0x14


# instance fields
.field private _catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

.field private _catalogLoaded:Z

.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private _collections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;"
        }
    .end annotation
.end field

.field private _collectionsLoaded:Z

.field private _delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

.field private _emptyCatalog:Z

.field private _initialQueryRequested:Z

.field private _lastCollectionNameRequested:Ljava/lang/String;

.field private _queryForMoreData:Z


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

    .line 30
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 31
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_catalogLoaded:Z

    .line 32
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_queryForMoreData:Z

    .line 33
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collectionsLoaded:Z

    .line 34
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_initialQueryRequested:Z

    .line 35
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_lastCollectionNameRequested:Ljava/lang/String;

    .line 36
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_emptyCatalog:Z

    .line 38
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    .line 69
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

    .line 70
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    .line 71
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_catalogLoaded:Z

    .line 72
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_queryForMoreData:Z

    .line 73
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collectionsLoaded:Z

    .line 74
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_initialQueryRequested:Z

    .line 75
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_lastCollectionNameRequested:Ljava/lang/String;

    .line 76
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_emptyCatalog:Z

    .line 77
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    .line 78
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_catalogLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->loadFirstPage()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$502(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_emptyCatalog:Z

    return p1
.end method

.method static synthetic access$602(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_queryForMoreData:Z

    return p1
.end method

.method static synthetic access$702(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_initialQueryRequested:Z

    return p1
.end method

.method static synthetic access$802(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_lastCollectionNameRequested:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collectionsLoaded:Z

    return p1
.end method

.method public static getRenditionForCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<[B",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCoverAsset()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCoverAsset()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getRenditions()Ljava/util/Map;

    move-result-object v0

    .line 262
    const-string/jumbo v2, "thumbnail2x"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 263
    const-string/jumbo v1, "thumbnail2x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;

    .line 265
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCoverAsset()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->downloadRendition(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 304
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-interface {p1, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;->ADOBE_PHOTO_COLLECTION_SORT_BY_DATE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;

    const/4 v3, 0x1

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;->ADOBE_PHOTO_COLLECTION_FLAG_ALL:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$9;

    invoke-direct {v5, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$9;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$10;

    invoke-direct {v6, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$10;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->listAssetsOnPage(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoPage;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionSort;ILcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection$AdobePhotoCollectionFlag;Lcom/adobe/creativesdk/foundation/storage/IAdobePhotoAssetsListRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0
.end method

.method private loadCollectionsAfterName(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;>;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_queryForMoreData:Z

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iput-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_queryForMoreData:Z

    .line 178
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_initialQueryRequested:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_lastCollectionNameRequested:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_queryForMoreData:Z

    .line 180
    if-eqz p2, :cond_0

    .line 181
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_catalog:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    const/16 v2, 0x14

    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;

    invoke-direct {v4, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$6;

    invoke-direct {v5, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->listCollectionsAfterName(Ljava/lang/String;IZLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0
.end method

.method private loadFirstPage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;->willLoadFirstPage()V

    .line 140
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_queryForMoreData:Z

    .line 141
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collectionsLoaded:Z

    .line 142
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_initialQueryRequested:Z

    .line 143
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_lastCollectionNameRequested:Ljava/lang/String;

    .line 145
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_queryForMoreData:Z

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Show first page of collections."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$3;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)V

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$4;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)V

    invoke-direct {p0, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->loadCollectionsAfterName(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 168
    return-void
.end method


# virtual methods
.method public getCatalogLoaded()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_catalogLoaded:Z

    return v0
.end method

.method public getCollections()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCollectionsLoaded()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collectionsLoaded:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCatalogEmpty()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_emptyCatalog:Z

    return v0
.end method

.method public loadCatalog()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;->willLoadCatalog()V

    .line 110
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;->AdobePhotoCatalogTypeLightroom:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$2;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)V

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->listCatalogOfType(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 134
    return-void
.end method

.method public loadItemsFromScratch()Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->loadCatalog()V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public loadNextPageOfData()V
    .locals 3

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collectionsLoaded:Z

    if-eqz v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_queryForMoreData:Z

    if-eqz v0, :cond_1

    .line 218
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Show next page of collections."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;->willLoadNextPage()V

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_lastCollectionNameRequested:Ljava/lang/String;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$7;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)V

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$8;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->loadCollectionsAfterName(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0
.end method

.method public resetDelegate()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->setDataSourceDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;)V

    .line 255
    return-void
.end method

.method public searchCollections(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_collections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    .line 96
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 100
    goto :goto_0
.end method

.method public setDataSourceDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;

    .line 83
    return-void
.end method
