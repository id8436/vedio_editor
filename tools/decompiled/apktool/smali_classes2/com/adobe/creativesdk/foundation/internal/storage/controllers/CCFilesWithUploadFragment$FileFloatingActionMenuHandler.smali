.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;
.super Ljava/lang/Object;
.source "CCFilesWithUploadFragment.java"

# interfaces
.implements Lcom/getbase/floatingactionbutton/h;


# instance fields
.field private editOpsAllowed:Z

.field private isUploadInProgress:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;)V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    return-void
.end method


# virtual methods
.method public onMenuCollapsed()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 585
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setVisible(Landroid/view/View;Z)V

    .line 587
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 589
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    if-eqz v3, :cond_1

    .line 590
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    .line 591
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;->isCollaborationFrameVisible()Z

    move-result v0

    .line 594
    :goto_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setVisibilityTab(Z)V

    .line 595
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_alphaPane:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onMenuExpanded()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setVisible(Landroid/view/View;Z)V

    .line 540
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setVisibilityTab(Z)V

    .line 542
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_isReadOnly:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->editOpsAllowed:Z

    .line 543
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->isUploadInProgress:Z

    .line 545
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isNetworkOnline()Z

    move-result v0

    if-nez v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 581
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 542
    goto :goto_0

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_alphaPane:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->isUploadInProgress:Z

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CANCEL_UPLOAD_ASSET_BROWSER_BUTTON:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    .line 565
    :goto_2
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->isUploadInProgress:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->editOpsAllowed:Z

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 575
    :goto_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->deviceHasCameraFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_UPLOAD_ASSET_BROWSER_BUTTON:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    .line 570
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    goto :goto_3
.end method
