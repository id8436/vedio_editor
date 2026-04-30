.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;
.super Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;
.source "AdobeDesignLibraryMoveActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeLibraryExtraControlsHostActivity;


# instance fields
.field private actionBarToolbar:Landroid/support/v7/widget/Toolbar;

.field private assetContainerCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;

.field private configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;

.field private contentView:Landroid/view/View;

.field private copy:Z

.field private currentOrientation:I

.field protected moveFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->moveFragment:Landroid/support/v4/app/Fragment;

    .line 49
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->assetContainerCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->handleMoveOperation(Ljava/lang/String;)V

    return-void
.end method

.method private createDesignLibraryMoveBrowserFragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;-><init>()V

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    const-string/jumbo v2, "ADOBE_CLOUD"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 136
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 137
    const-string/jumbo v3, "DATA_SOURCE_FILTER_ARRAY"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 138
    const-string/jumbo v2, "DATA_SOURCE_FILTER_TYPE"

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;->ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 139
    const-string/jumbo v2, "SHOW_LIBRARY_ITEM"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 141
    return-object v0
.end method

.method private handleBackPress()Z
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->moveFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 176
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onBackPressed()V

    .line 190
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->moveFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->isAtRootFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->finish()V

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->contentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_library_chooser:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->moveFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleOnBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method private handleMoveOperation(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 214
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;->ADOBE_LIBRARY_ITEM_EDIT_OPERATION_MOVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    .line 215
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->copy:Z

    if-eqz v1, :cond_0

    .line 216
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;->ADOBE_LIBRARY_ITEM_EDIT_OPERATION_COPY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;)V

    invoke-static {p1, v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->createSession(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeEditLibraryCallback;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->startEditSession()V

    .line 232
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->finish()V

    .line 233
    return-void
.end method

.method private openMoveDesignLibraryBrowser()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->startDesignLibraryBrowser()V

    .line 118
    return-void
.end method

.method private setActionBarForMoveExplorer()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_home_as_up_back:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 112
    return-void
.end method

.method private setupActionBarCustomFont()V
    .locals 3

    .prologue
    .line 94
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_actionbar_toolbar:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_loki_app_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 97
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->contentView:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->contentView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->changeTextColor(Landroid/view/View;I)V

    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->contentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_library_chooser:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 103
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void
.end method

.method private startDesignLibraryBrowser()V
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 122
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_element_move_frame:I

    .line 123
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->moveFragment:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->createDesignLibraryMoveBrowserFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->moveFragment:Landroid/support/v4/app/Fragment;

    .line 125
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->setActionBarForMoveExplorer()V

    .line 126
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 127
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->moveFragment:Landroid/support/v4/app/Fragment;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 128
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public getExtraConfiguration()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 151
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;

    .line 153
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;->setMoveButton(Z)V

    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;->setShouldShowOnlyCollections(Z)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryItemMoveExtraConfiguration;

    return-object v0
.end method

.method public hasExtraControls()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->handleBackPress()Z

    .line 171
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->currentOrientation:I

    if-eq v0, v1, :cond_0

    .line 86
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->currentOrientation:I

    .line 87
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAppOrientationConfigurationChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "IS_COPY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->copy:Z

    .line 73
    :cond_0
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->activity_library_element_move:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->currentOrientation:I

    .line 76
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->setupActionBarCustomFont()V

    .line 77
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->openMoveDesignLibraryBrowser()V

    .line 78
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->handleBackPress()Z

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onStart()V

    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->assetContainerCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;->onStart()V

    .line 57
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;->onStop()V

    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity;->assetContainerCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryMoveActivity$LibraryItemEditContainerCommandsHandler;->onStop()V

    .line 63
    return-void
.end method
