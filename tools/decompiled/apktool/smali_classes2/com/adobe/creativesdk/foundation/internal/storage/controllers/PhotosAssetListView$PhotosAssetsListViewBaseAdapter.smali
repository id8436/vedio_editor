.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;
.source "PhotosAssetListView.java"


# instance fields
.field isSearch:Z

.field query:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 173
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;Landroid/content/Context;)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->isSearch:Z

    .line 171
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->query:Ljava/lang/String;

    .line 175
    return-void
.end method

.method private bindUploadingPhotoItem(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V
    .locals 5

    .prologue
    const/16 v0, 0x10e

    const v4, 0x3e99999a    # 0.3f

    .line 241
    .line 245
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->optionalMetadata:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->optionalMetadata:Lorg/json/JSONObject;

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 246
    :cond_0
    int-to-float v1, v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 247
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v0

    .line 250
    :goto_0
    iput-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    .line 251
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iput-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendype:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    .line 253
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;

    move-result-object v1

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;->photoUploadCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadCellView;

    invoke-virtual {v1, p2, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->bindCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 254
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 256
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;->displayThumbnail(Landroid/graphics/Bitmap;F)V

    .line 263
    :goto_1
    return-void

    .line 249
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    move-object v0, v1

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getLocalAssetURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 262
    iget v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    float-to-int v3, v3

    iget v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v3, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;->displayThumbnail(Landroid/graphics/Bitmap;F)V

    goto :goto_1
.end method


# virtual methods
.method protected getAssetsCount()I
    .locals 3

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->getPhotosList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->getPhotosList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 204
    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)I

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getPhotosList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->isSearch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->searchPhotoAssets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->_photoCollectionsList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->_photoCollectionsList:Ljava/util/ArrayList;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->_photoCollectionsList:Ljava/util/ArrayList;

    return-object v0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleCellPostCreation(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;)V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->forceHideBottomInfo()V

    .line 193
    return-void
.end method

.method protected isAssetSelectable(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    .line 234
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->bindUploadingPhotoItem(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-super {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotosAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;->createInstance(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$UploadingPhotoCellHolder;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    move-result-object v0

    goto :goto_0
.end method
