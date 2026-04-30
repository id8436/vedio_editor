.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;
.source "CCFilesListView.java"


# static fields
.field private static final TYPES_COUNT:I = 0x3

.field private static final TYPE_ASSET_UPLOAD:I = 0x2


# instance fields
.field private _combinedSortedAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
            ">;"
        }
    .end annotation
.end field

.field private _originalCcfilesAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;

.field private _uploadAssetsToCellViewBinder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;

.field private _uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 643
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    .line 644
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Landroid/content/Context;)V

    .line 645
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_uploadAssetsToCellViewBinder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;

    .line 646
    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)Z
    .locals 1

    .prologue
    .line 632
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->isUploadAssetDataCellViewEqual(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    return-object v0
.end method

.method private isLocalUploadAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 663
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    return v0
.end method

.method private isUploadAssetDataCellViewEqual(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)Z
    .locals 2

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 886
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->getGuid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 887
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 889
    :cond_0
    return v0
.end method

.method private registerLocalAssetUploadProgress(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_uploadAssetsToCellViewBinder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->bindCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 837
    return-void
.end method

.method private sortAssetsList(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 714
    :goto_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$CustomAssetDataComparator;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$CustomAssetDataComparator;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;Z)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 715
    return-object p1

    .line 713
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unRegisterLocalAssetUploadProgress(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_uploadAssetsToCellViewBinder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->unBindCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 843
    return-void
.end method


# virtual methods
.method protected bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 2

    .prologue
    .line 847
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->isLocalUploadAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_guid:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 850
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-object v1, p1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->unRegisterLocalAssetUploadProgress(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 854
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 855
    return-void
.end method

.method protected createAssetFileCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_originalCcfilesAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->createAssetFileCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    move-result-object v0

    return-object v0
.end method

.method protected createAssetFolderCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_originalCcfilesAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->createAssetFolderCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    move-result-object v0

    return-object v0
.end method

.method protected createNewAssetCellView(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 1

    .prologue
    .line 826
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getViewTypeCount()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 827
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->createUploadAssetCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

    move-result-object v0

    .line 829
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->createNewAssetCellView(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract createUploadAssetCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;
.end method

.method protected generateCombinedAssetsList()V
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_combinedSortedAssets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 730
    :goto_0
    return-void

    .line 721
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 723
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getDestinationFolder()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_originalCcfilesAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_originalCcfilesAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getSortType()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->sortAssetsList(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_combinedSortedAssets:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->generateCombinedAssetsList()V

    .line 775
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_combinedSortedAssets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_combinedSortedAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    .line 778
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAssetsCount()I
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    if-nez v0, :cond_0

    .line 744
    const/4 v0, 0x0

    .line 747
    :goto_0
    return v0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->generateCombinedAssetsList()V

    .line 747
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_combinedSortedAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 752
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->IGNORE_ITEM_VIEW_TYPE:I

    .line 753
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 755
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 757
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->isLocalUploadAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    const/4 v0, 0x2

    .line 763
    :cond_0
    :goto_0
    return v0

    .line 761
    :cond_1
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x3

    return v0
.end method

.method protected handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 2

    .prologue
    .line 861
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->isLocalUploadAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 863
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

    move-object v1, p2

    .line 864
    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    invoke-direct {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->registerLocalAssetUploadProgress(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 866
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 871
    :goto_0
    return-void

    .line 869
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    goto :goto_0
.end method

.method protected invalidateAssetsList()V
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_combinedSortedAssets:Ljava/util/ArrayList;

    .line 794
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_originalCcfilesAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->invalidateAssetsList()V

    .line 795
    return-void
.end method

.method protected isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 799
    instance-of v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    if-eqz v1, :cond_2

    .line 802
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 803
    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    .line 804
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 805
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 806
    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->title:Ljava/lang/String;

    .line 808
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 809
    :cond_0
    if-eqz v0, :cond_1

    .line 810
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    .line 811
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

    .line 813
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getStatus()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->setUploadStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V

    .line 814
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getProgress()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->setUploadProgres(D)V

    .line 821
    :cond_1
    :goto_0
    return v0

    .line 819
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isAssetHasThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 876
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    if-eqz v0, :cond_0

    .line 877
    const/4 v0, 0x1

    .line 879
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->isAssetHasThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isAssetSelectable(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->isLocalUploadAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    const/4 v0, 0x0

    .line 787
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->isAssetSelectable(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    goto :goto_0
.end method

.method public resetSelf()V
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    .line 657
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_uploadAssetsToCellViewBinder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->resetBinder()V

    .line 658
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->invalidateAssetsList()V

    .line 659
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->notifyDataSetChanged()V

    .line 660
    return-void
.end method

.method public setCCFilesAdapter(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_originalCcfilesAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;

    .line 650
    return-void
.end method

.method public setUploadSession(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    .line 653
    return-void
.end method
