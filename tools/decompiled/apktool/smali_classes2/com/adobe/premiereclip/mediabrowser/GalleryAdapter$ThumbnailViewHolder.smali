.class public Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryAdapter.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/Utilities$ClipImageHolder;


# static fields
.field private static final TAG:Ljava/lang/String; = "GALLERY_THUMBNAIL_VIEW_HOLDER"


# instance fields
.field public id:Ljava/lang/String;

.field public mCheck:Landroid/widget/CheckedTextView;

.field public mClipFrame:Landroid/widget/ImageView;

.field public mClipTime:Landroid/widget/TextView;

.field public mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/h/a/a;)V
    .locals 1

    .prologue
    .line 679
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 680
    const v0, 0x7f1205c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 681
    const v0, 0x7f1205ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mClipFrame:Landroid/widget/ImageView;

    .line 682
    const v0, 0x7f1205cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    .line 683
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 684
    const v0, 0x7f1205cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mCheck:Landroid/widget/CheckedTextView;

    .line 685
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 686
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 687
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 688
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 689
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setSelected(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 697
    if-eqz p1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mCheck:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 704
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->mCheck:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto :goto_0
.end method
