.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
.source "SectionalListFolderCellView.java"


# instance fields
.field private _emptyFolderCellDefaultHeight:I

.field private _emptyFolderCellDefaultWidth:I

.field private _isReadOnlyFolder:Z

.field private _isSharedFolder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_isSharedFolder:Z

    .line 19
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_isReadOnlyFolder:Z

    .line 20
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_emptyFolderCellDefaultHeight:I

    .line 21
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_emptyFolderCellDefaultWidth:I

    return-void
.end method

.method private setSharedFolderIcon()V
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_isSharedFolder:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_isReadOnlyFolder:Z

    if-eqz v0, :cond_2

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewSharedFolderIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_isReadOnlyFolder:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewSharedFolderIcon:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_folder_ro:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewSharedFolderIcon:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_folder_shared:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewSharedFolderIcon:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMenuIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_forward:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected handleOnFinishInflate()V
    .locals 2

    .prologue
    .line 25
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetlist_foldercell_title:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_titleView:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetlist_foldercell_count:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_assetsCount:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetlist_foldercell_image:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetlist_shared_folder_image:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewSharedFolderIcon:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 30
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetlist_forwardicon:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_forward:Landroid/widget/ImageView;

    .line 31
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_list_menulayout:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_listMenuLayout:Landroid/widget/RelativeLayout;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_forward:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->folder_forward_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    :cond_0
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetlist_foldercell_imagecontainer:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_container:Landroid/widget/RelativeLayout;

    .line 35
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetlist_listLayout:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_gridViewLayout:Landroid/widget/LinearLayout;

    .line 36
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_list_folder_divider:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_listDivider:Landroid/view/View;

    .line 38
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_assetbrowser_list_view_folder_cell_empty_folder_layout_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_emptyFolderCellDefaultHeight:I

    .line 39
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_assetbrowser_list_view_folder_cell_empty_folder_layout_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_emptyFolderCellDefaultWidth:I

    .line 40
    return-void
.end method

.method public hidePopUpMenu()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_forward:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public prepareForReuse()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->prepareForReuse()V

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    return-void
.end method

.method protected providesSelection()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public resetFolderView(ZZZ)V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->setFolderMetrics(Z)V

    .line 105
    invoke-virtual {p0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->setSharedFolder(ZZ)V

    .line 106
    return-void
.end method

.method public setContextMenuHandler(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_list_menulayout:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :cond_0
    return-void
.end method

.method public setFolderMetrics(Z)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_emptyFolderCellDefaultHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_emptyFolderCellDefaultWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->empty_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public setSharedFolder(ZZ)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_isSharedFolder:Z

    .line 77
    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->_isReadOnlyFolder:Z

    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->setSharedFolderIcon()V

    goto :goto_0
.end method
