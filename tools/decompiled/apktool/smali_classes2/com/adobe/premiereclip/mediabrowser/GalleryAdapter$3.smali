.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

.field final synthetic val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

.field final synthetic val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$800(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;ZLcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    .line 311
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getState()Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->EXPANDED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f020176

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;->mCheckBox:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$3;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$800(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;ZLcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    goto :goto_0
.end method
