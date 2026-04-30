.class public Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;
.super Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;
.source "BehanceSDKGallerySheetRecyclerAdapter.java"


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 25
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;

    return-object v0
.end method


# virtual methods
.method protected getExtraItemsCount()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic getItemCount()I
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 32
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;->getExtraItemsCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 33
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;

    .line 35
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemThumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemThumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/behance/sdk/R$color;->bsdk_more_info_item_text_color:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 37
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemVideoIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemThumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;->context:Landroid/content/Context;

    if-nez p2, :cond_1

    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_gallery_camera:I

    :goto_0
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_0
    return-void

    .line 39
    :cond_1
    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_gallery_cloud:I

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClicked(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKGallerySheetRecyclerAdapter$GalleryCallbacks;->onItemSelected(Ljava/io/File;)V

    .line 56
    return-void
.end method
