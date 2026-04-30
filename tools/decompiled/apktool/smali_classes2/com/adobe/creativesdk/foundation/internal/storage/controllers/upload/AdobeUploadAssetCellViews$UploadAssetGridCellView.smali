.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetCellViews$UploadAssetGridCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;
.source "AdobeUploadAssetCellViews.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;-><init>()V

    return-void
.end method


# virtual methods
.method protected addProgressBarChildRule(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 29
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->addProgressBarChildRule(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    const/16 v0, 0x8

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_selectbtn:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method protected getProgressBarContainer()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetCellViews$UploadAssetGridCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_imageContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method
