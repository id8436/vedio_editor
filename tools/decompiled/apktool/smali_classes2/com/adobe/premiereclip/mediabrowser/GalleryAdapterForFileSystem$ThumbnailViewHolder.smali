.class public Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryAdapterForFileSystem.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/Utilities$ClipImageHolder;


# static fields
.field private static final TAG:Ljava/lang/String; = "GALLERY_THUMBNAIL_VIEW_HOLDER"


# instance fields
.field public id:Ljava/lang/String;

.field public mCheck:Landroid/widget/CheckedTextView;

.field public mClipFrame:Landroid/widget/ImageView;

.field public mClipTime:Landroid/widget/TextView;

.field public mImageLayout:Landroid/widget/RelativeLayout;

.field public mImageView:Landroid/widget/ImageView;

.field public mMediaTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/h/a/a;II)V
    .locals 2

    .prologue
    .line 558
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 559
    const v0, 0x7f1205c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 560
    const v0, 0x7f1205ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipFrame:Landroid/widget/ImageView;

    .line 561
    const v0, 0x7f1205cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    .line 562
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 563
    const v0, 0x7f1205cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mCheck:Landroid/widget/CheckedTextView;

    .line 564
    const v0, 0x7f1205cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mImageLayout:Landroid/widget/RelativeLayout;

    .line 565
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mImageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 566
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mImageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 568
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 569
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p5

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 571
    const v0, 0x7f1205ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mMediaTitle:Landroid/widget/TextView;

    .line 573
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mMediaTitle:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 574
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setSelected(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 582
    if-eqz p1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mCheck:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 589
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->mCheck:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto :goto_0
.end method
