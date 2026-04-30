.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKGalleryItemViewHolder.java"


# instance fields
.field public bsdkCardGalleryItemContainer:Landroid/widget/RelativeLayout;

.field public bsdkCardGalleryItemThumbnail:Landroid/widget/ImageView;

.field public bsdkCardGalleryItemVideoIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_gallery_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemContainer:Landroid/widget/RelativeLayout;

    .line 23
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_gallery_item_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemThumbnail:Landroid/widget/ImageView;

    .line 24
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_gallery_item_video_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryItemViewHolder;->bsdkCardGalleryItemVideoIndicator:Landroid/widget/ImageView;

    .line 25
    return-void
.end method
