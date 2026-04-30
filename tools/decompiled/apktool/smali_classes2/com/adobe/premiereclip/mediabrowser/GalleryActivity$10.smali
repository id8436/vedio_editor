.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderLoadFailure(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 594
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 596
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->cancelAllUnexecutedTasks()V

    .line 598
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->dismissSpinner()V

    .line 599
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 600
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "IN GALLERY DATA ERROR - No Albums"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a043b

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->clearDataset()V

    .line 606
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->clearStack()V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    const/16 v0, 0x21

    if-ne p1, v0, :cond_3

    .line 609
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "IN GALLERY DATA ERROR - No Internet file system"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a043c

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$902(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    goto :goto_0

    .line 617
    :cond_3
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onFolderLoadSuccess(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 562
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->dismissSpinner()V

    .line 564
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->clearDataset()V

    .line 566
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->clearStack()V

    .line 568
    :cond_0
    const-string/jumbo v0, "GALLERY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v9, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1800(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;

    move-result-object v4

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    .line 572
    invoke-static {v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    move-result v5

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/h/a/a;

    move-result-object v6

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z

    move-result v8

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;ILcom/h/a/a;Landroid/support/v7/widget/RecyclerView;Z)V

    .line 571
    invoke-static {v9, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1102(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    .line 573
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 574
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;-><init>(Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 575
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 586
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 589
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->cancelAllUnexecutedTasks()V

    .line 590
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a0506

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a043b

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$10;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 584
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "No files in memory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
