.class public Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BehanceSDKCCLauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;


# static fields
.field public static final ACTIVITY_RESULT_CC_DOWNLOAD_FAILED_FILES:Ljava/lang/String; = "ACTIVITY_CC_DOWNLOAD_FAILED_FILES"

.field public static final ACTIVITY_RESULT_CC_INVALID_FILES:Ljava/lang/String; = "ACTIVITY_CC_INVALID_FILES"

.field public static final ACTIVITY_RESULT_CC_SUCCESSFULLY_DOWNLOADED_FILES:Ljava/lang/String; = "ACTIVITY_CC_SUCCESSFULLY_DOWNLOADED_FILES"

.field public static final ARGS_ALLOWED_LIBRARY_TYPES:Ljava/lang/String; = "ARGS_ALLOWED_LIBRARY_TYPES"

.field public static final ARGS_ALLOWED_MIME_TYPES:Ljava/lang/String; = "ARGS_ALLOWED_MIME_TYPES"

.field public static final ARGS_ASSET_BROWSER_OPTIONS:Ljava/lang/String; = "ARGS_ASSET_BROWSER_OPTIONS"

.field public static final ARGS_IMAGE_VALIDATOR_TYPE:Ljava/lang/String; = "ARGS_IMAGE_VALIDATOR_TYPE"

.field private static final HEADLESS_FRAGMENT_TAG_CC_BROWSER:Ljava/lang/String; = "HEADLESS_FRAGMENT_TAG_CC_BROWSER"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private final BEHANCE_SDK_ASSET_BROWSER_LAUNCH_REQUEST_CODE:I

.field private cancelDownloadAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

.field private headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 33
    const/16 v0, 0x263a

    iput v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->BEHANCE_SDK_ASSET_BROWSER_LAUNCH_REQUEST_CODE:I

    return-void
.end method

.method private cancelDownload()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->cancelDownload()V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->setResult(I)V

    .line 120
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->closeAlertDialog()V

    .line 121
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->closeActivity()V

    .line 123
    return-void
.end method

.method private closeActivity()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->removeDownloadListener()V

    .line 88
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->finish()V

    .line 90
    return-void
.end method

.method private closeAlertDialog()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->cancelDownloadAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->cancelDownloadAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->dismiss()V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    const/16 v0, 0x263a

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 78
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-virtual {v0, p3}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->downloadSelectedFiles(Landroid/content/Intent;)V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->setResult(I)V

    .line 81
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->closeActivity()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->isDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget v0, Lcom/behance/sdk/R$string;->bsdk_cc_asset_browser_cancel_download_alert_dialog_title:I

    sget v1, Lcom/behance/sdk/R$string;->bsdk_cc_asset_browser_cancel_download_alert_dialog_text:I

    sget v2, Lcom/behance/sdk/R$string;->bsdk_generic_alert_dialog_ok_btn_label:I

    sget v3, Lcom/behance/sdk/R$string;->bsdk_generic_alert_dialog_cancel_btn_label:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->getInstance(Landroid/content/Context;IIII)Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->cancelDownloadAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    .line 100
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->cancelDownloadAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->cancelDownloadAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnNotOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->cancelDownloadAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->show()V

    .line 104
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 110
    sget v1, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogOKBtn:I

    if-ne v0, v1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->cancelDownload()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget v1, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogNotOKBtn:I

    if-ne v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->closeAlertDialog()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_activity_cc_asset_browser_launcher:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "HEADLESS_FRAGMENT_TAG_CC_BROWSER"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-direct {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    .line 58
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    const-string/jumbo v2, "HEADLESS_FRAGMENT_TAG_CC_BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->setDownloadListener(Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment$ICreativeCloudAssetDownloadListener;)V

    .line 62
    if-nez p1, :cond_1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKCCBrowserHeadlessFragment;->launchCCAssetBrowser(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem launching Creative Cloud Asset Browser"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDownloadComplete(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    const-string/jumbo v1, "ACTIVITY_CC_SUCCESSFULLY_DOWNLOADED_FILES"

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v1, "ACTIVITY_CC_DOWNLOAD_FAILED_FILES"

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v1, "ACTIVITY_CC_INVALID_FILES"

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->setResult(ILandroid/content/Intent;)V

    .line 141
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->closeActivity()V

    .line 142
    return-void
.end method

.method public onDownloadError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;->cancelDownload()V

    .line 147
    return-void
.end method
