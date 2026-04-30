.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;
.super Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;
.source "AdobeAssetMultiRootedDataSource.java"


# static fields
.field private static kAssetDataSourceItemsPerPageLimit:I


# instance fields
.field private dataSourceTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation
.end field

.field private volatile foldersProcessed:I

.field private multiRootedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile numberOfEmptyFolders:I

.field private volatile numberOfErrors:I

.field private volatile numberOfOfflineErrors:I

.field private rootFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x14

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->kAssetDataSourceItemsPerPageLimit:I

    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 60
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->foldersProcessed:I

    .line 61
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfErrors:I

    .line 62
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfEmptyFolders:I

    .line 63
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfOfflineErrors:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->multiRootedData:Ljava/util/Map;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-direct {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 60
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->foldersProcessed:I

    .line 61
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfErrors:I

    .line 62
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfEmptyFolders:I

    .line 63
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfOfflineErrors:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->multiRootedData:Ljava/util/Map;

    .line 81
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->dataSourceTypes:Ljava/util/EnumSet;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->foldersProcessed:I

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->foldersProcessed:I

    return p1
.end method

.method static synthetic access$008(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->foldersProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->foldersProcessed:I

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfErrors:I

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfErrors:I

    return p1
.end method

.method static synthetic access$108(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfErrors:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfErrors:I

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfEmptyFolders:I

    return v0
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfEmptyFolders:I

    return p1
.end method

.method static synthetic access$208(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfEmptyFolders:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfEmptyFolders:I

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfOfflineErrors:I

    return v0
.end method

.method static synthetic access$302(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfOfflineErrors:I

    return p1
.end method

.method static synthetic access$308(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfOfflineErrors:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->numberOfOfflineErrors:I

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->multiRootedData:Ljava/util/Map;

    return-object v0
.end method

.method private getProductForDatasource(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductUndefined:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    .line 178
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductDraw:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    .line 192
    :cond_0
    :goto_0
    return-object v0

    .line 180
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductSketch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    goto :goto_0

    .line 182
    :cond_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductLibrary:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    goto :goto_0

    .line 184
    :cond_3
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductPSMix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    goto :goto_0

    .line 186
    :cond_4
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSFix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 187
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductPSFix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    goto :goto_0

    .line 188
    :cond_5
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductComposition:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    goto :goto_0
.end method


# virtual methods
.method public loadItemsFromScratch(Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->loadingItems:Z

    if-eqz v0, :cond_0

    .line 99
    monitor-exit p0

    move v0, v1

    .line 172
    :goto_0
    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 103
    if-eqz p1, :cond_2

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->loadingItemsFromScratch:Z

    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 107
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    invoke-virtual {v0, v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resetPagingOrderedByField(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)V

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 110
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->multiRootedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->willLoadDataFromScratch()V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 120
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v0

    or-int/2addr v1, v0

    .line 121
    goto :goto_2

    .line 123
    :cond_3
    if-eqz v1, :cond_5

    .line 124
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->willLoadNextPageForExistingPackage()V

    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->loadNextPage()Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 130
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_6

    .line 132
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFinishLoading()V

    .line 172
    :cond_6
    monitor-exit p0

    move v0, v2

    goto :goto_0

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->getProductForDatasource(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    move-result-object v0

    .line 137
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductUndefined:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    if-eq v0, v3, :cond_9

    .line 138
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    .line 169
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->loadNextPage()Z

    move-result v0

    monitor-exit p0

    goto/16 :goto_0

    .line 139
    :cond_9
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->dataSourceTypes:Ljava/util/EnumSet;

    if-nez v0, :cond_a

    .line 140
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductDraw:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductSketch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductPSMix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductPSFix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductComposition:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 145
    :cond_a
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->dataSourceTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 147
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->getProductForDatasource(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 152
    :cond_b
    const/4 v0, 0x0

    .line 154
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSharedFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 155
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeSinglePage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;

    .line 162
    :goto_5
    if-eqz v2, :cond_8

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    .line 164
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    invoke-static {v0, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootForSharedProjectType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 157
    :cond_c
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSharedProject:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 158
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->AdobeAssetPackageSharedProjectTypeMultiPage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_d
    move v2, v1

    goto :goto_5
.end method

.method public loadNextPage()Z
    .locals 18

    .prologue
    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->loadingItems:Z

    if-eqz v1, :cond_0

    .line 200
    const/4 v1, 0x0

    monitor-exit p0

    .line 592
    :goto_0
    return v1

    .line 203
    :cond_0
    const/4 v1, 0x1

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 206
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_2
    and-int/2addr v1, v2

    move v2, v1

    .line 207
    goto :goto_1

    .line 206
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 209
    :cond_2
    if-eqz v2, :cond_4

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_3

    .line 212
    invoke-interface {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFinishLoading()V

    .line 215
    :cond_3
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 217
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_5

    .line 219
    invoke-interface {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->willLoadNextPageForExistingPackage()V

    .line 222
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->loadingItems:Z

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->data:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->data:Ljava/util/ArrayList;

    .line 231
    :cond_6
    :goto_3
    sget v5, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->kAssetDataSourceItemsPerPageLimit:I

    .line 233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->multiRootedData:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;

    .line 242
    if-nez v2, :cond_9

    .line 243
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v2

    .line 303
    :goto_5
    if-eqz v2, :cond_7

    .line 304
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 226
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->loadingItemsFromScratch:Z

    if-eqz v1, :cond_6

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 228
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->loadingItemsFromScratch:Z

    goto :goto_3

    .line 247
    :cond_9
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->isDone()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 248
    const/4 v2, 0x0

    goto :goto_5

    .line 252
    :cond_a
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->isDone()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->multiRootedData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b

    .line 253
    const/4 v2, 0x1

    goto :goto_5

    .line 258
    :cond_b
    const/4 v6, 0x1

    .line 259
    iget-object v8, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->startTime:Ljava/util/Date;

    .line 260
    iget-object v9, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->endTime:Ljava/util/Date;

    .line 262
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v10, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "%s s: %s, e: %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->href:Ljava/net/URI;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    const/4 v13, 0x2

    aput-object v9, v12, v13

    .line 263
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 262
    invoke-static {v3, v10, v11}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->multiRootedData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;

    .line 267
    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 268
    iget-object v6, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->startTime:Ljava/util/Date;

    .line 269
    iget-object v11, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->endTime:Ljava/util/Date;

    .line 271
    sget-object v12, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v13, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "%s s: %s, e: %s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->href:Ljava/net/URI;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v6, v15, v16

    const/16 v16, 0x2

    aput-object v11, v15, v16

    .line 272
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 271
    invoke-static {v12, v13, v14}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->isDone()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 276
    const/4 v3, 0x1

    :goto_7
    move v6, v3

    .line 297
    goto :goto_6

    .line 279
    :cond_c
    invoke-virtual {v8, v11}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_d

    .line 280
    const/4 v2, 0x0

    .line 299
    :goto_8
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v6, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "Pull: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v8}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 284
    :cond_d
    invoke-virtual {v9, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_e

    .line 285
    const/4 v3, 0x1

    goto :goto_7

    .line 289
    :cond_e
    invoke-virtual {v8, v11}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_f

    invoke-virtual {v8, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-ltz v3, :cond_10

    .line 290
    :cond_f
    invoke-virtual {v9, v11}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_11

    invoke-virtual {v9, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_11

    .line 291
    :cond_10
    const/4 v3, 0x1

    goto :goto_7

    .line 293
    :cond_11
    const/4 v2, 0x0

    .line 294
    goto :goto_8

    .line 308
    :cond_12
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 311
    new-instance v7, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;Ljava/util/List;ILandroid/os/Handler;)V

    invoke-direct {v7, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 590
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 592
    const/4 v1, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_13
    move v3, v6

    goto :goto_7

    :cond_14
    move v2, v6

    goto :goto_8
.end method

.method public setTargetFolder(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->setTargetFolder(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->rootFolders:Ljava/util/List;

    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rootFolders already present for the data source."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
