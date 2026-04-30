.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;
.source "AdobeDesignLibraryItemsCellHolders.java"


# instance fields
.field private dynamicImageView:Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

.field private imageItemView:Landroid/view/View;

.field private imageMenuLayout:Landroid/widget/RelativeLayout;

.field private menuIcon:Landroid/widget/ImageView;

.field private modifiedDate:Landroid/widget/TextView;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;-><init>(Landroid/view/View;)V

    .line 286
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->setImageItemView(Landroid/view/View;)V

    .line 287
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_imagecolletion_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->setTitleView(Landroid/widget/TextView;)V

    .line 288
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_imagecollection_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->setDynamicImageView(Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;)V

    .line 290
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getDynamicImageView()Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setHeightRatio(D)V

    .line 291
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_libraryitem_cell_relativelayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->setRelativeLayout(Landroid/widget/RelativeLayout;)V

    .line 293
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_libraryitem_menu_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->setMenuIcon(Landroid/widget/ImageView;)V

    .line 294
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_imagecollection_menu_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->setImageMenuLayout(Landroid/widget/RelativeLayout;)V

    .line 295
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_imagecollection_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->setModifiedDate(Landroid/widget/TextView;)V

    .line 296
    return-void
.end method


# virtual methods
.method public displayThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getDynamicImageView()Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 301
    return-void
.end method

.method public displayThumbnail(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getDynamicImageView()Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    return-void
.end method

.method public getDynamicImageView()Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->dynamicImageView:Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    return-object v0
.end method

.method public getImageItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->imageItemView:Landroid/view/View;

    return-object v0
.end method

.method public getImageMenuLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->imageMenuLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMenuIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->menuIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getModifiedDate()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->modifiedDate:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRelativeLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAssetClicKListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getImageItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void
.end method

.method public setContextMenuClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getImageMenuLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getImageMenuLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    return-void
.end method

.method public setDisabled(Z)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    .line 323
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getDynamicImageView()Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setAlpha(F)V

    .line 324
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 325
    return-void

    :cond_0
    move v0, v2

    .line 323
    goto :goto_0

    :cond_1
    move v1, v2

    .line 324
    goto :goto_1
.end method

.method public setDynamicImageView(Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->dynamicImageView:Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    .line 337
    return-void
.end method

.method public setImageHeightRatio(D)V
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getDynamicImageView()Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/utils/DynamicHeightImageView;->setHeightRatio(D)V

    .line 309
    return-void
.end method

.method public setImageItemView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->imageItemView:Landroid/view/View;

    .line 385
    return-void
.end method

.method public setImageMenuLayout(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->imageMenuLayout:Landroid/widget/RelativeLayout;

    .line 377
    return-void
.end method

.method public setMenuIcon(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->menuIcon:Landroid/widget/ImageView;

    .line 369
    return-void
.end method

.method public setModifiedDate(J)V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders;->access$000(JLandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getModifiedDate()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method public setModifiedDate(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->modifiedDate:Landroid/widget/TextView;

    .line 353
    return-void
.end method

.method public setRelativeLayout(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 361
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->titleView:Landroid/widget/TextView;

    .line 345
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    return-void
.end method
