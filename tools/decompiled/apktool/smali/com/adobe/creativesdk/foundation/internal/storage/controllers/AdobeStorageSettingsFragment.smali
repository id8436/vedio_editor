.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;
.super Landroid/support/v4/app/Fragment;
.source "AdobeStorageSettingsFragment.java"


# instance fields
.field private _editCCSettings:Landroid/widget/LinearLayout;

.field private _fragmentStopped:Z

.field private _settings_container:Landroid/widget/RelativeLayout;

.field private _switchAccounts:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private OpenURLinBrowser(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 220
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->OpenURLinBrowser(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->_fragmentStopped:Z

    return v0
.end method

.method private disableLinks()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->_editCCSettings:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 115
    return-void
.end method

.method private getUserAccountInfo(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 151
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 157
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_settings_userName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_settings_userEmailId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "ADOBE_CLOUD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 174
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isQuotaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 177
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;Landroid/view/View;)V

    .line 211
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getQuotaInformationOnCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;Landroid/os/Handler;)V

    .line 214
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->setHasOptionsMenu(Z)V

    .line 43
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 85
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "ADOBE_CLOUD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 51
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_myacount:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/actionbar/AdobeUxActionBarController;->setTitle(Ljava/lang/String;)V

    .line 53
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_storage_settings_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->setHasOptionsMenu(Z)V

    .line 57
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_settings_switchAccounts:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->_switchAccounts:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->_switchAccounts:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_settings_editCCSettings:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->_editCCSettings:Landroid/widget/LinearLayout;

    .line 70
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->_editCCSettings:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->getUserAccountInfo(Landroid/view/View;)V

    .line 79
    return-object v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 91
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_sdk_myaccount:I

    .line 92
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->_fragmentStopped:Z

    .line 100
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeStorageSettingsFragment;->_fragmentStopped:Z

    .line 105
    return-void
.end method
