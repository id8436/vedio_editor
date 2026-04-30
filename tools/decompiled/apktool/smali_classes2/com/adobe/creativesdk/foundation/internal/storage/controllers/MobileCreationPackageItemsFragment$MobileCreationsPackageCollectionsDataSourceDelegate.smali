.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;
.super Ljava/lang/Object;
.source "MobileCreationPackageItemsFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$1;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;)V

    return-void
.end method


# virtual methods
.method public didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->ds_didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 408
    return-void
.end method

.method public didFinishLoading()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->ds_didFinishLoading(I)V

    .line 413
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->_mobilePackageItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->refreshDueToDataChange()V

    .line 414
    return-void
.end method

.method public didLoadMoreDataWithCount(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    invoke-virtual {v0, p1, v1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->ds_didLoadMoreDataWithCount(ILcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;Ljava/util/ArrayList;)V

    .line 403
    return-void
.end method

.method public willLoadDataFromScratch()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->ds_willLoadDataFromScratch()V

    .line 393
    return-void
.end method

.method public willLoadNextPageForExistingPackage()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method
