.class public Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryAdapter.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/Utilities$ClipImageHolder;


# static fields
.field private static final TAG:Ljava/lang/String; = "GALLERY_HEADER_VIEW_HOLDER"


# instance fields
.field public id:Ljava/lang/String;

.field public mArrowImageView:Landroid/widget/ImageView;

.field public mCheckBox:Landroid/widget/ImageView;

.field public mImageView:Landroid/widget/ImageView;

.field public mSpinner:Landroid/widget/ProgressBar;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/h/a/a;)V
    .locals 2

    .prologue
    .line 617
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 618
    const v0, 0x7f12002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    .line 619
    const v0, 0x7f1205c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 620
    const v0, 0x7f1205c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mArrowImageView:Landroid/widget/ImageView;

    .line 621
    const v0, 0x7f1204c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mSpinner:Landroid/widget/ProgressBar;

    .line 622
    const v0, 0x7f1205c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    .line 623
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 624
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 625
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 626
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 627
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 628
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 629
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 631
    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->id:Ljava/lang/String;

    return-object v0
.end method
