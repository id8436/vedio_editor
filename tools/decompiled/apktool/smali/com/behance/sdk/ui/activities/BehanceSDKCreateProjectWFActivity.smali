.class public Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;
.super Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;
.source "BehanceSDKCreateProjectWFActivity.java"

# interfaces
.implements Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;
.implements Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;-><init>()V

    return-void
.end method

.method private displayNoInternetConnectivity()V
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/behance/sdk/R$string;->bsdk_connection_error_msg:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 35
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->finish()V

    .line 36
    return-void
.end method

.method private startPublishProjectWorkflow()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->finish()V

    .line 104
    return-void
.end method


# virtual methods
.method public continueWithWorkflow()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->launchImageSelectionDialog()V

    .line 41
    return-void
.end method

.method protected getBehanceSDKUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;

    move-result-object v0

    return-object v0
.end method

.method public launchImageSelectionDialog()V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getUnlimitedImageSelectionOptions()Lcom/behance/sdk/BehanceSDKImageSelectorOptions;

    move-result-object v1

    .line 86
    const-wide/32 v2, 0x800000

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setMaxImageSizeInBytes(J)V

    .line 87
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKUtils;->getAllowedFileExtensionsForProjectImage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setAllowedFileExtensions(Ljava/util/ArrayList;)V

    .line 88
    const-string/jumbo v2, "PUBLISH_PROJECT_IMAGE_VALIDATOR"

    invoke-virtual {v1, v2}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setImageValidatorType(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v2, "FRAGMENT_TAG_ADD_PROJECT_ALBUM_SELECTION_FRAGMENT"

    invoke-static {p0, v1, v0, v2}, Lcom/behance/sdk/util/BehanceSDKLaunchUtil;->launchAlbumsViewToPickPicture(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;Lcom/behance/sdk/BehanceSDKImageSelectorOptions;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    .line 53
    sget v1, Lcom/behance/sdk/R$layout;->bsdk_activity_publish_project_with_image_selection:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->setContentView(I)V

    .line 55
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->useBehanceTheme()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$bool;->isTablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getPhoneOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->setRequestedOrientation(I)V

    .line 58
    :cond_0
    if-nez p1, :cond_4

    .line 62
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->displayNoInternetConnectivity()V

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->CanContinueWithWokflow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->launchImageSelectionDialog()V

    .line 81
    :cond_3
    :goto_0
    return-void

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 71
    const-string/jumbo v0, "FRAGMENT_TAG_ENTERPRISE_USER_WARNING_FRAGMENT"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 72
    instance-of v2, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    if-eqz v2, :cond_5

    .line 73
    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;)V

    .line 76
    :cond_5
    const-string/jumbo v0, "FRAGMENT_TAG_ADD_PROJECT_ALBUM_SELECTION_FRAGMENT"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 77
    instance-of v1, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    if-eqz v1, :cond_3

    .line 78
    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;)V

    goto :goto_0
.end method

.method public onImageSelectorOnError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->finish()V

    .line 126
    return-void
.end method

.method public onImageSelectorSelectionBackPressed()V
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "Publish UX Cancel"

    const-string/jumbo v1, "Behance-Project"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackSharingAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->finish()V

    .line 117
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/behance/sdk/IBehanceSDKProjectPublishListener;->onCancel()V

    .line 121
    :cond_0
    return-void
.end method

.method public onImageSelectorSelectionCanceled()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->startPublishProjectWorkflow()V

    .line 109
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
    .line 95
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->addImagesSelectedForProject(Ljava/util/List;)V

    .line 97
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;->startPublishProjectWorkflow()V

    .line 98
    return-void
.end method
