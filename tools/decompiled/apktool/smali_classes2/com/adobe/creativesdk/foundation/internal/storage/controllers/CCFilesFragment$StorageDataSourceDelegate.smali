.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;
.super Ljava/lang/Object;
.source "CCFilesFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didClearFilterString()V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->ds_didClearFilterString()V

    .line 842
    return-void
.end method

.method public didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->ds_didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 819
    return-void
.end method

.method public didFilterResults()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->ds_didFilterResults()V

    .line 837
    return-void
.end method

.method public didLoadMoreDataWithCount(ILcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListIndexPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->ds_didLoadMoreDataWithCount(ILcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;Ljava/util/ArrayList;)V

    .line 814
    return-void
.end method

.method public didSortByType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;)V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method public didStartLoadingMorePagesToFilter()V
    .locals 0

    .prologue
    .line 829
    return-void
.end method

.method public didStopLoadingMorePagesToFilter()V
    .locals 0

    .prologue
    .line 832
    return-void
.end method

.method public startedLoadingMoreFolders()V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->ds_startedLoadingMoreFolders()V

    .line 847
    return-void
.end method

.method public stoppedLoadingMoreFolders()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->ds_stoppedLoadingMoreFolders()V

    .line 852
    return-void
.end method

.method public willExecuteSearchWithString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 826
    return-void
.end method

.method public willLoadDataFromScratch()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->ds_willLoadDataFromScratch()V

    .line 798
    return-void
.end method

.method public willLoadNextPageForExistingCollection()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->ds_willLoadNextPageForExistingCollection()V

    .line 803
    return-void
.end method

.method public willLoadNextPageForNonExistingCollection()V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->ds_willLoadNextPageForNonExistingCollection()V

    .line 808
    return-void
.end method
