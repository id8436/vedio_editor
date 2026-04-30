.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;
.super Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;
.source "AdobeAssetEditActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;


# static fields
.field private static DATA_SOURCE_FILTER_ARRAY_KEY:Ljava/lang/String;


# instance fields
.field private _actionBarToolbar:Landroid/support/v7/widget/Toolbar;

.field private _assetContainerCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$AssetEditContainerCommandsHandler;

.field private _assetEditView:Landroid/view/View;

.field private _assetMoveView:Landroid/view/View;

.field private _contentView:Landroid/view/View;

.field private _currentOrientation:I

.field private _editConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;

.field private _menu:Landroid/view/Menu;

.field protected _moveFragment:Landroid/support/v4/app/Fragment;

.field protected _multiSelectFragment:Landroid/support/v4/app/Fragment;

.field private _multiSelectStarted:Z

.field private configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

.field private multiSelectSourceHref:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "DATA_SOURCE_FILTER_ARRAY"

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->DATA_SOURCE_FILTER_ARRAY_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    .line 48
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectFragment:Landroid/support/v4/app/Fragment;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectStarted:Z

    .line 67
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$AssetEditContainerCommandsHandler;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$AssetEditContainerCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetContainerCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$AssetEditContainerCommandsHandler;

    .line 68
    return-void
.end method

.method private OpenMoveFileBrowser(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSET_EDIT_OPEN_COPY_CCFILES_BROWSER:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;->setIsCopy(Z)V

    .line 177
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->startFileBrowser()V

    .line 178
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->handleMoveOperation(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->OpenMoveFileBrowser(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V

    return-void
.end method

.method private clearMenu()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_menu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_menu:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_menu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method private createCCFilesMoveBrowserFragment()Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 224
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;-><init>()V

    .line 225
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 226
    const-string/jumbo v0, "ADOBE_CLOUD"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 227
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 228
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->DATA_SOURCE_FILTER_ARRAY_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 229
    const-string/jumbo v0, "CREATE_MOVE_BUTTON"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;->getIsCopy()Z

    move-result v0

    .line 231
    :goto_0
    const-string/jumbo v3, "FRAGMENT_IS_FOR_COPY"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    const-string/jumbo v0, "SHOULD_SHOW_ONLY_ASSETS"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 233
    const-string/jumbo v0, "DATA_SOURCE_FILTER_TYPE"

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;->ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 234
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 235
    return-object v1

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createEditMultiSelectFragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 214
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;-><init>()V

    .line 215
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string/jumbo v2, "ADOBE_CLOUD"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 217
    const-string/jumbo v2, "EDIT_MULTI_SELECT_TARGET_HREF"

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->multiSelectSourceHref:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->setArguments(Landroid/os/Bundle;)V

    .line 219
    return-object v0
.end method

.method private getEditCallbackHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;)V

    return-object v0
.end method

.method private handleBackPress()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectStarted:Z

    if-nez v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_1

    .line 253
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onBackPressed()V

    :cond_0
    move v0, v2

    .line 288
    :goto_0
    return v0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->isAtRootFragment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->finish()V

    move v0, v1

    .line 258
    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleOnBackPressed()Z

    move-result v0

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_5

    .line 267
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->isAtRootFragment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleOnBackPressed()Z

    move-result v0

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    .line 270
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->setActionBarForMultiSelect()V

    .line 271
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetMoveView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetEditView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleOnBackPressed()Z

    move-result v0

    goto :goto_0

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->handleBackPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->finish()V

    move v0, v1

    .line 284
    goto :goto_0
.end method

.method private handleMoveOperation(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 337
    if-eqz p2, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_COPY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    .line 338
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getEditCallbackHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_editConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-static {p1, v1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->createSession(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->startEditSession()V

    .line 340
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->finish()V

    .line 341
    return-void

    .line 337
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_MOVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    goto :goto_0
.end method

.method private loadViewFromBundle()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_editConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->getEditActivityOperationMode()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;->ADOBE_ASSET_VIEW_EDIT_ACTIVITY_OPERATION_MODE_MOVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_editConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;

    .line 142
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->getEditActivityOperationMode()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;->ADOBE_ASSET_VIEW_EDIT_ACTIVITY_OPERATION_MODE_COPY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityOperationMode;

    if-ne v0, v1, :cond_1

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->startFileBrowser()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->startEditMutiSelect()V

    goto :goto_0
.end method

.method private setActionBarForMoveExplorer()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_home_as_up_back:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 121
    return-void
.end method

.method private setActionBarForMultiSelect()V
    .locals 4

    .prologue
    .line 125
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->sharedController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->getTargetAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_home_as_up_cross:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 127
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_contentView:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_editMenu:Landroid/view/Menu;

    .line 132
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 133
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$menu;->adobe_asset_edit_multi_select_menu:I

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_view_action_rename:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->_renameButton:Landroid/view/MenuItem;

    .line 135
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 136
    return-void
.end method

.method private setupActionBarCustomFont()V
    .locals 3

    .prologue
    .line 105
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_actionbar_toolbar_loki:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_loki_app_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 108
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_contentView:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_contentView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->changeTextColor(Landroid/view/View;I)V

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 112
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    return-void
.end method

.method private startEditMutiSelect()V
    .locals 5

    .prologue
    .line 196
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_editConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->getSourceHref()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->multiSelectSourceHref:Ljava/lang/String;

    .line 197
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 198
    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_edit_frame:I

    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->createEditMultiSelectFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectFragment:Landroid/support/v4/app/Fragment;

    .line 201
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetMoveView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetEditView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_contentView:Landroid/view/View;

    invoke-virtual {v0, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->setActionBarToolbarAndContent(Landroid/support/v7/widget/Toolbar;Landroid/view/View;)V

    .line 204
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectFragment:Landroid/support/v4/app/Fragment;

    const-string/jumbo v3, "EditFragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectStarted:Z

    .line 207
    const-string/jumbo v1, "startEdit"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 208
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 210
    :cond_0
    return-void
.end method

.method private startFileBrowser()V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 182
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_move_frame:I

    .line 183
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->createCCFilesMoveBrowserFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    .line 185
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetEditView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetMoveView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->setActionBarForMoveExplorer()V

    .line 188
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    const-string/jumbo v3, "MoveBrowserFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 190
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_multiSelectStarted:Z

    if-eqz v1, :cond_0

    .line 191
    const-string/jumbo v1, "startFileBrowserFromEdit"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 192
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 194
    :cond_1
    return-void
.end method


# virtual methods
.method public getExtraConfiguration()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 304
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;->setMoveButton(Z)V

    .line 307
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;->setShouldShowOnlyFolders(Z)V

    .line 308
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_move_fragment_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;->setTitleForMainView(Ljava/lang/String;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    return-object v0
.end method

.method public hasExtraControls()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public isMoveFragmentPresent()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_moveFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->handleBackPress()Z

    .line 295
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_currentOrientation:I

    if-eq v0, v1, :cond_0

    .line 93
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_currentOrientation:I

    .line 94
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAppOrientationConfigurationChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->activity_edit_asset:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->setContentView(I)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_loki_status_bar:I

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_currentOrientation:I

    .line 79
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "EDIT_ACTIVITY_CONFIGURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;->getConfigurationFromBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_editConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditActivityConfiguration;

    .line 80
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_edit_frame:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetEditView:Landroid/view/View;

    .line 81
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_move_frame:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetMoveView:Landroid/view/View;

    .line 84
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->setupActionBarCustomFont()V

    .line 85
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->loadViewFromBundle()V

    .line 86
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->handleBackPress()Z

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_menu:Landroid/view/Menu;

    .line 152
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 371
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onStart()V

    .line 241
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetContainerCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$AssetEditContainerCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$AssetEditContainerCommandsHandler;->onStart()V

    .line 242
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onStop()V

    .line 247
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->_assetContainerCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$AssetEditContainerCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity$AssetEditContainerCommandsHandler;->onStop()V

    .line 248
    return-void
.end method
