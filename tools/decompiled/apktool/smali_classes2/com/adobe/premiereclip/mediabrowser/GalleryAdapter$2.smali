.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

.field final synthetic val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

.field final synthetic val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

.field final synthetic val$i:I

.field final synthetic val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;ILcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iput p3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$i:I

    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iput-object p5, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 252
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getState()Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    move-result-object v2

    sget-object v3, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->EXPANDED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    if-ne v2, v3, :cond_3

    .line 253
    if-nez v1, :cond_2

    .line 254
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->notifyDataSetChanged()V

    .line 263
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setCancel(Z)V

    .line 264
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->COLLAPSED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setState(Lcom/adobe/premiereclip/mediabrowser/Bucket$State;)V

    .line 265
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    :goto_1
    if-ge v0, v1, :cond_0

    .line 257
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$i:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_3
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getState()Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    move-result-object v2

    sget-object v3, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->COLLAPSED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    if-ne v2, v3, :cond_5

    .line 267
    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v1

    instance-of v1, v1, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    if-eqz v1, :cond_1

    .line 268
    :cond_4
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setCancel(Z)V

    .line 269
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->LOADING:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setState(Lcom/adobe/premiereclip/mediabrowser/Bucket$State;)V

    .line 270
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    .line 271
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;)V

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    .line 297
    invoke-static {v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$700(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Landroid/os/Handler;

    move-result-object v3

    .line 271
    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;->fetchAlbum(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->COLLAPSED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setState(Lcom/adobe/premiereclip/mediabrowser/Bucket$State;)V

    .line 301
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$bucket:Lcom/adobe/premiereclip/mediabrowser/Bucket;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    goto :goto_0
.end method
