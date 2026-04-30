.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
.source "GridFolderCellView.java"


# instance fields
.field private _emptyFolderCellDefaultHeight:I

.field private _emptyFolderCellDefaultWidth:I

.field _isReadOnlyFolder:Z

.field _isSharedFolder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_isSharedFolder:Z

    .line 20
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_isReadOnlyFolder:Z

    .line 21
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_emptyFolderCellDefaultHeight:I

    .line 22
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_emptyFolderCellDefaultWidth:I

    return-void
.end method

.method private setSharedFolderIcon()V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_isSharedFolder:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_isReadOnlyFolder:Z

    if-eqz v0, :cond_2

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewSharedFolderIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_isReadOnlyFolder:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewSharedFolderIcon:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_folder_ro:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewSharedFolderIcon:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_folder_shared:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewSharedFolderIcon:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMenuIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_forward:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected handleOnFinishInflate()V
    .locals 2

    .prologue
    .line 26
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_foldercell_title:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_titleView:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_foldercell_count:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_assetsCount:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_foldercell_image:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    .line 29
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_shared_folder_image:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewSharedFolderIcon:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_foldercell_imageContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_container:Landroid/widget/RelativeLayout;

    .line 31
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->gridViewLinearLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_gridViewLayout:Landroid/widget/LinearLayout;

    .line 33
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 35
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->forwardIcon:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_forward:Landroid/widget/ImageView;

    .line 36
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_folder_menu_icon:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_folderMenuIcon:Landroid/widget/RelativeLayout;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_forward:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->folder_forward_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_assetbrowser_grid_folderViewCell_empty_folder_layout_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_emptyFolderCellDefaultHeight:I

    .line 45
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_assetbrowser_grid_folderViewCell_empty_folder_layout_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_emptyFolderCellDefaultWidth:I

    .line 46
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_assetsCount:Landroid/widget/TextView;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_titleView:Landroid/widget/TextView;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method public hidePopUpMenu()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_folderMenuIcon:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 56
    return-void
.end method

.method public prepareForReuse()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->prepareForReuse()V

    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    return-void
.end method

.method protected providesSelection()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public resetFolderView(ZZZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 112
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 113
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 114
    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetcell_disable:I

    invoke-virtual {v1, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 115
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 119
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    move-object v0, v1

    .line 121
    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 132
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->setFolderMetrics(Z)V

    .line 133
    invoke-virtual {p0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->setSharedFolder(ZZ)V

    .line 134
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 125
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_assetcell_disable_view:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    goto :goto_0
.end method

.method public setContextMenuHandler(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_folderMenuIcon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public setFolderMetrics(Z)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 65
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_emptyFolderCellDefaultHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_emptyFolderCellDefaultWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->empty_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public setSharedFolder(ZZ)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_isSharedFolder:Z

    .line 82
    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->_isReadOnlyFolder:Z

    .line 83
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GridFolderCellView;->setSharedFolderIcon()V

    goto :goto_0
.end method
