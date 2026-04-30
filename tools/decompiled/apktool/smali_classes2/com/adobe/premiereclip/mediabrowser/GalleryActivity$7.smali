.class Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const v5, 0x7f0a043b

    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$800(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 379
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "Updated network; is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0, v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$902(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    .line 381
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1000(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    if-nez v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$700(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/lang/String;)V

    .line 402
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1200(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 414
    :cond_2
    :goto_1
    return-void

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 387
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$300(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapter;->isDatasetEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v1, v5}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 392
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1100(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryAdapterForFileSystem;->isDatasetEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-virtual {v1, v5}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->textViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v0, v0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->signInButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$700(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$800(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$900(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    const-string/jumbo v0, "GALLERY"

    const-string/jumbo v1, "Updated network; is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    const v2, 0x7f0a043c

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->setTextView(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$902(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    .line 409
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1400(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;)Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/source/PhotosDownloadDialog;->dismiss()V

    .line 411
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity$7;->this$0:Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-static {v0, v4}, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;->access$1502(Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;Z)Z

    goto/16 :goto_1
.end method
