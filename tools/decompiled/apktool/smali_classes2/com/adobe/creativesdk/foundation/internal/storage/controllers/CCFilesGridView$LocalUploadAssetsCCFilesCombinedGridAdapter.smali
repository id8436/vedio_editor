.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$LocalUploadAssetsCCFilesCombinedGridAdapter;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;
.source "CCFilesGridView.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$LocalUploadAssetsCCFilesCombinedGridAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Landroid/content/Context;)V

    .line 196
    return-void
.end method


# virtual methods
.method protected createUploadAssetCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetCellViews$UploadAssetGridCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetCellViews$UploadAssetGridCellView;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$LocalUploadAssetsCCFilesCombinedGridAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_generic_staggered_assetviewcell:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetCellViews$UploadAssetGridCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 203
    return-object v0
.end method
