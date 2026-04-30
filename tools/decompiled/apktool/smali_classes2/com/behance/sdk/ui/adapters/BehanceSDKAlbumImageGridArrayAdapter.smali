.class public Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BehanceSDKAlbumImageGridArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/behance/sdk/project/modules/ImageModule;",
        ">;"
    }
.end annotation


# instance fields
.field private imageHeight:I

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private selectedImageModulesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;"
        }
    .end annotation
.end field

.field private selectionIndicatorHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_adapter_album_image_view_grid_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 50
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->computeImageHeight()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->imageHeight:I

    .line 51
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->computeSelectionIndicatorHeight()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->selectionIndicatorHeight:I

    .line 52
    return-void
.end method

.method private computeImageHeight()I
    .locals 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_image_selector_view_album_image_grid_left_right_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 115
    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_image_selector_view_album_image_grid_item_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 116
    sget v3, Lcom/behance/sdk/R$integer;->bsdk_image_selection_fragment_grid_col_count:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 117
    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_image_selector_view_adapter_bg_stroke_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 118
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 119
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 120
    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v3

    .line 122
    mul-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    .line 123
    return v0
.end method

.method private computeSelectionIndicatorHeight()I
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_image_selector_view_adapter_bg_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 129
    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->imageHeight:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 56
    .line 58
    if-nez p2, :cond_2

    .line 59
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_adapter_album_image_view_grid_item:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move v1, v2

    .line 66
    :goto_0
    sget v0, Lcom/behance/sdk/R$id;->bsdkAlbumImageAdapterThumbnailImageView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    sget v3, Lcom/behance/sdk/R$id;->bsdkAlbumImageAdapterSelectionIndicator:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 69
    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    iget v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->imageHeight:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_4

    .line 86
    iget v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->selectionIndicatorHeight:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/project/modules/ImageModule;

    .line 94
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/behance/sdk/project/modules/ImageModule;->getThumbNail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->selectedImageModulesList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->selectedImageModulesList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_1
    :goto_3
    return-object p2

    .line 63
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->imageHeight:I

    invoke-direct {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 89
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->selectionIndicatorHeight:I

    invoke-direct {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 100
    :cond_5
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public setSelectedImageModulesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->selectedImageModulesList:Ljava/util/List;

    .line 108
    return-void
.end method
