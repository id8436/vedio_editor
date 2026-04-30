.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
.source "SectionalListAssetCellView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;-><init>()V

    return-void
.end method


# virtual methods
.method public getMenuIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->_listMenuIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected handleOnFinishInflate()V
    .locals 2

    .prologue
    .line 19
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetlist_assetcell_title:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->_titleView:Landroid/widget/TextView;

    .line 20
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetlist_assetcell_imageView:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    .line 21
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetlist_assetcell_selectbtn:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->_selectBtn:Landroid/view/View;

    .line 22
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 23
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_asset_assetview_assetlist_assetcell_icon:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->_listMenuIcon:Landroid/widget/ImageView;

    .line 24
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_list_menulayout:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->_listMenuCellLayout:Landroid/widget/RelativeLayout;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->_listMenuIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :cond_0
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_asset_assetview_assetlist_assetcell_layout:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->_cellBottomSection:Landroid/widget/LinearLayout;

    .line 28
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_list_divider:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->_listDivider:Landroid/view/View;

    .line 29
    return-void
.end method

.method public hidePopUpMenu()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->_listMenuCellLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 42
    return-void
.end method

.method protected providesSelection()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public setContextMenuHandler(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_list_menulayout:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListAssetCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_0
    return-void
.end method
