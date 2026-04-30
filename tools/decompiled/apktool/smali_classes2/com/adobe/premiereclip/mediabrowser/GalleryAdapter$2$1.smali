.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBucketLoadError(Lcom/adobe/premiereclip/mediabrowser/Bucket;I)V
    .locals 5

    .prologue
    .line 279
    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    .line 280
    const-string/jumbo v0, "GALLERY_ADAPTER"

    const-string/jumbo v1, "Adding noMedia as thumbnail data to mDataset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->getClipPosition(Ljava/lang/String;)I

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$_this:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->notifyDataSetChanged()V

    .line 284
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->EXPANDED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setState(Lcom/adobe/premiereclip/mediabrowser/Bucket$State;)V

    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-static {v0, p1, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    .line 296
    :goto_0
    return-void

    .line 286
    :cond_0
    const/16 v0, 0x21

    if-ne p2, v0, :cond_1

    .line 287
    const-string/jumbo v0, "GALLERY_ADAPTER"

    const-string/jumbo v1, "No internet bucketload error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$000(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a043c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 293
    :cond_1
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->COLLAPSED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setState(Lcom/adobe/premiereclip/mediabrowser/Bucket$State;)V

    .line 294
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-static {v0, p1, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    goto :goto_0
.end method

.method public onBucketLoadSuccess(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2$1;->this$1:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;

    iget-object v1, v1, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$2;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;

    invoke-static {v0, p1, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$500(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$HeaderViewHolder;)V

    .line 275
    return-void
.end method
