.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;
.source "DesignLibraryItemsListView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;-><init>()V

    return-void
.end method


# virtual methods
.method protected getProgressBarContainer()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_image_progressbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected performOnFinishInflate()V
    .locals 2

    .prologue
    .line 1549
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;->createAttachProgressBarToView()V

    .line 1550
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_imagecollection_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    .line 1552
    return-void
.end method
