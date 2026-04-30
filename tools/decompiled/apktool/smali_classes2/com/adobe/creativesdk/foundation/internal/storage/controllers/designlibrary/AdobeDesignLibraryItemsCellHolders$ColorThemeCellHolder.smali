.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;
.source "AdobeDesignLibraryItemsCellHolders.java"


# instance fields
.field private colorTheme1:Landroid/widget/RelativeLayout;

.field private colorThemeItemView:Landroid/view/View;

.field private colorThemeMenuLayout:Landroid/widget/RelativeLayout;

.field private mainView:Landroid/widget/LinearLayout;

.field private menuIcon:Landroid/widget/ImageView;

.field private modifiedDate:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;-><init>(Landroid/view/View;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->setColorThemeItemView(Landroid/view/View;)V

    .line 180
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_colortheme_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->setMainView(Landroid/widget/LinearLayout;)V

    .line 181
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_colortheme_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->setTitleView(Landroid/widget/TextView;)V

    .line 182
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_libraryitem_colortheme_menu_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->setMenuIcon(Landroid/widget/ImageView;)V

    .line 183
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_colortheme_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->setModifiedDate(Landroid/widget/TextView;)V

    .line 184
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_colortheme_menu_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->setColorThemeMenuLayout(Landroid/widget/RelativeLayout;)V

    .line 185
    return-void
.end method


# virtual methods
.method public getColorTheme1()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->colorTheme1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getColorThemeItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->colorThemeItemView:Landroid/view/View;

    return-object v0
.end method

.method public getColorThemeMenuLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->colorThemeMenuLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMainView()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->mainView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMenuIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->menuIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getModifiedDate()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->modifiedDate:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAssetClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->getColorThemeItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method public setColorTheme1(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->colorTheme1:Landroid/widget/RelativeLayout;

    .line 244
    return-void
.end method

.method public setColorThemeItemView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->colorThemeItemView:Landroid/view/View;

    .line 260
    return-void
.end method

.method public setColorThemeMenuLayout(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->colorThemeMenuLayout:Landroid/widget/RelativeLayout;

    .line 252
    return-void
.end method

.method public setContextMenuClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->getColorThemeMenuLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->getColorThemeMenuLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void
.end method

.method public setMainView(Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->mainView:Landroid/widget/LinearLayout;

    .line 212
    return-void
.end method

.method public setMenuIcon(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->menuIcon:Landroid/widget/ImageView;

    .line 236
    return-void
.end method

.method public setModifiedDate(J)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders;->access$000(JLandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->getModifiedDate()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public setModifiedDate(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->modifiedDate:Landroid/widget/TextView;

    .line 228
    return-void
.end method

.method public setRgbColors(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->getMainView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 189
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->getMainView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 191
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->titleView:Landroid/widget/TextView;

    .line 220
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorThemeCellHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 204
    return-void
.end method
