.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;
.super Ljava/lang/Object;
.source "DesignLibraryCollectionFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;)V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V

    return-void
.end method


# virtual methods
.method public didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->ds_didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 814
    return-void
.end method

.method public didFinishLoading()V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->resetAssetsListViewVisualLayout()V

    .line 820
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$1200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->ds_didFinishLoading(I)V

    .line 821
    return-void
.end method

.method public didLoadMoreDataWithCount(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 808
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$1200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->getCount()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->ds_didLoadMoreDataWithCount(ILcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;Ljava/util/ArrayList;)V

    .line 809
    return-void
.end method

.method public willLoadDataFromScratch()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->ds_willLoadDataFromScratch()V

    .line 799
    return-void
.end method

.method public willLoadNextPageForExistingPackage()V
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->ds_willLoadNextPageForExistingCollection()V

    .line 804
    return-void
.end method
