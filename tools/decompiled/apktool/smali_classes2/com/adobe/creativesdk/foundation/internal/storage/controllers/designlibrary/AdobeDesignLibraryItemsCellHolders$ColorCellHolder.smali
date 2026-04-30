.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;
.source "AdobeDesignLibraryItemsCellHolders.java"


# instance fields
.field private colorItemView:Landroid/view/View;

.field private colorMenuLayout:Landroid/widget/RelativeLayout;

.field private colorView:Landroid/widget/RelativeLayout;

.field private menuIcon:Landroid/widget/ImageView;

.field private modifiedDate:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;-><init>(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->setColorItemView(Landroid/view/View;)V

    .line 87
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_color_rgb_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->setTitleView(Landroid/widget/TextView;)V

    .line 88
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_color_cell_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->setColorView(Landroid/widget/RelativeLayout;)V

    .line 89
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_libraryitem_color_menu_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->setMenuIcon(Landroid/widget/ImageView;)V

    .line 90
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_color_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->setModifiedDate(Landroid/widget/TextView;)V

    .line 91
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_libraryitem_color_menu_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->setColorMenuLayout(Landroid/widget/RelativeLayout;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getColorItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->colorItemView:Landroid/view/View;

    return-object v0
.end method

.method public getColorMenuLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->colorMenuLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getColorView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->colorView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMenuIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->menuIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getModifiedDate()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->modifiedDate:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAssetClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->getColorItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->getColorView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 99
    return-void
.end method

.method public setColorItemView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->colorItemView:Landroid/view/View;

    .line 155
    return-void
.end method

.method public setColorMenuLayout(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->colorMenuLayout:Landroid/widget/RelativeLayout;

    .line 147
    return-void
.end method

.method public setColorRgbText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setColorView(Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->colorView:Landroid/widget/RelativeLayout;

    .line 131
    return-void
.end method

.method public setContextMenuClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->getColorMenuLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->getColorMenuLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method public setMenuIcon(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->menuIcon:Landroid/widget/ImageView;

    .line 139
    return-void
.end method

.method public setModifiedDate(J)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders;->access$000(JLandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->getModifiedDate()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public setModifiedDate(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->modifiedDate:Landroid/widget/TextView;

    .line 123
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->titleView:Landroid/widget/TextView;

    .line 115
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ColorCellHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    return-void
.end method
