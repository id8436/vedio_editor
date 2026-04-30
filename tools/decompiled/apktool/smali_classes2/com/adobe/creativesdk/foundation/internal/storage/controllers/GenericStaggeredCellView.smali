.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;
.source "GenericStaggeredCellView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;-><init>()V

    return-void
.end method


# virtual methods
.method public getMenuIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_menuIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected handleOnFinishInflate()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 27
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_title:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_titleView:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_imageView:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    .line 29
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetvire_bottom_video_layout:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_videoLayout:Landroid/widget/LinearLayout;

    .line 30
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_bottom_info_layout:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_bottomInfoLayout:Landroid/widget/LinearLayout;

    .line 31
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_video_duration:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_videoDuration:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_video_indicator:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_videoIndicator:Landroid/widget/ImageView;

    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_aspectRatioHint:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setHeightRatio(D)V

    .line 34
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_selectbtn:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_selectBtn:Landroid/view/View;

    .line 35
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_bottom_title_section_vertical:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_cellBottomSection:Landroid/widget/LinearLayout;

    .line 36
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_files_menu_icon:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_menuIcon:Landroid/widget/RelativeLayout;

    .line 37
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_browser_cell_menu_icon:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_menuIconView:Landroid/widget/ImageView;

    .line 38
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_file_extension:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_extText:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_file_size:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_sizeView:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_photo_count:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_photoCountView:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_file_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_photoIcon:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_file_modified_date:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_modifiedDate:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_menuIcon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_titleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->hasTitleView()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_titleView:Landroid/widget/TextView;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_modifiedDate:Landroid/widget/TextView;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_sizeView:Landroid/widget/TextView;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 59
    goto :goto_1
.end method

.method protected hasTitleView()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public hidePopUpMenu()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_menuIcon:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_menuIcon:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 79
    :cond_0
    return-void
.end method

.method protected providesSelection()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public setContextMenuHandler(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_files_menu_icon:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    return-void
.end method
