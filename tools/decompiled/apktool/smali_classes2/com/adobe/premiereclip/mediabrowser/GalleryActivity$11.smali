.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGalleryDataAvailable(Ljava/util/ArrayList;)V
    .locals 9
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
    const/4 v3, 0x0

    .line 638
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->dismissSpinner()V

    .line 640
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->clearDataset()V

    .line 643
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v8, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v3

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    .line 646
    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)I

    move-result v4

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/h/a/a;

    move-result-object v5

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v2

    instance-of v7, v2, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/util/ArrayList;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;ILcom/h/a/a;Landroid/support/v7/widget/RecyclerView;Z)V

    .line 645
    invoke-static {v8, v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$302(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    .line 647
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 648
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2500(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;)V

    .line 649
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 662
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->cancelAllUnexecutedTasks()V

    .line 663
    return-void

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a0506

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a043b

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 657
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "No files in memory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onGalleryDataError(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 667
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$2300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V

    .line 669
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;

    if-eqz v0, :cond_4

    .line 670
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->dismissSpinner()V

    .line 671
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 672
    const-string/jumbo v0, "GooglePhotos"

    const-string/jumbo v1, "IN GALLERY DATA ERROR - No Albums"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a0439

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->clearDataset()V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    const/16 v0, 0x21

    if-ne p1, v0, :cond_3

    .line 679
    const-string/jumbo v0, "GooglePhotos"

    const-string/jumbo v1, "IN GALLERY DATA ERROR - No Internet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a043c

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 685
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$902(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    goto :goto_0

    .line 686
    :cond_3
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 694
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/premiereclip/mediabrowser/source/GroupedMediaSource;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "device"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setDeviceSource(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const-string/jumbo v1, "device"

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUserRecoverableException()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$11;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->dismissSpinner()V

    .line 702
    return-void
.end method
