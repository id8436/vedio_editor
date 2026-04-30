.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView$CCFilesProviderListItemsAdapater;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;
.source "CCFilesProviderListView.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView$CCFilesProviderListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;Landroid/content/Context;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 102
    return-void
.end method

.method protected createAssetFileCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->createAssetFileCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    move-result-object v0

    return-object v0
.end method

.method protected createAssetFolderCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/ListDocProviderFolderCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/ListDocProviderFolderCellView;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView$CCFilesProviderListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_list_folderviewcell:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setFolderMetrics(Z)V

    .line 86
    return-object v0
.end method

.method protected handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 107
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView$CCFilesProviderListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    .line 110
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->handleSelection(Z)V

    .line 113
    :cond_0
    return-void
.end method

.method protected isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 3

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;->isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView$CCFilesProviderListItemsAdapater;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->handleSelection(Z)V

    .line 97
    :cond_0
    return v1
.end method
