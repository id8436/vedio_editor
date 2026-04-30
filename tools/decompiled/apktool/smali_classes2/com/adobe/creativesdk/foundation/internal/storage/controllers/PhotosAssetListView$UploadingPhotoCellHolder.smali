.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;
.source "PhotosAssetListView.java"


# instance fields
.field public photoUploadCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;-><init>(Landroid/view/View;)V

    .line 274
    return-void
.end method

.method public static createInstance(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;
    .locals 3

    .prologue
    .line 277
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;-><init>()V

    .line 278
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_upload_photo_asset_cell:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 279
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;-><init>(Landroid/view/View;)V

    .line 280
    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;->photoUploadCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;

    .line 281
    return-object v1
.end method


# virtual methods
.method public displayThumbnail(Landroid/graphics/Bitmap;F)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;->photoUploadCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;->displayThumnail(Landroid/graphics/Bitmap;FZ)V

    .line 292
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;->photoUploadCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;->setTitle(Ljava/lang/String;)V

    .line 287
    return-void
.end method
