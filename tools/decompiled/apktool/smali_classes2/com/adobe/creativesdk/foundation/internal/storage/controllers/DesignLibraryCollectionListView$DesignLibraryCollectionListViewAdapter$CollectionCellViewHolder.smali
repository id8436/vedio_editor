.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DesignLibraryCollectionListView.java"


# instance fields
.field _childContainer:Landroid/view/View;

.field _colorView:Landroid/widget/RelativeLayout;

.field _colortThemeContainer:Landroid/widget/LinearLayout;

.field _countView:Landroid/widget/TextView;

.field _forwardIcon:Landroid/widget/ImageView;

.field _imageView:Landroid/widget/ImageView;

.field _itemView:Landroid/view/View;

.field _libraryItem:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field _libraryMenuIcon:Landroid/widget/RelativeLayout;

.field _sharedLibraryView:Landroid/widget/ImageView;

.field _titleView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 231
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    .line 232
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 233
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_itemView:Landroid/view/View;

    .line 234
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_colortheme:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colortThemeContainer:Landroid/widget/LinearLayout;

    .line 235
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_color:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colorView:Landroid/widget/RelativeLayout;

    .line 236
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    .line 237
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_shared_folder_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_sharedLibraryView:Landroid/widget/ImageView;

    .line 238
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_menu_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_libraryMenuIcon:Landroid/widget/RelativeLayout;

    .line 239
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_folder_forward_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_forwardIcon:Landroid/widget/ImageView;

    .line 240
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_main_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_titleView:Landroid/widget/TextView;

    .line 241
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_count_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_countView:Landroid/widget/TextView;

    .line 243
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 244
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_titleView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_countView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 247
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_forwardIcon:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_more_vert_black_24dp:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_libraryMenuIcon:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setViewVisible(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 262
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colortThemeContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colortThemeContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colorView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colorView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    .line 265
    :goto_2
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    return-void

    :cond_0
    move v0, v2

    .line 262
    goto :goto_0

    :cond_1
    move v0, v2

    .line 263
    goto :goto_1

    :cond_2
    move v0, v1

    .line 264
    goto :goto_2

    :cond_3
    move v1, v2

    .line 265
    goto :goto_3
.end method


# virtual methods
.method public getLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_libraryItem:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    return-object v0
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colorView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setViewVisible(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colorView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 272
    return-void
.end method

.method public setColorTheme(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colortThemeContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setViewVisible(Landroid/view/View;)V

    .line 275
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colortThemeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 276
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_colortThemeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 278
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 276
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public setContextMenuListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_libraryMenuIcon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    return-void
.end method

.method public setEmptyCell()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setViewVisible(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 303
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->empty_library:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setViewVisible(Landroid/view/View;)V

    .line 283
    if-nez p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageDrawagle(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setViewVisible(Landroid/view/View;)V

    .line 292
    if-nez p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIsReadyOnlyImage()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_sharedLibraryView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    .line 324
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_sharedLibraryView:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_folder_ro:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    return-void
.end method

.method public setItemsCount(I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 332
    .line 333
    if-eq p1, v2, :cond_0

    .line 334
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_design_library_collection_count:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_countView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_design_library_collection_count_single:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_libraryItem:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 343
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method public setPublicLibraryImage()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_sharedLibraryView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    .line 310
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_sharedLibraryView:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_library_bookmark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    return-void
.end method

.method public setSharedLibraryImage()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_sharedLibraryView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    .line 317
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_sharedLibraryView:Landroid/widget/ImageView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_folder_shared:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    return-void
.end method
