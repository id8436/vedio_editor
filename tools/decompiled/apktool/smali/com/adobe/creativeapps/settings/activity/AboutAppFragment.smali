.class public Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;
.super Landroid/support/v4/app/Fragment;
.source "AboutAppFragment.java"


# instance fields
.field private ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

.field private mFeaturesDescriptionList:[Ljava/lang/String;

.field private mFeaturesList:[Ljava/lang/String;

.field private mLearnMore:Landroid/widget/TextView;

.field private mLearnMoreURL:Landroid/text/style/ClickableSpan;

.field private mPrivacyPolicy:Landroid/view/View;

.field private mSendUsageReportsSwitch:Landroid/support/v7/widget/SwitchCompat;

.field private mTermsOfUse:Landroid/view/View;

.field private mThirdPartyNotices:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private sendUsageReports:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "Feature 1"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mFeaturesList:[Ljava/lang/String;

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mFeaturesDescriptionList:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)Landroid/support/v7/widget/SwitchCompat;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mSendUsageReportsSwitch:Landroid/support/v7/widget/SwitchCompat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 228
    check-cast p1, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    .line 229
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->setHasOptionsMenu(Z)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 68
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/utility/analytics/TrackingUtility;->getTrackingValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->sendUsageReports:Z

    .line 71
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->activity_about_app:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 94
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->currentVersion:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/adobe/creativeapps/settings/R$string;->version_number:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->sendUsageReportsSwitch:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mSendUsageReportsSwitch:Landroid/support/v7/widget/SwitchCompat;

    .line 123
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mSendUsageReportsSwitch:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v2, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->sendUsageReports:Z

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 126
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mSendUsageReportsSwitch:Landroid/support/v7/widget/SwitchCompat;

    new-instance v2, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$1;-><init>(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->usageReportLearnMore:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mLearnMore:Landroid/widget/TextView;

    .line 141
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativeapps/settings/R$string;->usageReport_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/adobe/creativeapps/settings/R$string;->learnMore_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/adobe/creativeapps/settings/R$color;->settings_primary:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 145
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    .line 144
    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 147
    new-instance v3, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$2;

    invoke-direct {v3, p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$2;-><init>(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)V

    iput-object v3, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mLearnMoreURL:Landroid/text/style/ClickableSpan;

    .line 164
    iget-object v3, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mLearnMoreURL:Landroid/text/style/ClickableSpan;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 166
    iget-object v3, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mLearnMore:Landroid/widget/TextView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v0, v4, v6

    const/4 v0, 0x1

    const-string/jumbo v5, " "

    aput-object v5, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mLearnMore:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 169
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->termsOfUse:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mTermsOfUse:Landroid/view/View;

    .line 170
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->privacyPolicy:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mPrivacyPolicy:Landroid/view/View;

    .line 171
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->thirdPartyNotices:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mThirdPartyNotices:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mTermsOfUse:Landroid/view/View;

    new-instance v2, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$3;

    invoke-direct {v2, p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$3;-><init>(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mPrivacyPolicy:Landroid/view/View;

    new-instance v2, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$4;

    invoke-direct {v2, p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$4;-><init>(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;->mThirdPartyNotices:Landroid/view/View;

    new-instance v2, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$5;

    invoke-direct {v2, p0}, Lcom/adobe/creativeapps/settings/activity/AboutAppFragment$5;-><init>(Lcom/adobe/creativeapps/settings/activity/AboutAppFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 220
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 221
    return-void
.end method
