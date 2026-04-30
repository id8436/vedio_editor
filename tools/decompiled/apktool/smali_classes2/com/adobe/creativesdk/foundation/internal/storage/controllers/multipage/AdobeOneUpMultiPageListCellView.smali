.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;
.super Ljava/lang/Object;
.source "AdobeOneUpMultiPageListCellView.java"


# instance fields
.field protected aspectRatioHint:F

.field protected imageView:Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

.field protected mainRootView:Landroid/view/View;

.field protected position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    .line 35
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;->position:I

    if-ne v0, p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;->imageView:Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;->aspectRatioHint:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setHeightRatio(D)V

    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;->imageView:Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    :cond_0
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;->mainRootView:Landroid/view/View;

    return-object v0
.end method

.method public initiallizeLayoutComponents(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;->mainRootView:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;->mainRootView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_multipage_assetlist_assetcell_imageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;->imageView:Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    .line 22
    return-void
.end method

.method public setAssetImageAspectRatioHint(F)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;->aspectRatioHint:F

    .line 45
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageListCellView;->position:I

    .line 31
    return-void
.end method
