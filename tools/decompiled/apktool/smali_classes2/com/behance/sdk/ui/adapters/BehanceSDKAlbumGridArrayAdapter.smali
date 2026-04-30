.class public Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BehanceSDKAlbumGridArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;",
        ">;"
    }
.end annotation


# instance fields
.field private albumCoverImageHeight:I

.field private albumNameContainerHeight:I

.field private layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_adapter_album_grid_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 51
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 52
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->computeAlbumCoverImageHeight()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->albumCoverImageHeight:I

    .line 53
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->albumCoverImageHeight:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->albumNameContainerHeight:I

    .line 54
    return-void
.end method

.method private computeAlbumCoverImageHeight()I
    .locals 5

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_image_selector_view_album_grid_left_right_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 127
    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_image_selector_view_album_grid_item_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 128
    sget v3, Lcom/behance/sdk/R$integer;->bsdk_album_selector_fragment_grid_col_count:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 129
    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_image_selector_view_adapter_bg_stroke_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 130
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 131
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 132
    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v1, v3, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, v3

    .line 134
    mul-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    .line 135
    return v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, -0x1

    const/4 v4, 0x0

    .line 59
    .line 61
    if-nez p2, :cond_1

    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_adapter_album_grid_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move v3, v4

    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;

    .line 70
    sget v1, Lcom/behance/sdk/R$id;->bsdkAlbumGridAdapterCoverImageView:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 71
    sget v2, Lcom/behance/sdk/R$id;->bsdkAlbumGridAdapterAlbumNameTxtView:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    if-eqz v3, :cond_0

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    :cond_0
    iget v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->albumCoverImageHeight:I

    .line 78
    iget v5, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->albumNameContainerHeight:I

    .line 80
    if-eqz v0, :cond_6

    .line 81
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 82
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getAlbumType()Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    move-result-object v7

    sget-object v8, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->DEVICE_ALBUM:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    if-ne v7, v8, :cond_2

    .line 83
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    invoke-virtual {v0, v6}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getCoverBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v3

    .line 101
    :goto_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_4

    .line 103
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v0, v3

    .line 108
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-object p2

    .line 66
    :cond_1
    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getAlbumType()Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    move-result-object v4

    sget-object v6, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->CAMERA:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    if-ne v4, v6, :cond_3

    .line 88
    add-int v0, v3, v5

    .line 89
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    sget v3, Lcom/behance/sdk/R$drawable;->bsdk_icon_adapter_album_camera_type_indicator:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getAlbumType()Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    move-result-object v0

    sget-object v4, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->CREATIVE_CLOUD:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    if-ne v0, v4, :cond_6

    .line 93
    add-int v0, v3, v5

    .line 94
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    sget v3, Lcom/behance/sdk/R$drawable;->bsdk_icon_adapter_album_cloud_type_indicator:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 106
    :cond_4
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v3

    goto :goto_2

    .line 116
    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_1
.end method
