.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;
.super Ljava/lang/Object;
.source "AdobeAssetDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;


# instance fields
.field final newData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation
.end field

.field final numberProcessed:[I

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

.field final synthetic val$weakThis:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;Ljava/lang/ref/WeakReference;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->val$weakThis:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->numberProcessed:[I

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->newData:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->allItemsLoaded()V

    return-void
.end method

.method private allItemsLoaded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->newData:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->val$weakThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    .line 270
    if-eqz v0, :cond_3

    .line 271
    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadingItemsFromScratch:Z

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 274
    iput-boolean v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadingItemsFromScratch:Z

    .line 277
    :cond_0
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->newData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_1

    .line 282
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didLoadMoreDataWithCount(I)V

    .line 285
    :cond_1
    if-eqz v1, :cond_2

    .line 286
    invoke-interface {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFinishLoading()V

    .line 288
    :cond_2
    iput-boolean v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadingItems:Z

    .line 290
    :cond_3
    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->val$weakThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    .line 296
    if-eqz v0, :cond_4

    .line 298
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    .line 302
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_1

    .line 305
    invoke-interface {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFinishLoading()V

    .line 307
    :cond_1
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 308
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadingItems:Z

    .line 311
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 312
    instance-of v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    if-eqz v2, :cond_3

    .line 313
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    .line 315
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Ljava/util/ArrayList;)V

    .line 327
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;

    invoke-direct {v3, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;Ljava/util/ArrayList;)V

    .line 355
    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0

    .line 359
    :cond_4
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 363
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 366
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFinishLoading()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->val$weakThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    .line 371
    if-eqz v0, :cond_1

    .line 372
    iput-boolean v5, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->loadingItems:Z

    .line 374
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetDataSource.loadNextPage"

    const-string/jumbo v2, "Failed to list product packages: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
