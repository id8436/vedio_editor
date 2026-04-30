.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;
.super Ljava/lang/Object;
.source "PhotosAssetsFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoAssetsDataSourceDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$1;)V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)V

    return-void
.end method

.method private loadDataFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->ds_handleLoadDataErrorCommon()V

    .line 659
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    if-eqz v0, :cond_0

    .line 660
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    .line 661
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->markAsWentOffline()V

    .line 665
    :cond_0
    return-void
.end method


# virtual methods
.method public loadFirstPageFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;->loadDataFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 641
    return-void
.end method

.method public loadFirstPageSucceeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$1200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->getCount()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->ds_didLoadMoreDataWithCount(ILcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;Ljava/util/ArrayList;)V

    .line 636
    return-void
.end method

.method public loadNextPageFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;->loadDataFailed(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 656
    return-void
.end method

.method public loadNextPageSucceeded()V
    .locals 0

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;->loadFirstPageSucceeded()V

    .line 651
    return-void
.end method

.method public willLoadFirstPage()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->ds_willLoadDataFromScratch()V

    .line 631
    return-void
.end method

.method public willLoadNextPage()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->ds_willLoadNextPageForExistingCollection()V

    .line 646
    return-void
.end method
