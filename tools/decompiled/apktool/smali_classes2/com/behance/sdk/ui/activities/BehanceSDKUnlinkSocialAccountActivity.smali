.class public Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BehanceSDKUnlinkSocialAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static INTENT_EXTRA_ACCOUNT_TYPE_NAME:Ljava/lang/String;

.field public static RESULT_CODE_ACCOUNT_UNLINK_CANCELLED:I

.field public static RESULT_CODE_ACCOUNT_UNLINK_FAILED:I

.field public static RESULT_CODE_ACCOUNT_UNLINK_SUCCESSFUL:I

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private confirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

.field private socialAccountType:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "INTENT_PARAMS_ACCOUNT_TYPE_NAME"

    sput-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->INTENT_EXTRA_ACCOUNT_TYPE_NAME:Ljava/lang/String;

    .line 43
    const/16 v0, 0x14

    sput v0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->RESULT_CODE_ACCOUNT_UNLINK_SUCCESSFUL:I

    .line 44
    const/16 v0, 0x15

    sput v0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->RESULT_CODE_ACCOUNT_UNLINK_CANCELLED:I

    .line 45
    const/16 v0, 0x16

    sput v0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->RESULT_CODE_ACCOUNT_UNLINK_FAILED:I

    .line 47
    const-class v0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->closeThisActivity(I)V

    return-void
.end method

.method private closeConfirmationDialog(I)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->confirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->confirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->dismiss()V

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->closeThisActivity(I)V

    .line 107
    return-void
.end method

.method private closeThisActivity(I)V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->finish()V

    .line 74
    return-void
.end method

.method private displayConfirmationDialog()V
    .locals 6

    .prologue
    .line 78
    sget v3, Lcom/behance/sdk/R$string;->bsdk_social_account_unlink_twitter_account_confirmation_title:I

    .line 79
    sget v2, Lcom/behance/sdk/R$string;->bsdk_social_account_unlink_twitter_account_confirmation_body:I

    .line 80
    sget v1, Lcom/behance/sdk/R$string;->bsdk_social_account_unlink_twitter_account_confirmation_ok_btn_label:I

    .line 81
    sget v0, Lcom/behance/sdk/R$string;->bsdk_social_account_unlink_twitter_account_confirmation_cancel_btn_label:I

    .line 82
    iget-object v4, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->socialAccountType:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    sget-object v5, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    if-ne v4, v5, :cond_0

    .line 83
    sget v3, Lcom/behance/sdk/R$string;->bsdk_social_account_unlink_facebook_account_confirmation_title:I

    .line 84
    sget v2, Lcom/behance/sdk/R$string;->bsdk_social_account_unlink_facebook_account_confirmation_body:I

    .line 85
    sget v1, Lcom/behance/sdk/R$string;->bsdk_social_account_unlink_facebook_account_confirmation_ok_btn_label:I

    .line 86
    sget v0, Lcom/behance/sdk/R$string;->bsdk_social_account_unlink_facebook_account_confirmation_cancel_btn_label:I

    .line 88
    :cond_0
    invoke-static {p0, v3, v2, v1, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->getInstance(Landroid/content/Context;IIII)Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->confirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    .line 90
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->confirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnNotOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->confirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->confirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    new-instance v1, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity$1;-><init>(Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 99
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->confirmationDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->show()V

    .line 100
    return-void
.end method

.method private unlinkSocialAccount()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    :try_start_0
    invoke-static {}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getInstance()Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->socialAccountType:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v2, v3, p0}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->revokeAccountAccess(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z

    .line 127
    sget-object v2, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Unlinked social account. [Account Type - %s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->socialAccountType:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v6}, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    sget-object v3, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Problem unlinking social account. [Account Type - %s]"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->socialAccountType:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v5}, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-interface {v3, v2, v4, v0}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 131
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogOKBtn:I

    if-ne v0, v1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->unlinkSocialAccount()Z

    move-result v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    sget v0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->RESULT_CODE_ACCOUNT_UNLINK_SUCCESSFUL:I

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->closeConfirmationDialog(I)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget v0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->RESULT_CODE_ACCOUNT_UNLINK_FAILED:I

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->closeConfirmationDialog(I)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogNotOKBtn:I

    if-ne v0, v1, :cond_0

    .line 119
    sget v0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->RESULT_CODE_ACCOUNT_UNLINK_CANCELLED:I

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->closeConfirmationDialog(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_activity_unlink_social_account:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->INTENT_EXTRA_ACCOUNT_TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->fromName(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->socialAccountType:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    .line 59
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->socialAccountType:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->displayConfirmationDialog()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    sget v0, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->RESULT_CODE_ACCOUNT_UNLINK_CANCELLED:I

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKUnlinkSocialAccountActivity;->closeThisActivity(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method
