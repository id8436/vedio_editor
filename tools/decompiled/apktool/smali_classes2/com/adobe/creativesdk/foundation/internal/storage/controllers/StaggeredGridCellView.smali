.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
.source "StaggeredGridCellView.java"


# instance fields
.field private _forcedAspectRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_forcedAspectRatio:F

    return-void
.end method


# virtual methods
.method protected changeSelectionOverlay()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public forceAspectRatio(F)V
    .locals 1

    .prologue
    .line 23
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_forcedAspectRatio:F

    .line 24
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_forcedAspectRatio:F

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->setAssetImageAspectRatioHint(F)V

    .line 25
    return-void
.end method

.method public forceHideBottomInfo()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 33
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_file_size:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_files_thin_line:I

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    return-void
.end method

.method public forceHideBottomTitleBar()V
    .locals 2

    .prologue
    .line 28
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_bottom_title_section:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    return-void
.end method

.method protected handlePostInflate()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_aspectRatioHint:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setHeightRatio(D)V

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->handlePostInflate()V

    .line 88
    return-void
.end method

.method public setAssetImageAspectRatioHint(F)V
    .locals 4

    .prologue
    .line 70
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_aspectRatioHint:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_forcedAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 74
    iget p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_forcedAspectRatio:F

    .line 76
    :cond_1
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setAssetImageAspectRatioHint(F)V

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_aspectRatioHint:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setHeightRatio(D)V

    goto :goto_0
.end method

.method protected setThumbnailOnAssetCell(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 52
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_forcedAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 55
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->getHeightRatio()D

    move-result-wide v2

    .line 57
    float-to-double v4, v1

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setHeightRatio(D)V

    .line 65
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setThumbnailOnAssetCell(Landroid/graphics/Bitmap;)V

    .line 66
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/StaggeredGridCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setHeightRatio(D)V

    goto :goto_0
.end method
