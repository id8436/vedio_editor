.class public Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "TwitterSettingsActivity.java"


# static fields
.field private static final MAX_CHAR_LIMIT:I = 0x74

.field private static final PREF_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field private static final PREF_ACCOUNT_SECRET:Ljava/lang/String; = "accountSecret"

.field private static final PREF_ACCOUNT_TOKEN:Ljava/lang/String; = "accountToken"


# instance fields
.field accountName:Ljava/lang/String;

.field charCount:Landroid/widget/TextView;

.field charCountWatcher:Landroid/text/TextWatcher;

.field descText:Landroid/widget/EditText;

.field projKey:Ljava/lang/String;

.field projName:Ljava/lang/String;

.field publishBtn:Landroid/widget/Button;

.field signInUser:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

.field signOutBtn:Landroid/widget/TextView;

.field twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field userName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->setCharCount()V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->setSignedOutState()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->setSignedInState()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->publishToTwitterBtnClicked()V

    return-void
.end method

.method private addPublishListener()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->publishBtn:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$5;-><init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method

.method private addSignInListener()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->signInUser:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$4;-><init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->setCallback(Lcom/twitter/sdk/android/core/c;)V

    .line 206
    return-void
.end method

.method private addSignOutListener()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->signOutBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$3;-><init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method

.method private publishToTwitterBtnClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 254
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->descText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->accountName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 257
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0531

    .line 258
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0508

    .line 259
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 274
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 264
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0533

    .line 265
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0509

    .line 266
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->publishVideoToTwitter()V

    goto :goto_0
.end method

.method private setCharCount()V
    .locals 2

    .prologue
    const/16 v0, 0x74

    .line 149
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->descText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 150
    if-le v1, v0, :cond_0

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->charCount:Landroid/widget/TextView;

    rsub-int/lit8 v0, v0, 0x74

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setSignedInState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    const-string/jumbo v1, "accountName"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->accountName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    const-string/jumbo v1, "accountToken"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string/jumbo v1, "accountSecret"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->signInUser:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->userName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->userName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->charCount:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->setCharCount()V

    .line 221
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->descText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->charCountWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->signOutBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->addSignOutListener()V

    .line 224
    return-void
.end method

.method private setSignedOutState()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 227
    iput-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->accountName:Ljava/lang/String;

    .line 228
    iput-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 229
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->signOutBtn:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->userName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->charCount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->descText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->charCountWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->signInUser:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    invoke-virtual {v0, v3}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->setVisibility(I)V

    .line 234
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->addSignInListener()V

    .line 236
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    const-string/jumbo v1, "accountName"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string/jumbo v1, "accountToken"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    const-string/jumbo v1, "accountSecret"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    return-void
.end method

.method private setUserState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "accountName"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->accountName:Ljava/lang/String;

    .line 159
    const-string/jumbo v1, "accountToken"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string/jumbo v2, "accountSecret"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->accountName:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 162
    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-direct {v2, v1, v0}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 163
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->setSignedInState()V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->setSignedOutState()V

    goto :goto_0
.end method


# virtual methods
.method public final closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->onBackPressed()V

    .line 140
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->signInUser:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->a(IILandroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 145
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->overridePendingTransition(II)V

    .line 146
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->setContentView(I)V

    .line 64
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 66
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "project_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->projKey:Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "project_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->projName:Ljava/lang/String;

    .line 70
    const v0, 0x7f120178

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->signInUser:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    .line 71
    const v0, 0x7f12014f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->publishBtn:Landroid/widget/Button;

    .line 72
    const v0, 0x7f12017b

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->signOutBtn:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f120179

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->userName:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f12017a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->charCount:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f120177

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->descText:Landroid/widget/EditText;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 77
    new-instance v0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$1;-><init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->charCountWatcher:Landroid/text/TextWatcher;

    .line 94
    const v0, 0x7f120150

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity$2;-><init>(Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 115
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->setUserState()V

    .line 116
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->addPublishListener()V

    .line 117
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 128
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 122
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 123
    return-void
.end method

.method protected publishVideoToTwitter()V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v0, :cond_1

    .line 278
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 279
    const-string/jumbo v0, "twitter_upload"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    const-string/jumbo v0, "token"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string/jumbo v0, "secret"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->twitterAuthToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->descText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x74

    if-le v2, v3, :cond_0

    .line 284
    const/4 v2, 0x0

    const/16 v3, 0x73

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_0
    const-string/jumbo v2, "tweet"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/TwitterSettingsActivity;->onBackPressed()V

    .line 291
    :cond_1
    return-void
.end method
