.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;
.super Ljava/lang/Object;
.source "AdobeAssetMultiRootedDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

.field final synthetic val$foldersToPull:Ljava/util/List;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$pageLimit:I

.field final synthetic val$that:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;Ljava/util/List;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$that:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$foldersToPull:Ljava/util/List;

    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$pageLimit:I

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 314
    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 315
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    .line 317
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0, v12}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$002(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;I)I

    .line 318
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0, v12}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$102(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;I)I

    .line 319
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0, v12}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$202(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;I)I

    .line 320
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0, v12}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$302(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;I)I

    .line 322
    new-array v8, v9, [Z

    aput-boolean v12, v8, v12

    .line 323
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 324
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$that:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 326
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$1;

    invoke-direct {v4, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;)V

    .line 335
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$foldersToPull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 336
    iget v11, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$pageLimit:I

    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;Ljava/lang/ref/WeakReference;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/util/Comparator;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;Ljava/util/Map;[Z)V

    invoke-virtual {v3, v11, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getNextPage(ILcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;)V

    goto :goto_0

    .line 485
    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$foldersToPull:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 489
    :try_start_0
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 495
    :cond_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 499
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v9

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;

    .line 500
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedData;->isDone()Z

    move-result v0

    and-int/2addr v0, v1

    .line 502
    if-nez v0, :cond_8

    move v1, v0

    .line 507
    :cond_2
    aget-boolean v0, v8, v12

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 509
    :cond_3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->data:Ljava/util/ArrayList;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 511
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_9

    .line 514
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$3;

    invoke-direct {v5, p0, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    :goto_3
    if-eqz v0, :cond_a

    .line 525
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$4;

    invoke-direct {v5, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 536
    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 538
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 540
    :cond_5
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->data:Ljava/util/ArrayList;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 542
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_6

    .line 546
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    iput-boolean v12, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->loadingItems:Z

    .line 547
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$5;

    invoke-direct {v3, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    :cond_6
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 558
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->getDelegate()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v3

    .line 560
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    move-result v0

    if-lez v0, :cond_b

    .line 561
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorOffline:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;)V

    .line 562
    if-eqz v3, :cond_7

    .line 563
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$6;

    invoke-direct {v4, p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    :cond_7
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    iput-boolean v12, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->loadingItems:Z

    .line 589
    return-void

    :cond_8
    move v1, v0

    .line 505
    goto/16 :goto_2

    .line 521
    :cond_9
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Loaded more data but there is no delegate"

    invoke-static {v3, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 532
    :cond_a
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Finished loading data but there is no delegate"

    invoke-static {v0, v3, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 571
    :cond_b
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 572
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 573
    if-eqz v3, :cond_c

    .line 574
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$7;

    invoke-direct {v6, p0, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    :cond_c
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v6, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "Failed to list product packages in %s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    aput-object v0, v10, v12

    aput-object v1, v10, v9

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
