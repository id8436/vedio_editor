.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKGalleryFolderViewHolder.java"


# instance fields
.field public bsdkCardGalleryFolderContainer:Landroid/widget/LinearLayout;

.field public bsdkCardGalleryFolderName:Landroid/widget/TextView;

.field public bsdkCardGalleryFolderThumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_gallery_folder_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderContainer:Landroid/widget/LinearLayout;

    .line 24
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_gallery_folder_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderThumbnail:Landroid/widget/ImageView;

    .line 25
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_gallery_folder_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKGalleryFolderViewHolder;->bsdkCardGalleryFolderName:Landroid/widget/TextView;

    .line 26
    return-void
.end method
