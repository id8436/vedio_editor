.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;
.source "CCFilesEditFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;


# instance fields
.field private _actionBarToolbar:Landroid/support/v7/widget/Toolbar;

.field private _assetCount:I

.field private _backButton:Landroid/graphics/drawable/Drawable;

.field private _content:Landroid/view/View;

.field private _crossButton:Landroid/graphics/drawable/Drawable;

.field public _editMenu:Landroid/view/Menu;

.field private _isGridView:Z

.field public _renameButton:Landroid/view/MenuItem;

.field private _reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field protected alertDialog:Landroid/app/AlertDialog;

.field protected alertNegativeButton:Landroid/view/View;

.field protected alertPositiveButton:Landroid/view/View;

.field protected alertText:Landroid/widget/TextView;

.field protected builder:Landroid/app/AlertDialog$Builder;

.field public dialogView:Landroid/view/View;

.field private isRootViewEnabled:Z

.field targetCollectionHref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_isGridView:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isRootViewEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->handleEditConfirm(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getEditAssetCallbackHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetCount:I

    return v0
.end method

.method private clearAndDisableButtons()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->clearSelection()V

    .line 144
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetCount:I

    .line 145
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->handleNoAssetSelection()V

    .line 146
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->clearSelection()V

    goto :goto_0
.end method

.method private disableRootView()V
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->disableController()V

    .line 503
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isRootViewEnabled:Z

    .line 505
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->disableController()V

    goto :goto_0
.end method

.method private enableRootView()V
    .locals 1

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->enableController()V

    .line 494
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isRootViewEnabled:Z

    .line 495
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->enableController()V

    goto :goto_0
.end method

.method private getCount()I
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->getSelectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 319
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->getSelectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getEditAssetCallbackHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;
    .locals 1

    .prologue
    .line 403
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$3;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)V

    return-object v0
.end method

.method private getRenameDialogDismissController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;
    .locals 1

    .prologue
    .line 427
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$4;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)V

    return-object v0
.end method

.method private getRenameDialogFragment()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;
    .locals 2

    .prologue
    .line 482
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;-><init>()V

    .line 483
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getRenameDialogDismissController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->setDismissController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;)V

    .line 485
    return-object v0
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedAssets()V
    .locals 2

    .prologue
    .line 308
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->sharedController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;

    move-result-object v1

    .line 309
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->getSelectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->setTargetAssets(Ljava/util/ArrayList;)V

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->getSelectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->setTargetAssets(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private handleEditConfirm(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;)V
    .locals 3

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getEditAssetCallbackHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->createSession(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->startEditSession()V

    .line 479
    return-void
.end method

.method private isGridView()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_isGridView:Z

    return v0
.end method

.method private isSingleAssetFile()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->getSelectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 326
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->getSelectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    goto :goto_0
.end method

.method private setDialogActionArchive()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 369
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getCount()I

    move-result v1

    .line 371
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertPositiveButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_archive_dialog_positive_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    if-le v1, v4, :cond_0

    .line 373
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_archive_dialog_message_multi_select:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    return-void

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isSingleAssetFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_archive_dialog_message_file:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_1
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_archive_dialog_message_folder:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setDialogActionDelete()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 386
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getCount()I

    move-result v1

    .line 388
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertPositiveButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_delete_dialog_positive_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    if-le v1, v4, :cond_0

    .line 390
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_delete_dialog_message_multi_select:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    return-void

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isSingleAssetFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_delete_dialog_message_file:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_1
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_delete_dialog_message_folder:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setupActionBarCustomFont()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 200
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_loki_app_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 202
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 203
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 206
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 208
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetCount:I

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_content:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_fragment_title:I

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitleWithColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_content:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitleWithColor(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected createActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
    .locals 1

    .prologue
    .line 508
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$CCFilesActionBarControllerWithEditControls;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)V

    return-object v0
.end method

.method protected getContainerNameForRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_fragment_title:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInternalFilters()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleActionMenuButtonClick(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    if-eqz p1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->disableRootView()V

    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setVisible(Landroid/view/View;Z)V

    .line 243
    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->setVisibilityTab(Z)V

    .line 244
    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->enableRootView()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 242
    goto :goto_1

    :cond_2
    move v1, v2

    .line 243
    goto :goto_2
.end method

.method protected handleBackPress()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 223
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetCount:I

    if-lez v1, :cond_0

    .line 224
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetCount:I

    .line 225
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->enableRootView()V

    .line 226
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->handleNoAssetSelection()V

    .line 227
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->clearSelection()V

    .line 231
    :goto_0
    const/4 v0, 0x1

    .line 233
    :cond_0
    return v0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->clearSelection()V

    goto :goto_0
.end method

.method public handleEdit(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 439
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getSelectedAssets()V

    .line 441
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_view_action_archive:I

    if-ne p1, v1, :cond_1

    .line 442
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->showDialogView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;)V

    .line 473
    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 444
    :cond_1
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_view_action_move:I

    if-ne p1, v1, :cond_2

    .line 446
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    .line 447
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSET_EDIT_OPEN_MOVE_CCFILES_BROWSER:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V

    goto :goto_0

    .line 449
    :cond_2
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_view_action_copy:I

    if-ne p1, v1, :cond_3

    .line 450
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    .line 451
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSET_EDIT_OPEN_COPY_CCFILES_BROWSER:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V

    goto :goto_0

    .line 453
    :cond_3
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_view_action_delete:I

    if-ne p1, v1, :cond_4

    .line 454
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_DELETE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->showDialogView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;)V

    goto :goto_0

    .line 456
    :cond_4
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_view_action_rename:I

    if-ne p1, v1, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getRenameDialogFragment()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;

    move-result-object v1

    .line 458
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->sharedController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->getTargetAssets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 459
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$5;

    invoke-direct {v2, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->setParameters(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/util/Observer;)V

    .line 469
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "AssetRename"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleExtraConfigurations(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public handleMultipleAssetSelection(I)V
    .locals 3

    .prologue
    .line 277
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetCount:I

    .line 278
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->refreshEditMenuItems()V

    .line 279
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_content:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitleWithColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 280
    return-void
.end method

.method protected handleNetworkStatusChange(Z)V
    .locals 1

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isRootViewEnabled:Z

    .line 118
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->disableRootView()V

    .line 119
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->clearAndDisableButtons()V

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->isRootViewEnabled:Z

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->enableRootView()V

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->disableRootView()V

    goto :goto_0
.end method

.method public handleNoAssetSelection()V
    .locals 3

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->enableRootView()V

    .line 286
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_backButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetCount:I

    .line 289
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->refreshEditMenuItems()V

    .line 290
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_content:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_content:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_fragment_title:I

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitleWithColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 292
    :cond_1
    return-void
.end method

.method public handlePostOnCreateView(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handlePostOnCreateView(Landroid/os/Bundle;)V

    .line 265
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->setupActionBarCustomFont()V

    .line 266
    return-void
.end method

.method public handleSingleAssetSelection()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_crossButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 301
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetCount:I

    .line 302
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->refreshEditMenuItems()V

    .line 303
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_content:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_assetCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitleWithColor(Landroid/view/View;Ljava/lang/String;I)V

    .line 304
    return-void
.end method

.method protected initializeCCFilesContainerFromCollectionHref(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->targetCollectionHref:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->initializeCCFilesContainerFromCollectionHref(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->setRetainInstance(Z)V

    .line 69
    const-string/jumbo v2, "EDIT_MULTI_SELECT_TARGET_HREF"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->targetCollectionHref:Ljava/lang/String;

    .line 70
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;-><init>()V

    .line 71
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    .line 73
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 74
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;)V

    .line 76
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_home_as_up_cross:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_crossButton:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_home_as_up_back:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_backButton:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->setupActionBarCustomFont()V

    .line 80
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastVisualLayout()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_isGridView:Z

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 181
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->setHasOptionsMenu(Z)V

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->clearCache()V

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 110
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onDestroy()V

    .line 111
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onDestroyOptionsMenu()V

    .line 102
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onHiddenChanged(Z)V

    .line 133
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 252
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onResume()V

    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->isMoveFragmentPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 255
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$menu;->adobe_asset_edit_multi_select_menu:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 256
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_view_action_rename:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_renameButton:Landroid/view/MenuItem;

    .line 257
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->setupActionBarCustomFont()V

    .line 260
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onStart()V

    .line 248
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onStop()V

    .line 272
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method protected setActionBarToolbarAndContent(Landroid/support/v7/widget/Toolbar;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    .line 196
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_content:Landroid/view/View;

    .line 197
    return-void
.end method

.method protected setupGridViewController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V

    .line 157
    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditGridView;->setControllerCallback(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;)V

    .line 158
    return-object v0
.end method

.method protected setupSectionalListViewController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->setControllerCallback(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;)V

    .line 175
    return-object v0
.end method

.method protected showDialogView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->dialogView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_alert_dialog_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->dialogView:Landroid/view/View;

    .line 335
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->builder:Landroid/app/AlertDialog$Builder;

    .line 336
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->dialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 337
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->dialogView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_alert_dialog_box_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertText:Landroid/widget/TextView;

    .line 338
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->dialogView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_alert_dialog_box_positive_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertPositiveButton:Landroid/view/View;

    .line 339
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->dialogView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_alert_dialog_box_negative_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertNegativeButton:Landroid/view/View;

    .line 340
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertNegativeButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_delete_dialog_negative_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne p1, v0, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->setDialogActionArchive()V

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertPositiveButton:Landroid/view/View;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertNegativeButton:Landroid/view/View;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 366
    return-void

    .line 348
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->setDialogActionDelete()V

    goto :goto_0
.end method
