.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MobileCreationPackageItemsListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->mContext:Landroid/content/Context;

    .line 149
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->getPackagePagesCount()I

    move-result v0

    return v0
.end method

.method protected getPackagePagesCount()I
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->getPages()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 203
    :cond_0
    return v0
.end method

.method public getPageAtPosition(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    .line 226
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;

    .line 227
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->getPageAtPosition(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 228
    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->setPage(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    .line 229
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getModificationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->setModifiedDate(Ljava/util/Date;)V

    .line 230
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    invoke-direct {v1, v2, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V

    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->setAssetClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 236
    if-nez v1, :cond_1

    .line 239
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v1

    .line 240
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;)V

    .line 276
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    invoke-virtual {v0, v3, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_mobilecreation_package_item_cell:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;Landroid/view/View;)V

    return-object v1
.end method
