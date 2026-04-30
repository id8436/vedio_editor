.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationPackageCollectionsDataSourceDelegate;
.super Ljava/lang/Object;
.source "MobileCreationPackageCollectionFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$1;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationPackageCollectionsDataSourceDelegate;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;)V

    return-void
.end method


# virtual methods
.method public didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->ds_didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 552
    return-void
.end method

.method public didFinishLoading()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->_assetsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->ds_didFinishLoading(I)V

    .line 557
    return-void
.end method

.method public didLoadMoreDataWithCount(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 546
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    invoke-virtual {v0, p1, v1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->ds_didLoadMoreDataWithCount(ILcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;Ljava/util/ArrayList;)V

    .line 547
    return-void
.end method

.method public willLoadDataFromScratch()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->ds_willLoadDataFromScratch()V

    .line 537
    return-void
.end method

.method public willLoadNextPageForExistingPackage()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$MobileCreationPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->ds_willLoadNextPageForExistingCollection()V

    .line 542
    return-void
.end method
