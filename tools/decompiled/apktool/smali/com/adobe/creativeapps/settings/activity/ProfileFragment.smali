.class public Lcom/adobe/creativeapps/settings/activity/ProfileFragment;
.super Landroid/support/v4/app/Fragment;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;


# instance fields
.field private CLOUD_CHANGE_REQUEST_CODE:Ljava/lang/Integer;

.field private _authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

.field private ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

.field private ct:Lcom/adobe/creativeapps/settings/utils/CircleTransform;

.field private logoutDialog:Lcom/alertdialogpro/b;

.field private mActivity:Landroid/app/Activity;

.field private mAddressTextView:Landroid/widget/TextView;

.field private mChnageCloudView:Landroid/widget/TextView;

.field private mCompanyNameTextView:Landroid/widget/TextView;

.field mLogoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

.field private mPrivateCloudView:Landroid/view/View;

.field private mProfileAccountImageView:Landroid/widget/ImageView;

.field private mProfileNameTextView:Landroid/widget/TextView;

.field private mProfileStorageSubscriptionStatus:Landroid/widget/TextView;

.field private mProfileSubscriptionStatus:Landroid/widget/TextView;

.field private mRoleNameTextView:Landroid/widget/TextView;

.field private mSharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

.field private mStorageCloudName:Landroid/widget/TextView;

.field private mStorageInfoTextView:Landroid/widget/TextView;

.field private mStorageUsageProgressBar:Lcom/sage42/android/view/ui/CircularProgressBar;

.field private mTitle:Landroid/widget/TextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mUserProfile:Lcom/behance/sdk/BehanceSDKUserProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 64
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->CLOUD_CHANGE_REQUEST_CODE:Ljava/lang/Integer;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mLogoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    .line 80
    new-instance v0, Lcom/adobe/creativeapps/settings/utils/CircleTransform;

    invoke-direct {v0}, Lcom/adobe/creativeapps/settings/utils/CircleTransform;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->ct:Lcom/adobe/creativeapps/settings/utils/CircleTransform;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mChnageCloudView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mPrivateCloudView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageCloudName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileSubscriptionStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/behance/sdk/BehanceSDKUserProfile;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mUserProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;Lcom/behance/sdk/BehanceSDKUserProfile;)Lcom/behance/sdk/BehanceSDKUserProfile;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mUserProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mSharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->updateProfilePic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;Lcom/behance/sdk/BehanceSDKUserProfile;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->updateBehanceProfileData(Lcom/behance/sdk/BehanceSDKUserProfile;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->CLOUD_CHANGE_REQUEST_CODE:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/alertdialogpro/b;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->logoutDialog:Lcom/alertdialogpro/b;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/adobe/creativeapps/settings/utils/CircleTransform;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->ct:Lcom/adobe/creativeapps/settings/utils/CircleTransform;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileAccountImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/sage42/android/view/ui/CircularProgressBar;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageUsageProgressBar:Lcom/sage42/android/view/ui/CircularProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageInfoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->_authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    return-object v0
.end method

.method private clearStorageInfo()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageUsageProgressBar:Lcom/sage42/android/view/ui/CircularProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sage42/android/view/ui/CircularProgressBar;->setShowText(Z)V

    .line 314
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageInfoTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mPrivateCloudView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileSubscriptionStatus:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_1
    return-void
.end method

.method private editProfile()V
    .locals 3

    .prologue
    .line 339
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$8;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$8;-><init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V

    .line 388
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 341
    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDK;->initialize(Lcom/behance/sdk/IBehanceSDKUserCredentials;Landroid/content/Context;)V

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$9;

    invoke-direct {v2, p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$9;-><init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDK;->launchEditProfileWorkFlow(Landroid/content/Context;Lcom/behance/sdk/IBehanceSDKEditProfileListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getStringWrapped(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    :cond_0
    const-string/jumbo v0, ""

    .line 514
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private logOut()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->showLogoutDialog()V

    .line 440
    return-void
.end method

.method private updateBehanceProfileData(Lcom/behance/sdk/BehanceSDKUserProfile;)V
    .locals 4

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileNameTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mRoleNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getOccupation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getOccupation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mCompanyNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCompany()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCompany()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mAddressTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 240
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :cond_0
    return-void

    .line 229
    :cond_1
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 232
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    .line 234
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    .line 237
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_3

    .line 240
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_4
.end method

.method private updateCCStorageInfo(Z)V
    .locals 3

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->clearStorageInfo()V

    .line 248
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 249
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 251
    if-eqz v0, :cond_0

    .line 252
    new-instance v1, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$7;-><init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;Z)V

    .line 307
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getQuotaInformationOnCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;Landroid/os/Handler;)V

    .line 309
    :cond_0
    return-void
.end method

.method private updateProfilePic(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$6;

    invoke-direct {v0, p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$6;-><init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getAvatarFromURL(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V

    .line 222
    return-void
.end method


# virtual methods
.method public didLogout(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 3

    .prologue
    .line 449
    if-eqz p1, :cond_0

    .line 450
    const-string/jumbo v0, "ProfileActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in Logout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->handleLogout()V

    goto :goto_0
.end method

.method public handleLogout()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 464
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 465
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->CLOUD_CHANGE_REQUEST_CODE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 467
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 470
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 472
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageUsageProgressBar:Lcom/sage42/android/view/ui/CircularProgressBar;

    invoke-virtual {v0, v3}, Lcom/sage42/android/view/ui/CircularProgressBar;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileSubscriptionStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mPrivateCloudView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageCloudName:Landroid/widget/TextView;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    .line 480
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->changeCloud()V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->changeCloud()V

    .line 486
    invoke-direct {p0, v2}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->updateCCStorageInfo(Z)V

    .line 487
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mPrivateCloudView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageUsageProgressBar:Lcom/sage42/android/view/ui/CircularProgressBar;

    invoke-virtual {v0, v2}, Lcom/sage42/android/view/ui/CircularProgressBar;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileSubscriptionStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 505
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 506
    check-cast p1, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    .line 507
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->setHasOptionsMenu(Z)V

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 204
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 205
    sget v0, Lcom/adobe/creativeapps/settings/R$menu;->menu_profile:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 206
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 99
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->activity_profile:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 100
    invoke-static {v4}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mActivity:Landroid/app/Activity;

    .line 103
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->profileAccountImageView:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileAccountImageView:Landroid/widget/ImageView;

    .line 104
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->profileNameTextView:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileNameTextView:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->roleNameTextView:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mRoleNameTextView:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->companyNameTextView:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mCompanyNameTextView:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->addressTextView:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mAddressTextView:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->profileSubscriptionStatus:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileSubscriptionStatus:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->private_cloud_name:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageCloudName:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->storageInfoTextView:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageInfoTextView:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->storageUsageProgressBar:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sage42/android/view/ui/CircularProgressBar;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageUsageProgressBar:Lcom/sage42/android/view/ui/CircularProgressBar;

    .line 112
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->cloud_selection_text:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mChnageCloudView:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->private_cloud_info:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mPrivateCloudView:Landroid/view/View;

    .line 114
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->_authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    .line 116
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget v1, Lcom/adobe/creativeapps/settings/R$string;->syncOnlyOnWifi:I

    invoke-direct {p0, v1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 118
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->backupOnMobileDataSwitch:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 119
    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 120
    new-instance v1, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$1;-><init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/k/a/ak;->a(Landroid/content/Context;)Lcom/k/a/ak;

    move-result-object v0

    sget v1, Lcom/adobe/creativeapps/settings/R$drawable;->settings_sa:I

    invoke-virtual {v0, v1}, Lcom/k/a/ak;->a(I)Lcom/k/a/ba;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativeapps/settings/utils/CircleTransform;

    invoke-direct {v1}, Lcom/adobe/creativeapps/settings/utils/CircleTransform;-><init>()V

    invoke-virtual {v0, v1}, Lcom/k/a/ba;->a(Lcom/k/a/bi;)Lcom/k/a/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileAccountImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/k/a/ba;->a(Landroid/widget/ImageView;)V

    .line 132
    iput-object v5, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mSharedInstance:Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    .line 133
    iput-object v5, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mUserProfile:Lcom/behance/sdk/BehanceSDKUserProfile;

    .line 139
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mChnageCloudView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$2;-><init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V

    new-instance v5, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$3;

    invoke-direct {v5, p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$3;-><init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->refreshClouds(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 157
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 159
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageUsageProgressBar:Lcom/sage42/android/view/ui/CircularProgressBar;

    invoke-virtual {v0, v7}, Lcom/sage42/android/view/ui/CircularProgressBar;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileSubscriptionStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mPrivateCloudView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageCloudName:Landroid/widget/TextView;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getName()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mChnageCloudView:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$4;-><init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$5;

    invoke-direct {v0, p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$5;-><init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mLogoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    .line 199
    return-object v4

    :cond_0
    move v1, v3

    .line 119
    goto/16 :goto_0

    .line 171
    :cond_1
    invoke-direct {p0, v3}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->updateCCStorageInfo(Z)V

    .line 173
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mPrivateCloudView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageUsageProgressBar:Lcom/sage42/android/view/ui/CircularProgressBar;

    invoke-virtual {v0, v3}, Lcom/sage42/android/view/ui/CircularProgressBar;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mStorageInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mProfileSubscriptionStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onLogoutAccepted()V
    .locals 3

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/adobe/creativeapps/settings/R$string;->signing_out:I

    invoke-direct {p0, v2}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alertdialogpro/b;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alertdialogpro/b;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->logoutDialog:Lcom/alertdialogpro/b;

    .line 444
    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->getInstance()Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->logout(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;)V

    .line 445
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 324
    sget v2, Lcom/adobe/creativeapps/settings/R$id;->action_edit:I

    if-ne v1, v2, :cond_0

    .line 334
    :goto_0
    return v0

    .line 330
    :cond_0
    sget v2, Lcom/adobe/creativeapps/settings/R$id;->action_logout:I

    if-ne v1, v2, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->logOut()V

    goto :goto_0

    .line 334
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 433
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 435
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mLogoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V

    .line 436
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 408
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 410
    invoke-static {}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->getInstance()Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->handleLogout()V

    .line 429
    :goto_0
    return-void

    .line 415
    :cond_0
    new-instance v0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$10;

    invoke-direct {v0, p0}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$10;-><init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V

    .line 428
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->mLogoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->registerLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V

    goto :goto_0
.end method
