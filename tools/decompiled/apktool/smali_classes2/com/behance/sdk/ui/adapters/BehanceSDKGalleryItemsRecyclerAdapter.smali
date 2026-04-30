.class public Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;
.super Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;
.source "BehanceSDKGalleryItemsRecyclerAdapter.java"


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 25
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;

    return-object v0
.end method


# virtual methods
.method protected getExtraItemsCount()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

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

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 72
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getRowHeight(I)I
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;->context:Landroid/content/Context;

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
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 45
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryBackViewHolder;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 35
    if-nez p2, :cond_0

    .line 36
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryBackViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_gallery_back:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryBackViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKAbstractGalleryRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method protected onItemClicked(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;->onItemClicked(Ljava/io/File;)V

    .line 63
    return-void
.end method
