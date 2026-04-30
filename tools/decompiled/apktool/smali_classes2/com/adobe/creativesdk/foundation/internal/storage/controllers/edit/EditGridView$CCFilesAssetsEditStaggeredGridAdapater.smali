.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;
.source "EditGridView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;Landroid/content/Context;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;->bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 157
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    if-eqz v0, :cond_1

    .line 158
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->adjustSelectionFrame()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;

    if-eqz v0, :cond_0

    .line 160
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->adjustSelectionFrame()V

    goto :goto_0
.end method

.method protected createAssetFileCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_generic_staggered_assetviewcell:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 184
    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->setEditDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;)V

    .line 185
    return-object v0
.end method

.method protected createAssetFolderCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;-><init>()V

    .line 191
    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->setEditDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesEditDelegate;)V

    .line 192
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_assetsgrid_folderviewcell:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 196
    return-object v0
.end method

.method public getControllerState()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;)Z

    move-result v0

    return v0
.end method

.method public handleAssetSelectionToggle(I)V
    .locals 3

    .prologue
    .line 138
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleAssetSelectionToggle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;->handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 166
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v1

    move-object v0, p1

    .line 169
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->handleSelection(Z)V

    .line 171
    :cond_0
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;

    if-eqz v0, :cond_1

    .line 173
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    .line 174
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->handleSelection(Z)V

    .line 176
    :cond_1
    return-void
.end method

.method protected isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 4

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView$CCFilesAssetsStaggeredGridAdapter;->isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v2

    .line 124
    if-eqz v2, :cond_0

    .line 126
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->handleSelection(Z)V

    .line 128
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->adjustSelectionFrame()V

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 129
    :cond_1
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView$CCFilesAssetsEditStaggeredGridAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->handleSelection(Z)V

    goto :goto_0
.end method
