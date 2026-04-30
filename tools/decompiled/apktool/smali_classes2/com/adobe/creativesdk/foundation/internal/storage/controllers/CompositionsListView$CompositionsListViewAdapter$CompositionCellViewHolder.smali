.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CompositionsListView.java"


# instance fields
.field _compositionIcon:Landroid/widget/ImageView;

.field _countView:Landroid/widget/TextView;

.field _mainCellView:Landroid/view/View;

.field _mainThumbnailImage:Landroid/widget/ImageView;

.field _menuIcon:Landroid/widget/ImageView;

.field _menuIconLayout:Landroid/widget/RelativeLayout;

.field _modifiedDate:Landroid/widget/TextView;

.field _packagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field _titleView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;Landroid/view/View;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 146
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;

    .line 147
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 148
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_mainCellView:Landroid/view/View;

    .line 149
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_composition_cell_mainImage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    .line 150
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_compositio_cell_main_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_titleView:Landroid/widget/TextView;

    .line 151
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_composition_cell_count_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_countView:Landroid/widget/TextView;

    .line 152
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_composition_cell_modification_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_modifiedDate:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_modifiedDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_composition_package_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_compositionIcon:Landroid/widget/ImageView;

    .line 155
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_composition_menu_icon_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_menuIconLayout:Landroid/widget/RelativeLayout;

    .line 156
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_composition_menu_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_menuIcon:Landroid/widget/ImageView;

    .line 158
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_menuIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;JLandroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->setImageAtIndex(JLandroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method private setImageAtIndex(JLandroid/graphics/drawable/BitmapDrawable;)V
    .locals 3

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public getPages()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_packagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    return-object v0
.end method

.method public setAssetClickListner(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_mainCellView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method public setContextMenuListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_menuIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method public setEmptyCell()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->empty_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    return-void
.end method

.method public setIcon(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 3

    .prologue
    .line 190
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->getAssetDataSourceTypeFor(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v1

    .line 192
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 194
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v1, v2, :cond_1

    .line 195
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->mobile_creation_mix:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_compositionIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    return-void

    .line 196
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSFix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v1, v2, :cond_0

    .line 197
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->mobile_creations_psfix:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setItemsCount(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    const/4 v0, 0x0

    .line 210
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->getAssetDataSourceTypeFor(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v1

    .line 212
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v1, v2, :cond_1

    .line 213
    const-string/jumbo v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_psmix_collection_singular:I

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_countView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void

    .line 214
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSFix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v1, v2, :cond_0

    .line 215
    const-string/jumbo v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_psfix_collection_singular:I

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setModificationDate(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeAssetInfoUtil;->getModifiedDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_modifiedDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public setPages(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->_packagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 187
    return-void
.end method
