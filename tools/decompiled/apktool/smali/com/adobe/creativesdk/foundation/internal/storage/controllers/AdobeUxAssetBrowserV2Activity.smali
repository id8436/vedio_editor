.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;
.super Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;
.source "AdobeUxAssetBrowserV2Activity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;


# static fields
.field private static final T:Ljava/lang/String; = "UxAssetBrowserV2"


# instance fields
.field private final DATASOURCES_WAIT_FRAGMENT_TAG:Ljava/lang/String;

.field private final MAIN_BROWSER_FRAGMENT_TAG:Ljava/lang/String;

.field private final ROOT_ID:I

.field private _actionBarToolbar:Landroid/support/v7/widget/Toolbar;

.field private _actionBarUxDropDownController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

.field private _authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

.field _clientArgsBundle:Landroid/os/Bundle;

.field private _currentOrientation:I

.field private _isRestoredActivity:Z

.field _mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

.field private _queuedActivityResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;

.field private _sessionHelperResumed:Z

.field private _statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;-><init>()V

    .line 59
    const-string/jumbo v0, "AssetBrowserV2_mainBrowserFragmentTag"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->MAIN_BROWSER_FRAGMENT_TAG:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "AssetBrowserV2_dataSourcesWaitFragmentTag"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->DATASOURCES_WAIT_FRAGMENT_TAG:Ljava/lang/String;

    .line 61
    const v0, 0xffff

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->ROOT_ID:I

    .line 65
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_sessionHelperResumed:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    .line 73
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    .line 119
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_sessionHelperResumed:Z

    .line 120
    return-void
.end method

.method private clearCurrentMainAssetBrowserFragment()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 429
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    .line 432
    :cond_0
    return-void
.end method

.method private processAnyQueuedActivityResult()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_queuedActivityResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_queuedActivityResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;->requestCode:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_queuedActivityResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;

    iget v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;->resultCode:I

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_queuedActivityResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;->resultData:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleOnActivityResult(IILandroid/content/Intent;)V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_queuedActivityResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;

    .line 268
    :cond_0
    return-void
.end method

.method private setupMainBrowserFragment()V
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 247
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetbrowser_v2_frame:I

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 249
    instance-of v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    if-nez v2, :cond_0

    .line 250
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    .line 251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 253
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetbrowser_v2_frame:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    const-string/jumbo v3, "AssetBrowserV2_mainBrowserFragmentTag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 254
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 259
    :goto_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->processAnyQueuedActivityResult()V

    .line 260
    return-void

    .line 256
    :cond_0
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    goto :goto_0
.end method


# virtual methods
.method handleBackPress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 311
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->hasExpandedActionView()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->isAtRootFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->resetSelectedAssets()V

    .line 316
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->resetSelectedAssets()V

    .line 317
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->finish()V

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleOnBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleOpenSelectedFilesAction(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 410
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->setResult(ILandroid/content/Intent;)V

    .line 411
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->finish()V

    .line 412
    return-void
.end method

.method public handleUserSignOutAction()V
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->clearCurrentMainAssetBrowserFragment()V

    .line 419
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->logout()V

    .line 421
    return-void
.end method

.method public hideCollaborationFrameOnBackPressed()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public isCollaborationFrameVisible()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_mainBrowserFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewMainBrowserFragment;->handleOnActivityResult(IILandroid/content/Intent;)V

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 281
    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_0

    .line 282
    if-nez p2, :cond_2

    .line 283
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "UxAssetBrowserV2"

    const-string/jumbo v2, "Signin cancelled, finishing."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->finish()V

    .line 295
    :cond_0
    :goto_1
    return-void

    .line 277
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;IILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_queuedActivityResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity$QueuedActivityResult;

    goto :goto_0

    .line 285
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 286
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "UxAssetBrowserV2"

    const-string/jumbo v2, "Signin: restarting."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->finish()V

    .line 291
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->handleBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 301
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_currentOrientation:I

    if-eq v0, v1, :cond_0

    .line 302
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_currentOrientation:I

    .line 303
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAppOrientationConfigurationChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 307
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_currentOrientation:I

    .line 209
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetbrowser_v2_activity:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->setContentView(I)V

    .line 211
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->setupActionBarCustomFont()V

    .line 213
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_clientArgsBundle:Landroid/os/Bundle;

    .line 215
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    .line 216
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onCreate(Landroid/os/Bundle;)V

    .line 218
    iput-boolean v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_sessionHelperResumed:Z

    .line 219
    iput-boolean v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_isRestoredActivity:Z

    .line 223
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;-><init>()V

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->setFileProviderAuthority(Ljava/lang/String;)V

    .line 225
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;-><init>()V

    .line 228
    invoke-virtual {v1, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->setIsMenuEnabled(Z)V

    .line 229
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;-><init>()V

    .line 230
    invoke-virtual {v2, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->setIsMenuEnabled(Z)V

    .line 231
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerLibraryConfiguration;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerLibraryConfiguration;-><init>()V

    .line 232
    invoke-virtual {v3, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerLibraryConfiguration;->setIsMenuEnabled(Z)V

    .line 233
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;-><init>()V

    .line 234
    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;->setIsMenuEnabled(Z)V

    .line 235
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->setFilesViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;)V

    .line 236
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->setLibraryViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerLibraryConfiguration;)V

    .line 237
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->setPhotoViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;)V

    .line 238
    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->setMobileCreationViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerMobileCreationConfiguration;)V

    .line 239
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerConfigurationFactory;->registerController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;)I

    move-result v0

    .line 240
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerControllerConfigurations;->setCSDKDefaultConfigurationKey(I)V

    .line 241
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setContext(Landroid/content/Context;)V

    .line 242
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 401
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onDestroy()V

    .line 402
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onDestroy()V

    .line 403
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarUxDropDownController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->resetIfSameInstance(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;)V

    .line 404
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 329
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->handleBackPress()Z

    .line 331
    const/4 v0, 0x1

    .line 333
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 377
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onPause()V

    .line 378
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onPause()V

    .line 379
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_isRestoredActivity:Z

    .line 397
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onResume()V

    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onResume()V

    .line 373
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onStart()V

    .line 349
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onStart()V

    .line 350
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onStop()V

    .line 385
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_authSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onStop()V

    .line 386
    return-void
.end method

.method public setupActionBarCustomFont()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_actionbar_toolbar:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_csdk_actionbar_background:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundResource(I)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 180
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarUxDropDownController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    .line 181
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarUxDropDownController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->setInstance(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;)V

    .line 183
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->setUpActionBar(Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;)V

    .line 184
    return-void
.end method

.method public showAssetBroweserPageForCurrentUser()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->_actionBarToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;->setupMainBrowserFragment()V

    .line 126
    return-void
.end method

.method public updateUploadCountForAppRater()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method
