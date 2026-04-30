.class public Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;
.super Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;
.source "BehanceSDKPublishProjectActivity.java"

# interfaces
.implements Lcom/behance/sdk/listeners/IBehanceSDKPublishProjectNavigationListener;
.implements Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BUNDLE_KEY_CURRENT_PAGE_NUMBER:Ljava/lang/String; = "BUNDLE_KEY_CURRENT_PAGE_NUMBER"

.field public static final INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED:Ljava/lang/String; = "INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED"

.field public static final INTENT_SERIALIZABLE_EXTRA_PROJECT_CONTAINS_ADULT_CONTENT:Ljava/lang/String; = "INTENT_SERIALIZABLE_EXTRA_PROJECT_CONTAINS_ADULT_CONTENT"

.field public static final INTENT_SERIALIZABLE_EXTRA_PROJECT_COPYRIGHT_SETTINGS:Ljava/lang/String; = "INTENT_SERIALIZABLE_EXTRA_PROJECT_COPYRIGHT_SETTINGS"

.field public static final INTENT_SERIALIZABLE_EXTRA_PROJECT_CREATIVE_FIELDS:Ljava/lang/String; = "INTENT_SERIALIZABLE_EXTRA_PROJECT_CREATIVE_FIELDS"

.field public static final INTENT_SERIALIZABLE_EXTRA_PROJECT_DESC:Ljava/lang/String; = "INTENT_SERIALIZABLE_EXTRA_PROJECT_DESC"

.field public static final INTENT_SERIALIZABLE_EXTRA_PROJECT_IMAGE_MODULES:Ljava/lang/String; = "INTENT_SERIALIZABLE_EXTRA_PROJECT_IMAGE_MODULES"

.field public static final INTENT_SERIALIZABLE_EXTRA_PROJECT_TAGS:Ljava/lang/String; = "INTENT_SERIALIZABLE_EXTRA_PROJECT_TAGS"

.field public static final INTENT_SERIALIZABLE_EXTRA_PROJECT_TITLE:Ljava/lang/String; = "INTENT_SERIALIZABLE_EXTRA_PROJECT_TITLE"


# instance fields
.field private behanceSDK:Lcom/behance/sdk/BehanceSDK;

.field private publishProjectScreens:Landroid/widget/ViewFlipper;

.field private requestingPermission:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestingPermission:Z

    .line 53
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    return-void
.end method

.method private addProjectDetailsToWFManager()V
    .locals 4

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 304
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v2

    .line 305
    invoke-virtual {v2}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->initializeProject()V

    .line 306
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_TITLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setProjectTitle(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_DESC"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setProjectDescription(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_TAGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setProjectTags(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_COPYRIGHT_SETTINGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v2, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setCopyrightOption(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 312
    :cond_0
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_CONTAINS_ADULT_CONTENT"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setContainsAdultContent(Z)V

    .line 313
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_CREATIVE_FIELDS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 314
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    invoke-virtual {v2, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setProjectFields(Ljava/util/List;)V

    .line 316
    :cond_1
    return-void
.end method

.method private addShowNextAnimations()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    sget v1, Lcom/behance/sdk/R$anim;->bsdk_publish_project_open_enter_anim:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 120
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    sget v1, Lcom/behance/sdk/R$anim;->bsdk_publish_project_open_exit_anim:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 122
    return-void
.end method

.method private addShowPreviousAnimations()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    sget v1, Lcom/behance/sdk/R$anim;->bsdk_publish_project_close_enter_anim:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    sget v1, Lcom/behance/sdk/R$anim;->bsdk_publish_project_close_exit_anim:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 128
    return-void
.end method

.method private addValidImageModulesToWFManager()V
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 293
    const-string/jumbo v1, "INTENT_SERIALIZABLE_EXTRA_PROJECT_IMAGE_MODULES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 295
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v1

    .line 297
    invoke-virtual {v1, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->addImagesSelectedForProject(Ljava/util/List;)V

    .line 299
    :cond_0
    return-void
.end method

.method private launchImageSelectionDialogForEditScreenCommon()V
    .locals 5

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getUnlimitedImageSelectionOptions()Lcom/behance/sdk/BehanceSDKImageSelectorOptions;

    move-result-object v1

    .line 167
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 168
    const-string/jumbo v3, "INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setCCAssetBrowserDisabled(Z)V

    .line 171
    :cond_0
    const-wide/32 v2, 0x800000

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setMaxImageSizeInBytes(J)V

    .line 172
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKUtils;->getAllowedFileExtensionsForProjectImage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setAllowedFileExtensions(Ljava/util/ArrayList;)V

    .line 173
    const-string/jumbo v2, "FRAGMENT_TAG_ADD_PROJECT_ALBUM_SELECTION_FRAGMENT"

    invoke-static {p0, v1, v0, v2}, Lcom/behance/sdk/util/BehanceSDKLaunchUtil;->launchAlbumsViewToPickPicture(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;Lcom/behance/sdk/BehanceSDKImageSelectorOptions;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private showNextScreen()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->addShowNextAnimations()V

    .line 100
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 103
    :cond_0
    return-void
.end method

.method private showPreviousScreen()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->onBackPressed()V

    .line 116
    return-void
.end method


# virtual methods
.method public closeThisActivity(Z)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->finish()V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    const/4 v0, 0x0

    sget v1, Lcom/behance/sdk/R$anim;->bsdk_cropper_view_exit:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->overridePendingTransition(II)V

    .line 110
    :cond_0
    return-void
.end method

.method public continueWithWorkflow()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 59
    return-void
.end method

.method protected getBehanceSDKUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getCCAssetBrowserDisabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_0

    const-string/jumbo v2, "INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public launchImageSelectionDialogForEditScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 141
    invoke-static {p0, v2}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->checkPermission(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->launchImageSelectionDialogForEditScreenCommon()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 147
    iput-boolean v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestingPermission:Z

    .line 148
    invoke-static {v2, p0}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->getPermissionFromRequestCode(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0, p1, p2, p3}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 321
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewFragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 322
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 324
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->addShowPreviousAnimations()V

    .line 276
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 289
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->cancelWorkflow()V

    .line 280
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/IBehanceSDKProjectPublishListener;->onCancel()V

    .line 284
    :cond_1
    const-string/jumbo v0, "Publish UX Cancel"

    const-string/jumbo v1, "Behance-Project"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackSharingAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->closeThisActivity(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->useBehanceTheme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getPhoneOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->setRequestedOrientation(I)V

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->addValidImageModulesToWFManager()V

    .line 73
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->addProjectDetailsToWFManager()V

    .line 75
    :try_start_0
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_activity_publish_project:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    sget v0, Lcom/behance/sdk/R$anim;->bsdk_cropper_view_enter:I

    invoke-virtual {p0, v0, v2}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->overridePendingTransition(II)V

    .line 81
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectViewFlipper:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    .line 82
    if-eqz p1, :cond_1

    .line 83
    const-string/jumbo v0, "BUNDLE_KEY_CURRENT_PAGE_NUMBER"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->CanContinueWithWokflow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 89
    :cond_2
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->finish()V

    goto :goto_0
.end method

.method public onImageSelectorOnError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onImageSelectorSelectionBackPressed()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public onImageSelectorSelectionCanceled()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onImageSelectorSelectionFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->addImagesSelectedForProject(Ljava/util/List;)V

    .line 247
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    packed-switch p1, :pswitch_data_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 183
    :pswitch_0
    array-length v0, p3

    if-ne v0, v3, :cond_3

    aget v0, p3, v2

    if-nez v0, :cond_3

    .line 184
    if-ne p1, v3, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->launchImageSelectionDialogForEditScreenCommon()V

    .line 186
    iput-boolean v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestingPermission:Z

    goto :goto_0

    .line 188
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectCoverFragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 192
    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->launchAlbumsViewToPickPictures()V

    .line 193
    iput-boolean v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestingPermission:Z

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewFragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 199
    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->launchCreativeCloudAssetBrowser()V

    .line 200
    iput-boolean v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestingPermission:Z

    goto :goto_0

    .line 205
    :cond_3
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_generic:I

    .line 207
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    :pswitch_1
    array-length v0, p3

    if-ne v0, v4, :cond_4

    aget v0, p3, v2

    if-nez v0, :cond_4

    aget v0, p3, v3

    if-eqz v0, :cond_5

    :cond_4
    array-length v0, p3

    if-ne v0, v3, :cond_6

    aget v0, p3, v2

    if-nez v0, :cond_6

    .line 213
    :cond_5
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewFragment:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 216
    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->launchCameraToCapturePicture()V

    .line 217
    iput-boolean v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestingPermission:Z

    goto :goto_0

    .line 222
    :cond_6
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_generic:I

    .line 224
    array-length v1, p3

    if-ne v1, v4, :cond_a

    .line 225
    aget v0, p3, v2

    if-eqz v0, :cond_8

    aget v0, p3, v3

    if-eqz v0, :cond_8

    .line 226
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error:I

    .line 235
    :cond_7
    :goto_1
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 227
    :cond_8
    aget v0, p3, v2

    if-eqz v0, :cond_9

    .line 228
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_camera:I

    goto :goto_1

    .line 230
    :cond_9
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_generic:I

    goto :goto_1

    .line 232
    :cond_a
    array-length v1, p3

    if-ne v1, v3, :cond_7

    .line 233
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_generic:I

    goto :goto_1

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestingPermission:Z

    if-nez v0, :cond_0

    .line 267
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    const-string/jumbo v0, "BUNDLE_KEY_CURRENT_PAGE_NUMBER"

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->publishProjectScreens:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->onStart()V

    .line 94
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$color;->bsdk_publish_project_view_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 95
    return-void
.end method

.method public requestPermission(I)V
    .locals 2

    .prologue
    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestingPermission:Z

    .line 157
    invoke-static {p1, p0}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->getPermissionFromRequestCode(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 159
    :cond_0
    return-void
.end method

.method public showNext()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->showNextScreen()V

    .line 133
    return-void
.end method

.method public showPrevious()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->showPreviousScreen()V

    .line 138
    return-void
.end method
