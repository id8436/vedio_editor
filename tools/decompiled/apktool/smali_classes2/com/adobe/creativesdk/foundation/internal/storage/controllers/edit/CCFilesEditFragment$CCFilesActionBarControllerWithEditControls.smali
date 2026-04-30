.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;
.source "CCFilesEditFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V

    return-void
.end method


# virtual methods
.method public handleCurrentNetworkStatus(Z)V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method public handleOnStart()V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public handleOptionItemSelect(I)Z
    .locals 1

    .prologue
    .line 537
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_view_action_move:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_view_action_copy:I

    if-ne p1, v0, :cond_1

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->hideEditMenuItems()V

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->handleEdit(I)Z

    move-result v0

    return v0
.end method

.method public handlePostOnCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public hideEditMenuItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 555
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->group_edit_view_action_icons:I

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 556
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_renameButton:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 557
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->isMoveFragmentPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 523
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$menu;->adobe_asset_edit_multi_select_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 524
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_view_action_rename:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_renameButton:Landroid/view/MenuItem;

    .line 527
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->handleOptionItemSelect(I)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_renameButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->refreshEditMenuItems()V

    .line 533
    :cond_0
    return-void
.end method

.method public refreshEditMenuItems()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 544
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->hideEditMenuItems()V

    .line 553
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 547
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->group_edit_view_action_icons:I

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 548
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_renameButton:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->group_edit_view_action_icons:I

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 551
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_renameButton:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public refreshOptionItems()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method public resetButtonState()V
    .locals 0

    .prologue
    .line 592
    return-void
.end method

.method protected restoreFragmentActionBarFromSavedData()V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public saveActionBarInstanceState()V
    .locals 0

    .prologue
    .line 577
    return-void
.end method
