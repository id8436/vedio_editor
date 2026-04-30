.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;
.source "CCFilesSectionListView.java"


# instance fields
.field _sectionalAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;

.field headersDecor:Lcom/m/a/c;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Landroid/content/Context;)V

    .line 100
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->_sectionalAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;

    .line 101
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->headersDecor:Lcom/m/a/c;

    .line 106
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;

    invoke-direct {v0, p1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->_sectionalAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;

    .line 107
    return-void
.end method


# virtual methods
.method public checkIfLastRowInSection(I)Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getAdobeStorageSortIndexCollation()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->checkIfLastInSection(I)Z

    move-result v0

    return v0
.end method

.method protected createAssetFileCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_list_assetviewcell:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 134
    return-object v0
.end method

.method protected createAssetFolderCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_list_folderviewcell:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 122
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setFolderMetrics(Z)V

    .line 123
    return-object v0
.end method

.method public getRealAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->headersDecor:Lcom/m/a/c;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/m/a/c;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->_sectionalAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;

    invoke-direct {v0, v1}, Lcom/m/a/c;-><init>(Lcom/m/a/b;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->headersDecor:Lcom/m/a/c;

    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->headersDecor:Lcom/m/a/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->_sectionalAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->_sectionalAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getAdobeStorageSortIndexCollation()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getAdobeStorageSortIndexCollation()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->sectionTitles()Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 173
    return-object v0
.end method

.method public removeHeaders()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->headersDecor:Lcom/m/a/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->headersDecor:Lcom/m/a/c;

    .line 163
    return-void
.end method

.method protected setCCFolderViewAsShared(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;ZZ)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;

    invoke-virtual {p1, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->setSharedFolder(ZZ)V

    .line 112
    return-void
.end method
