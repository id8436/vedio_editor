.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CCFilesSectionListView.java"

# interfaces
.implements Lcom/m/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;",
        ">;",
        "Lcom/m/a/b;"
    }
.end annotation


# instance fields
.field _assetsListItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->_assetsListItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    .line 182
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->_assetsListItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    .line 183
    return-void
.end method


# virtual methods
.method public getHeaderId(I)J
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->getSectionForPosition(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->_assetsListItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->_assetsListItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->_assetsListItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->_assetsListItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->getSections()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_assetslist_group_header_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 201
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->getSections()[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 177
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->_assetsListItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V

    .line 212
    return-void
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_storage_assetslist_headerview:I

    const/4 v2, 0x0

    .line 193
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$AssetListSectionalAdapter;->_assetsListItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    move-result-object v0

    return-object v0
.end method
