.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;
.super Ljava/lang/Object;
.source "AdobeStorageDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

.field final synthetic val$totalPagesLimit:I


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;I)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->val$totalPagesLimit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/util/ArrayList;I)V
    .locals 11
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
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 427
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->abortLoadingMorePages:Z

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iput-boolean v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->abortLoadingMorePages:Z

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    .line 440
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$102(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;I)I

    .line 445
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 450
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 452
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)V

    move v1, v2

    move v3, v2

    .line 463
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 464
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 465
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne v0, v6, :cond_4

    .line 466
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;)V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 476
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    invoke-virtual {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->createSectionDataFromMaster(Ljava/util/ArrayList;)Z

    .line 478
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 480
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    iget-object v8, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    .line 481
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;

    invoke-direct {v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;-><init>()V

    .line 482
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 489
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v2

    .line 490
    :goto_2
    if-ge v0, v1, :cond_6

    .line 492
    new-instance v8, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListIndexPath;

    add-int/lit8 v9, v3, -0x1

    invoke-direct {v8, v9, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListIndexPath;-><init>(II)V

    .line 493
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 456
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 457
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->numberOfSections()I

    move-result v0

    if-lez v0, :cond_12

    .line 459
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->numberOfSections()I

    move-result v1

    .line 460
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionDataArray:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    move v1, v0

    goto/16 :goto_1

    :cond_6
    move-object v0, v4

    move-object v1, v6

    .line 533
    :goto_3
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iput-object v7, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    .line 535
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    iput-object v4, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    .line 538
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->recreateFilteredAssets:Z

    .line 541
    :goto_4
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->CCContainerViewControllerEndRefreshNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v3, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 542
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 546
    sget-boolean v3, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive:Z

    if-eqz v3, :cond_7

    .line 555
    :cond_7
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)I

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v3

    if-nez v3, :cond_9

    .line 556
    :cond_8
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v3

    .line 557
    if-eqz v3, :cond_9

    .line 558
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v3, v4, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->didLoadMoreDataWithCount(ILcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;Ljava/util/ArrayList;)V

    .line 564
    :cond_9
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageDataSourceDidLoadNewPageNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v0, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 565
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 568
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iput-boolean v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItems:Z

    .line 569
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$202(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;Z)Z

    .line 570
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->val$totalPagesLimit:I

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->abortLoadingMorePages:Z

    if-nez v0, :cond_f

    .line 572
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadNextPage()Z

    .line 573
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_a

    .line 575
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->startedLoadingMoreFolders()V

    .line 585
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterWithSearchString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 503
    :cond_b
    if-nez v3, :cond_c

    .line 504
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 509
    :goto_6
    if-le v0, v1, :cond_d

    .line 511
    :goto_7
    if-ge v1, v0, :cond_d

    .line 513
    new-instance v9, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListIndexPath;

    add-int/lit8 v10, v3, -0x1

    invoke-direct {v9, v10, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListIndexPath;-><init>(II)V

    .line 514
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 506
    :cond_c
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_6

    .line 518
    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 520
    :goto_8
    if-ge v3, v1, :cond_10

    .line 522
    invoke-virtual {v6, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;->add(I)V

    .line 523
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v0, v2

    .line 524
    :goto_9
    if-ge v0, v9, :cond_e

    .line 526
    new-instance v10, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListIndexPath;

    invoke-direct {v10, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListIndexPath;-><init>(II)V

    .line 527
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 520
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 579
    :cond_f
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$102(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;I)I

    .line 580
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_a

    .line 582
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->stoppedLoadingMoreFolders()V

    goto :goto_5

    :cond_10
    move-object v0, v4

    move-object v1, v6

    goto/16 :goto_3

    :cond_11
    move-object v0, v5

    move-object v1, v5

    goto/16 :goto_3

    :cond_12
    move v1, v2

    move v3, v2

    goto/16 :goto_1

    :cond_13
    move-object v0, v5

    move-object v1, v5

    goto/16 :goto_4
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_0

    .line 595
    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 597
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->CCContainerViewControllerEndRefreshNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 598
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 602
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItems:Z

    .line 603
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 423
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
