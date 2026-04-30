.class public Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;
.super Landroid/support/v4/app/Fragment;
.source "PreferencesFragment.java"


# static fields
.field public static final DROPBOX_ACCESS_KEY:Ljava/lang/String; = "ACCESS_KEY"

.field public static final DROPBOX_ACCESS_SECRET:Ljava/lang/String; = "ACCESS_SECRET"

.field public static final GOOGLE_ACCOUNT_NAME:Ljava/lang/String; = "googleAccount"


# instance fields
.field private activity:Landroid/app/Activity;

.field private ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

.field private context:Landroid/content/Context;

.field private exportResolution:I

.field private mAddBumperSwitch:Landroid/support/v7/widget/SwitchCompat;

.field public mDropboxLinkTextView:Landroid/widget/TextView;

.field private mExportResSpinner:Landroid/widget/Spinner;

.field public mGoogleSignInTextView:Landroid/widget/TextView;

.field private mResetCoachMark:Landroid/widget/RelativeLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private resetBrandingPreference:Landroid/widget/RelativeLayout;

.field private resetCoachMarks:Z

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->checkDropboxLink()V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->checkGoogleSignIn()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->exportResolution:I

    return v0
.end method

.method static synthetic access$302(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->exportResolution:I

    return p1
.end method

.method static synthetic access$400(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->resetCoachMarks:Z

    return v0
.end method

.method static synthetic access$502(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->resetCoachMarks:Z

    return p1
.end method

.method private checkDropboxLink()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ACCESS_KEY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "ACCESS_SECRET"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->linkDropbox()V

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mDropboxLinkTextView:Landroid/widget/TextView;

    sget v1, Lcom/adobe/creativeapps/settings/R$string;->settings_link:I

    invoke-virtual {p0, v1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->unlinkDropbox()V

    .line 152
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    const/4 v1, 0x0

    const-string/jumbo v2, "dropbox"

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->showLinkUnlinkDialog(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private checkGoogleSignIn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "googleAccount"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 131
    const-string/jumbo v2, "googleAccount"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    const/4 v2, 0x0

    const-string/jumbo v3, "google"

    invoke-interface {v1, v2, v3}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->showLinkUnlinkDialog(ZLjava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mGoogleSignInTextView:Landroid/widget/TextView;

    sget v2, Lcom/adobe/creativeapps/settings/R$string;->settings_link:I

    invoke-virtual {p0, v2}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const-string/jumbo v1, "Preferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "account name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->pickUserAccount()V

    goto :goto_0
.end method

.method private setAccountsUX(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->linkTextView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mDropboxLinkTextView:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ACCESS_KEY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "ACCESS_SECRET"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mDropboxLinkTextView:Landroid/widget/TextView;

    sget v1, Lcom/adobe/creativeapps/settings/R$string;->settings_link:I

    invoke-virtual {p0, v1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mDropboxLinkTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$1;-><init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->googleSignInTextView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mGoogleSignInTextView:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "googleAccount"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mGoogleSignInTextView:Landroid/widget/TextView;

    sget v1, Lcom/adobe/creativeapps/settings/R$string;->settings_unlink:I

    invoke-virtual {p0, v1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mGoogleSignInTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$2;-><init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mDropboxLinkTextView:Landroid/widget/TextView;

    sget v1, Lcom/adobe/creativeapps/settings/R$string;->settings_unlink:I

    invoke-virtual {p0, v1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mGoogleSignInTextView:Landroid/widget/TextView;

    sget v1, Lcom/adobe/creativeapps/settings/R$string;->settings_link:I

    invoke-virtual {p0, v1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setBumperUX(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBumperState()Z

    move-result v1

    .line 220
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->isBumperPremiereClip()Z

    move-result v2

    .line 222
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->settings_add_bumper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 223
    new-instance v3, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$5;

    invoke-direct {v3, p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$5;-><init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->add_bumper_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 232
    if-eqz v1, :cond_1

    .line 233
    if-eqz v2, :cond_0

    .line 234
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativeapps/settings/R$string;->settings_clip_bumper:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativeapps/settings/R$string;->settings_custom_bumper:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativeapps/settings/R$string;->settings_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setCoachMarksUX(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 270
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->resetCoachMarks:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mResetCoachMark:Landroid/widget/RelativeLayout;

    .line 271
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mResetCoachMark:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$8;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$8;-><init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void
.end method

.method private setExportResSpinnerUX(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 157
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->exportResSpinner:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mExportResSpinner:Landroid/widget/Spinner;

    .line 159
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/adobe/creativeapps/settings/R$array;->export_res_options:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->context:Landroid/content/Context;

    sget v4, Lcom/adobe/creativeapps/settings/R$layout;->view_spinner:I

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 163
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 165
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mExportResSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 168
    iget v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->exportResolution:I

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mExportResSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 177
    iget v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->exportResolution:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mExportResSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mExportResSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 180
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mExportResSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setFocusable(Z)V

    .line 181
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->settings_export_res:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$3;-><init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :goto_1
    return-void

    .line 170
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 172
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->mExportResSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$4;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$4;-><init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_1

    .line 168
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2d0 -> :sswitch_0
        0x438 -> :sswitch_1
        0x870 -> :sswitch_2
    .end sparse-switch
.end method

.method private setPlaceOverlayUX(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 246
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->settings_place_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 247
    new-instance v1, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$6;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$6;-><init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getBugState()Z

    move-result v1

    .line 255
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->place_overlay_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    if-eqz v1, :cond_0

    sget v1, Lcom/adobe/creativeapps/settings/R$string;->settings_enabled:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    return-void

    .line 256
    :cond_0
    sget v1, Lcom/adobe/creativeapps/settings/R$string;->settings_disabled:I

    goto :goto_0
.end method

.method private setResetBrandingUX(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 260
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->resetBrandingPreferences:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->resetBrandingPreference:Landroid/widget/RelativeLayout;

    .line 261
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->resetBrandingPreference:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$7;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment$7;-><init>(Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-void
.end method

.method private setUX(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->setExportResSpinnerUX(Landroid/view/View;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->setPlaceOverlayUX(Landroid/view/View;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->setBumperUX(Landroid/view/View;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->setCoachMarksUX(Landroid/view/View;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->setResetBrandingUX(Landroid/view/View;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->setAccountsUX(Landroid/view/View;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 290
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->activity:Landroid/app/Activity;

    .line 291
    check-cast p1, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->resetCoachMarks:Z

    .line 298
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->ccAppSettingsPreference:Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;

    invoke-interface {v0}, Lcom/adobe/creativeapps/settings/activity/ICCAppSettingsPreference;->getExportResolution()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->exportResolution:I

    .line 299
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->context:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 66
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->activity_settings:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 68
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->context:Landroid/content/Context;

    sget v3, Lcom/adobe/creativeapps/settings/R$string;->preferenceFile:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 69
    invoke-direct {p0, v0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->setUX(Landroid/view/View;)V

    .line 70
    return-object v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 284
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 285
    return-void
.end method

.method public onRestoreFragment()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativeapps/settings/activity/PreferencesFragment;->setUX(Landroid/view/View;)V

    .line 75
    return-void
.end method
