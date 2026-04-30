.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;
.super Ljava/lang/Object;
.source "PhotosCollectionFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$1;)V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)V

    return-void
.end method

.method private loadDataFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->ds_handleLoadDataErrorCommon()V

    move-object v0, p1

    .line 529
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    .line 530
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;->getData()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;->getData()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "AdobeNetworkHTTPStatus"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 532
    :goto_0
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    if-eqz v1, :cond_0

    .line 533
    sparse-switch v0, :sswitch_data_0

    .line 548
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 530
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 535
    :sswitch_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->markAsWentOffline()V

    goto :goto_1

    .line 540
    :sswitch_1
    if-eqz p2, :cond_0

    .line 541
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->ds_handleLoadDataErrorShowEmptyAssetsView()V

    goto :goto_1

    .line 533
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x194 -> :sswitch_1
        0x258 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public loadCatalogFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->loadDataFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Z)V

    return-void
.end method

.method public loadCatalogSucceeded(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;)V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public loadFirstPageFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->loadDataFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Z)V

    return-void
.end method

.method public loadFirstPageSucceeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->getCount()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->ds_didLoadMoreDataWithCount(ILcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;Ljava/util/ArrayList;)V

    .line 504
    return-void
.end method

.method public loadNextPageOfDataFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->loadDataFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Z)V

    return-void
.end method

.method public loadNextPageOfDataSucceeded()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public willLoadCatalog()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->ds_willLoadDataFromScratch()V

    .line 518
    return-void
.end method

.method public willLoadFirstPage()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->ds_willLoadNextPageForNonExistingCollection()V

    return-void
.end method

.method public willLoadNextPage()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->ds_willLoadNextPageForExistingCollection()V

    return-void
.end method
