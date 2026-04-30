.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

.field final synthetic val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

.field final synthetic val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 430
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->isMediaSelected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 431
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getSelectedMediaCount()I

    move-result v2

    .line 432
    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getSize()J

    move-result-wide v4

    const-wide v6, 0x140000000L

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 434
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0410

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 455
    :goto_0
    return-void

    .line 437
    :cond_0
    if-ne v2, v8, :cond_1

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0412

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    .line 439
    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0411

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->isMediaSelected()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 445
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onMediaItemSelection(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 446
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->setSelected(Z)V

    .line 447
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$900(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    goto :goto_0

    .line 450
    :cond_3
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->isMediaSelected()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 451
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$600(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onMediaItemSelection(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 452
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$ThumbnailViewHolder;->setSelected(Z)V

    .line 453
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter$5;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->access$900(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    goto/16 :goto_0

    :cond_4
    move v1, v0

    .line 450
    goto :goto_1
.end method
