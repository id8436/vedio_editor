.class public Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryAdapter.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/Utilities$ClipImageHolder;


# instance fields
.field id:Ljava/lang/String;

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/h/a/a;)V
    .locals 2

    .prologue
    .line 648
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 649
    const v0, 0x7f1205cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;->mTextView:Landroid/widget/TextView;

    .line 650
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 651
    const-string/jumbo v0, "GALLERY_ADAPTER"

    const-string/jumbo v1, "constructor of noBindViewHolder class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$NoMediaViewHolder;->id:Ljava/lang/String;

    return-object v0
.end method
