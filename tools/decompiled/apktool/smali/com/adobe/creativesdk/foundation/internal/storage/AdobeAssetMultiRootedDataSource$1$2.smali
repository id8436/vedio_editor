.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;
.super Ljava/lang/Object;
.source "AdobeAssetMultiRootedDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$folder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

.field final synthetic val$loadedNextPage:[Z

.field final synthetic val$loadingErrors:Ljava/util/Map;

.field final synthetic val$lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final synthetic val$sortComparator:Ljava/util/Comparator;

.field final synthetic val$weakSelf:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;Ljava/lang/ref/WeakReference;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/util/Comparator;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;Ljava/util/Map;[Z)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$weakSelf:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$folder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$sortComparator:Ljava/util/Comparator;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$condition:Ljava/util/concurrent/locks/Condition;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$loadingErrors:Ljava/util/Map;

    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$loadedNextPage:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/util/ArrayList;I)V
    .locals 9
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
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 340
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 342
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$weakSelf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$folder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;

    .line 344
    if-nez v0, :cond_4

    .line 346
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$folder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getGUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->GUID:Ljava/lang/String;

    .line 348
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$folder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->href:Ljava/net/URI;

    move-object v1, v0

    .line 351
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iput-boolean v6, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->done:Z

    .line 362
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$weakSelf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$folder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-array v4, v6, [I

    aput v7, v4, v7

    .line 365
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 369
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    move-object v2, v0

    .line 371
    check-cast v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    .line 372
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;Ljava/util/List;[ILjava/util/List;)V

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;

    invoke-direct {v1, p0, v4, v5, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;[ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_2

    .line 357
    :cond_0
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->startTime:Ljava/util/Date;

    .line 358
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->endTime:Ljava/util/Date;

    .line 359
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$folder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    :goto_3
    iput-boolean v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->done:Z

    goto :goto_1

    :cond_1
    move v0, v7

    goto :goto_3

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 439
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$108(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    .line 440
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$208(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    .line 441
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$008(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    .line 442
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 443
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$loadedNextPage:[Z

    aput-boolean v6, v0, v7

    .line 447
    return-void

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 456
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_4

    .line 458
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorTimeout:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorOffline:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v0, v1, :cond_3

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$308(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    .line 463
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$loadingErrors:Ljava/util/Map;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$folder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$108(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    .line 476
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$008(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    .line 478
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 479
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 480
    return-void

    .line 460
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v0, v1, :cond_1

    .line 461
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$208(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    goto :goto_0

    .line 466
    :cond_4
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->isOnline()Z

    move-result v0

    if-nez v0, :cond_5

    .line 467
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$308(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    .line 468
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$loadingErrors:Ljava/util/Map;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$folder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_5
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v0, v1, :cond_2

    .line 472
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$208(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    goto :goto_1
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 336
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
