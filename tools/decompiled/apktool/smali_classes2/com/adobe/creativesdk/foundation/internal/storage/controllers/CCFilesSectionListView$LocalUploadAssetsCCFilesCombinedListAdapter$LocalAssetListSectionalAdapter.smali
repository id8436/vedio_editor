.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CCFilesSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final _baseCCAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;->_baseCCAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    .line 258
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;->_baseCCAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;->_baseCCAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 253
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;->onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;->_baseCCAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V

    .line 268
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter$LocalAssetListSectionalAdapter;->_baseCCAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    move-result-object v0

    return-object v0
.end method
