.class public Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryAdapterForFileSystem.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/Utilities$ClipImageHolder;


# static fields
.field private static final TAG:Ljava/lang/String; = "GALLERY_HEADER_VIEW_HOLDER"


# instance fields
.field public id:Ljava/lang/String;

.field public mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/h/a/a;)V
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 525
    const v0, 0x7f12002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    .line 526
    const v0, 0x7f1205c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 527
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 528
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 529
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 530
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$HeaderViewHolder;->id:Ljava/lang/String;

    return-object v0
.end method
