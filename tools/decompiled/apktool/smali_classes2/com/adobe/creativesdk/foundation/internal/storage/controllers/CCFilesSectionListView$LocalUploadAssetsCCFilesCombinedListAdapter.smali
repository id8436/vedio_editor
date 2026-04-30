.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;
.source "CCFilesSectionListView.java"


# instance fields
.field private _sectionalAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 236
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Landroid/content/Context;)V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;->_sectionalAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;

    .line 238
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;

    invoke-direct {v0, p0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;->_sectionalAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;

    .line 239
    return-void
.end method


# virtual methods
.method protected createUploadAssetCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;
    .locals 3

    .prologue
    .line 248
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetCellViews$UploadAssetListCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetCellViews$UploadAssetListCellView;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_list_assetviewcell:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetCellViews$UploadAssetListCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 250
    return-object v0
.end method

.method public getRealAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;->_sectionalAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;

    return-object v0
.end method
