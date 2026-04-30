.class public abstract Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BehanceSDKBasePublishActivity.java"

# interfaces
.implements Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;


# static fields
.field public static final ACTIVITY_RESULT_REQUEST_CODE_CLOUD_SELECTION:I = 0x1a7a

.field private static final KEY_ENTERPRISE_USER_WARNING_VIEW_VISIBLE:Ljava/lang/String; = "KEY_ENTERPRISE_USER_WARNING_VIEW_VISIBLE"

.field protected static final SHARED_PREFERENCES_FILE_NAME:Ljava/lang/String; = "BEHANCE_SDK_PUBLISH_ENTERPRISE_WARNING_SHARED_PREFERENES_KEY"

.field protected static final SP_KEY_ENTERPRISE_USER_WARNING_SHOWN:Ljava/lang/String; = "SP_KEY_ENTERPRISE_USER_WARNING_SHOWN"


# instance fields
.field private volatile isCloudPickerLaunched:Z

.field private volatile isWarningScreenVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isWarningScreenVisible:Z

    .line 38
    iput-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isCloudPickerLaunched:Z

    return-void
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BEHANCE_SDK_PUBLISH_ENTERPRISE_WARNING_SHARED_PREFERENES_KEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    return-object v0
.end method

.method private initializeImageLoader()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/i/a/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/i/a/b/j;->a(Landroid/content/Context;)Lcom/i/a/b/j;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/i/a/b/g;->a(Lcom/i/a/b/j;)V

    .line 164
    :cond_0
    return-void
.end method

.method private isDefaultCloudSet()Z
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchCloudPicker()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isCloudPickerLaunched:Z

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/ui/activities/BehanceSDKAdobeCloudSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const/16 v1, 0x1a7a

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    return-void
.end method

.method private showEnterpriseUserWarningScreen(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 111
    iput-boolean v3, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isWarningScreenVisible:Z

    .line 112
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 114
    const-string/jumbo v2, "FRAGMENT_TAG_ENTERPRISE_USER_WARNING_FRAGMENT"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 119
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;-><init>()V

    .line 120
    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;)V

    .line 121
    const-string/jumbo v2, "FRAGMENT_TAG_ENTERPRISE_USER_WARNING_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 122
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method


# virtual methods
.method public CanContinueWithWokflow()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isWarningScreenVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isCloudPickerLaunched:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public continueWithWorkflow()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected abstract getBehanceSDKUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;
.end method

.method protected getUserBehanceAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->getBehanceSDKUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getUserBehanceAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    const/16 v0, 0x1a7a

    if-ne p1, v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isCloudPickerLaunched:Z

    .line 88
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->continueWithWorkflow()V

    .line 90
    :cond_0
    return-void
.end method

.method public onBackButtonPressed()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->finish()V

    .line 156
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->finish()V

    .line 151
    return-void
.end method

.method public onContinueButtonPressed()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isWarningScreenVisible:Z

    .line 139
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isDefaultCloudSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->launchCloudPicker()V

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->continueWithWorkflow()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->initializeImageLoader()V

    .line 59
    if-eqz p1, :cond_1

    .line 60
    const-string/jumbo v0, "KEY_ENTERPRISE_USER_WARNING_VIEW_VISIBLE"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isWarningScreenVisible:Z

    .line 61
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "FRAGMENT_TAG_ENTERPRISE_USER_WARNING_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 63
    instance-of v1, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    if-eqz v1, :cond_0

    .line 64
    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKELWFragment$EnterpriseUserWarningDialogCallbacks;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserAnEnterpriseUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SP_KEY_ENTERPRISE_USER_WARNING_SHOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->getUserBehanceAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 72
    if-nez v2, :cond_2

    .line 73
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->showEnterpriseUserWarningScreen(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 76
    :cond_2
    iget-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isWarningScreenVisible:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isDefaultCloudSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->launchCloudPicker()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 51
    const-string/jumbo v0, "KEY_ENTERPRISE_USER_WARNING_VIEW_VISIBLE"

    iget-boolean v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isWarningScreenVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string/jumbo v0, "KEY_ENTERPRISE_USER_WARNING_VIEW_VISIBLE"

    iget-boolean v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKBasePublishActivity;->isCloudPickerLaunched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    return-void
.end method
