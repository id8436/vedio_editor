.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MobileCreationPackageItemsListView.java"


# instance fields
.field _mainCellView:Landroid/view/View;

.field _mainThumbnailImage:Landroid/widget/ImageView;

.field _modifiedDate:Landroid/widget/TextView;

.field _page:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 159
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;

    .line 160
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 161
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->_mainCellView:Landroid/view/View;

    .line 162
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobilecreation_item_mainImage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    .line 163
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobilecreation_item_modifiedDate:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->_modifiedDate:Landroid/widget/TextView;

    .line 164
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->setImage(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method private setImage(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    return-void
.end method


# virtual methods
.method public getPage()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->_page:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method public setAssetClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->_mainCellView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method public setModifiedDate(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeAssetInfoUtil;->getModifiedDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->_modifiedDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    return-void
.end method

.method public setPage(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->_page:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 180
    return-void
.end method
