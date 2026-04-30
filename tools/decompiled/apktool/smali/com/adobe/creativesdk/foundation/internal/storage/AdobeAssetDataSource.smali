.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;
.super Ljava/lang/Object;
.source "AdobeAssetDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;


# static fields
.field private static kAssetDataSourceItemsPerPageLimit:I


# instance fields
.field protected _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation
.end field

.field dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

.field private delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

.field loadingItems:Z

.field loadingItemsFromScratch:Z

.field private targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x14

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->kAssetDataSourceItemsPerPageLimit:I

    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 92
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 93
    return-void
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
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    return-object v0
.end method

.method public getTargetFolder()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    return-object v0
.end method

.method public loadItems()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadItemsFromScratch(Z)Z

    .line 136
    return-void
.end method

.method public loadItemsFromScratch()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadItemsFromScratch(Z)Z

    move-result v0

    return v0
.end method

.method public loadItemsFromScratch(Z)Z
    .locals 3

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadingItems:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_5

    .line 153
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadingItemsFromScratch:Z

    .line 154
    if-eqz p1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resetPagingOrderedByField(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)V

    .line 160
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->willLoadDataFromScratch()V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_2

    .line 168
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->willLoadNextPageForExistingPackage()V

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadNextPage()Z

    move-result v0

    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_4

    .line 175
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFinishLoading()V

    .line 211
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductUndefined:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    .line 181
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 183
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductDraw:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    .line 202
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 203
    if-eqz p1, :cond_7

    .line 204
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_7

    .line 206
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->willLoadDataFromScratch()V

    .line 209
    :cond_7
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadNextPage()Z

    move-result v0

    goto :goto_0

    .line 185
    :cond_8
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 187
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductSketch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    goto :goto_1

    .line 189
    :cond_9
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 191
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductLibrary:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    goto :goto_1

    .line 193
    :cond_a
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 195
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductPSMix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    goto :goto_1

    .line 197
    :cond_b
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 199
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductComposition:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    goto :goto_1
.end method

.method public loadNextPage()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 221
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadingItems:Z

    if-eqz v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFinishLoading()V

    goto :goto_0

    .line 236
    :cond_2
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadingItems:Z

    .line 242
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->kAssetDataSourceItemsPerPageLimit:I

    .line 249
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 251
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    invoke-direct {v3, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;Ljava/lang/ref/WeakReference;)V

    .line 379
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getNextPage(ILcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;)V

    move v0, v1

    .line 382
    goto :goto_0
.end method

.method public loadNextPageOfData()V
    .locals 0

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadNextPage()Z

    .line 400
    return-void
.end method

.method public resetDelegate()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->setDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;)V

    .line 405
    return-void
.end method

.method public resetTargetFolder()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 140
    return-void
.end method

.method public searchAssets(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->assetsToDisplay()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 125
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 129
    goto :goto_0
.end method

.method public setDataSourceType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->dataSourceType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 97
    return-void
.end method

.method public setDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->delegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    .line 74
    return-void
.end method

.method public setLoadingItems(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadingItems:Z

    .line 107
    return-void
.end method

.method public setTargetFolder(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->targetFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 82
    return-void
.end method
