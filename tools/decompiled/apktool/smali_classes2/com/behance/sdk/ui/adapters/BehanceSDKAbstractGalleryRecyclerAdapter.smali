.class Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKAbstractGalleryRecyclerAdapter.java"


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
.field protected context:Landroid/content/Context;

.field protected files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final rowHeight:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->files:Ljava/util/List;

    .line 31
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;->getImagePickerColumnCount(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->getRowHeight(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->rowHeight:I

    .line 32
    return-void
.end method

.method private isVideo(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getExtraItemsCount()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->getExtraItemsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRowHeight(I)I
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_gallery_grid_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/2addr v0, p1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->rowHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;

    .line 53
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->getExtraItemsCount()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 55
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemThumbnail:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v2

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->files:Ljava/util/List;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->getExtraItemsCount()I

    move-result v3

    sub-int v3, p2, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v2, v0}, Lcom/b/a/l;->a(Ljava/io/File;)Lcom/b/a/d;

    move-result-object v0

    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    .line 60
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemVideoIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->files:Ljava/util/List;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->getExtraItemsCount()I

    move-result v3

    sub-int v3, p2, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->isVideo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :cond_0
    :goto_1
    return-void

    .line 67
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemThumbnail:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/b/a/h;->a(Landroid/view/View;)V

    .line 70
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemThumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_gallery_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected onItemClicked(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
