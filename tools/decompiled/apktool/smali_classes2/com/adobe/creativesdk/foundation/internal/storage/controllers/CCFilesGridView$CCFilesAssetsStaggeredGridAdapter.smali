.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;
.source "CCFilesGridView.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Landroid/content/Context;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected createAssetFileCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_generic_staggered_assetviewcell:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 188
    return-object v0
.end method

.method protected createAssetFolderCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_assetsgrid_folderviewcell:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setFolderMetrics(Z)V

    .line 172
    return-object v0
.end method

.method protected setCCFolderViewAsShared(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;ZZ)V
    .locals 0

    .prologue
    .line 178
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;

    .line 179
    invoke-virtual {p1, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->setSharedFolder(ZZ)V

    .line 180
    return-void
.end method
