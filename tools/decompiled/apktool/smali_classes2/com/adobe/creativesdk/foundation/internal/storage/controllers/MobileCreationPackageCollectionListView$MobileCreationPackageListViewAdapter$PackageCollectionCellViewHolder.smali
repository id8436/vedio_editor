.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MobileCreationPackageCollectionListView.java"


# instance fields
.field _countView:Landroid/widget/TextView;

.field _fourthThumbnailImage:Landroid/widget/ImageView;

.field _mainCellView:Landroid/view/View;

.field _mainThumbnailImage:Landroid/widget/ImageView;

.field _menuIcon:Landroid/widget/ImageView;

.field _menuIconLayout:Landroid/widget/RelativeLayout;

.field _mobileCreationIcon:Landroid/widget/ImageView;

.field _packagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field _secondThumbnailImage:Landroid/widget/ImageView;

.field _thirdThumbnailImage:Landroid/widget/ImageView;

.field _threeImagesLayout:Landroid/widget/LinearLayout;

.field _titleView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 244
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;

    .line 245
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 246
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_mainCellView:Landroid/view/View;

    .line 247
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobilecreation_package_mainImage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    .line 248
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobilecreation_package_secondImage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_secondThumbnailImage:Landroid/widget/ImageView;

    .line 249
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobilecreation_package_thirdImage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_thirdThumbnailImage:Landroid/widget/ImageView;

    .line 251
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobilecreation_package_FourthImage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_fourthThumbnailImage:Landroid/widget/ImageView;

    .line 253
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobilecreation_package_cell_main_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_titleView:Landroid/widget/TextView;

    .line 254
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobilecreation_package_cell_count_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_countView:Landroid/widget/TextView;

    .line 255
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobilecreation_package_threeImages:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_threeImagesLayout:Landroid/widget/LinearLayout;

    .line 257
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobilecreation_package_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_mobileCreationIcon:Landroid/widget/ImageView;

    .line 258
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_mobile_creation_menu_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_menuIcon:Landroid/widget/ImageView;

    .line 259
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_mobile_creation_menu_icon_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_menuIconLayout:Landroid/widget/RelativeLayout;

    .line 261
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 263
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_menuIconLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 266
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;JLandroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->setImageAtIndex(JLandroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method private setImageAtIndex(JLandroid/graphics/drawable/BitmapDrawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_secondThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_secondThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 279
    :cond_2
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_thirdThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_thirdThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 284
    :cond_3
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_fourthThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_fourthThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getPages()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_packagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    return-object v0
.end method

.method public setAssetClickListner(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_mainCellView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-void
.end method

.method public setContextMenuListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_menuIconLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    return-void
.end method

.method public setEmptyCell()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 303
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 304
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_mainThumbnailImage:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->empty_folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_secondThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_thirdThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_fourthThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    return-void
.end method

.method public setIcon(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 3

    .prologue
    .line 316
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->getAssetDataSourceTypeFor(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v1

    .line 318
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 319
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v1, v2, :cond_1

    .line 320
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->mobile_creation_draw:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 326
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_mobileCreationIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    return-void

    .line 321
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v1, v2, :cond_2

    .line 322
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->mobile_creation_sketch:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_2
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v1, v2, :cond_0

    .line 324
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->mobile_creation_comp:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setItemsCount(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 331
    const/4 v2, 0x0

    .line 332
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 333
    :goto_0
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->getAssetDataSourceTypeFor(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v3

    .line 334
    if-ne v0, v5, :cond_5

    .line 336
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v3, v4, :cond_1

    .line 337
    const-string/jumbo v2, "%s %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_lineordrawcollection_singular:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_countView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 338
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v3, v0, :cond_2

    .line 339
    const-string/jumbo v0, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_sketchCollection_single_sketch:I

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 340
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v3, v0, :cond_3

    .line 341
    const-string/jumbo v0, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_psmix_collection_singular:I

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 342
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v3, v0, :cond_4

    .line 343
    const-string/jumbo v0, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_comp_collection_singular:I

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 344
    :cond_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSFix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v3, v0, :cond_a

    .line 345
    const-string/jumbo v0, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_psfix_collection_singular:I

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 348
    :cond_5
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v3, v4, :cond_6

    .line 349
    const-string/jumbo v2, "%s %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_lineordrawcollection_plural:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 350
    :cond_6
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v3, v4, :cond_7

    .line 351
    const-string/jumbo v2, "%1$s %2$s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_sketchCollection_plural:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 352
    :cond_7
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v3, v4, :cond_8

    .line 353
    const-string/jumbo v0, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_psmix_collection_singular:I

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 354
    :cond_8
    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v3, v4, :cond_9

    .line 355
    const-string/jumbo v2, "%s %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_comp_collection_plural:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 356
    :cond_9
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSFix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne v3, v0, :cond_a

    .line 357
    const-string/jumbo v0, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_psfix_collection_singular:I

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method

.method public setPages(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->_packagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 299
    return-void
.end method
