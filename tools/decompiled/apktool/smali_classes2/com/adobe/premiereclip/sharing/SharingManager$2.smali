.class Lcom/adobe/premiereclip/sharing/SharingManager$2;
.super Ljava/lang/Object;
.source "SharingManager.java"

# interfaces
.implements Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingManager;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingManager;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 352
    if-eqz p1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$400(Lcom/adobe/premiereclip/sharing/SharingManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 375
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$200(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$200(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->setSavingProgress(I)V

    .line 409
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$600(Lcom/adobe/premiereclip/sharing/SharingManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 410
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$900(Lcom/adobe/premiereclip/sharing/SharingManager;)V

    .line 411
    return-void

    .line 357
    :pswitch_1
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "CCV"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didUploadVideoToExportDestination(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :pswitch_2
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Creative Cloud"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didUploadVideoToExportDestination(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Creative Cloud"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoSuccessViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :pswitch_3
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "YouTube"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didUploadVideoToExportDestination(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "YouTube"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoSuccessViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$200(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    const-string/jumbo v0, ""

    .line 382
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$400(Lcom/adobe/premiereclip/sharing/SharingManager;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 406
    :goto_2
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$200(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->goToErrorState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 384
    :pswitch_4
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Creative Cloud"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoFailureViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$600(Lcom/adobe/premiereclip/sharing/SharingManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 390
    :pswitch_5
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "CCV"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoFailureViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$600(Lcom/adobe/premiereclip/sharing/SharingManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 396
    :pswitch_6
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "YouTube"

    const-string/jumbo v2, "NotApplicable"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowShareVideoFailureViewForDestination(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$600(Lcom/adobe/premiereclip/sharing/SharingManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 403
    :pswitch_7
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$600(Lcom/adobe/premiereclip/sharing/SharingManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 382
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 334
    double-to-int v0, p1

    .line 335
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$400(Lcom/adobe/premiereclip/sharing/SharingManager;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 345
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$200(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/SharingManager$2;->this$0:Lcom/adobe/premiereclip/sharing/SharingManager;

    invoke-static {v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->access$200(Lcom/adobe/premiereclip/sharing/SharingManager;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->setSavingProgress(I)V

    .line 348
    :cond_0
    return-void

    .line 342
    :pswitch_1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
