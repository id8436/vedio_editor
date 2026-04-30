.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;
.source "EditSectionalListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;Landroid/content/Context;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 178
    return-void
.end method

.method protected createAssetFileCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 3

    .prologue
    .line 141
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;-><init>()V

    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_list_assetviewcell:I

    invoke-virtual {v1, v0, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    move-object v0, v1

    .line 145
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->setEditDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;)V

    .line 147
    return-object v1
.end method

.method protected createAssetFolderCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 3

    .prologue
    .line 153
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;-><init>()V

    .line 155
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_list_folderviewcell:I

    invoke-virtual {v1, v0, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    move-object v0, v1

    .line 157
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->setEditDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;)V

    .line 159
    return-object v1
.end method

.method public getControllerState()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;)Z

    move-result v0

    return v0
.end method

.method public handleAssetSelectionToggle(I)V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleAssetSelectionToggle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 183
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v1

    move-object v0, p1

    .line 186
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->handleSelection(Z)V

    .line 188
    :cond_0
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;

    if-eqz v0, :cond_1

    .line 190
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    .line 191
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->handleSelection(Z)V

    .line 193
    :cond_1
    return-void
.end method

.method protected isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 3

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v1

    .line 165
    if-eqz v1, :cond_0

    .line 166
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    if-eqz v0, :cond_1

    .line 167
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->handleSelection(Z)V

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;

    if-eqz v0, :cond_0

    .line 169
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListFolderEditCellView;->handleSelection(Z)V

    goto :goto_0
.end method
