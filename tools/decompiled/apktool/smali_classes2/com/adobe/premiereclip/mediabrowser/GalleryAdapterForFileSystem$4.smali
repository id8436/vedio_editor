.class Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;
.super Ljava/lang/Object;
.source "GalleryAdapterForFileSystem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

.field final synthetic val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

.field final synthetic val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->isMediaSelected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 399
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getSelectedMediaCount()I

    move-result v3

    .line 400
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$700(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v3, :cond_1

    .line 401
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->clearCurrentSingleSelection()Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v4, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v4, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$800(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;Ljava/lang/String;)I

    move-result v4

    .line 403
    if-ltz v4, :cond_0

    .line 404
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;->getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$900(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 407
    instance-of v4, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    if-eqz v4, :cond_1

    .line 408
    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->setSelected(Z)V

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getSize()J

    move-result-wide v4

    const-wide v6, 0x140000000L

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0410

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 432
    :goto_0
    return-void

    .line 416
    :cond_2
    if-ne v3, v8, :cond_3

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0412

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    .line 418
    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0411

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 423
    :cond_3
    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->isMediaSelected()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 424
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onMediaItemSelection(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 425
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->setSelected(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 423
    goto :goto_1

    .line 428
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->isMediaSelected()Z

    move-result v3

    if-nez v3, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setMediaSelected(Z)V

    .line 429
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$media:Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->onMediaItemSelection(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 430
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$4;->val$viewHolder:Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem$ThumbnailViewHolder;->setSelected(Z)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 428
    goto :goto_2
.end method
