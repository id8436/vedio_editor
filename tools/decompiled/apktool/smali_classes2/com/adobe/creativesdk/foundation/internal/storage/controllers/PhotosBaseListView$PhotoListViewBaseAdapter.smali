.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;
.source "PhotosBaseListView.java"


# instance fields
.field _photoCollectionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Landroid/content/Context;)V

    .line 197
    return-void
.end method


# virtual methods
.method protected createNewAssetCellView(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 3

    .prologue
    .line 294
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_generic_staggered_assetviewcell:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 299
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->handleCellPostCreation(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;)V

    .line 300
    return-object v0
.end method

.method getAssetCellDataFromPhoto(Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
    .locals 2

    .prologue
    .line 216
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;-><init>()V

    .line 217
    iput-object p1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    .line 218
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->getGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    .line 219
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->getPhotoName(Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->title:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->creationDate:Ljava/util/Date;

    .line 221
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->modificationDate:Ljava/util/Date;

    .line 222
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getMetadata()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->optionalMetadata:Lorg/json/JSONObject;

    .line 224
    return-object v1

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->getPhotosList()Ljava/util/ArrayList;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 233
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;

    .line 234
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->getAssetCellDataFromPhoto(Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 236
    :cond_0
    return-object v0
.end method

.method protected getAssetsCount()I
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->getPhotosList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->getPhotosList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 203
    :cond_0
    return v0
.end method

.method protected getPhotoName(Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    if-eqz v1, :cond_1

    .line 209
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getName()Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v1, :cond_0

    .line 211
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getPhotosList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;",
            ">;"
        }
    .end annotation
.end method

.method protected handleCellPostCreation(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method protected invalidateAssetsList()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->_photoCollectionsList:Ljava/util/ArrayList;

    .line 253
    return-void
.end method

.method protected isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 3

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 261
    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    .line 262
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->isMultiSelectModeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->isMarkedSelected()Z

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;

    invoke-virtual {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v1

    .line 268
    if-eq v0, v1, :cond_0

    .line 269
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->markSelected(Z)V

    .line 271
    :cond_0
    const/4 v0, 0x1

    .line 284
    :cond_1
    return v0
.end method

.method protected isAssetHasThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method protected isAssetSelectable(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method
