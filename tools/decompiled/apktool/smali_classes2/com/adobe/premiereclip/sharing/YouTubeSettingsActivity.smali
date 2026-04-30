.class public Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "YouTubeSettingsActivity.java"


# static fields
.field private static final LOGGING_LEVEL:Ljava/util/logging/Level;

.field private static final PREF_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field static final REQUEST_ACCOUNT_PICKER:I = 0x2

.field static final REQUEST_AUTHORIZATION:I = 0x1

.field static final REQUEST_GOOGLE_PLAY_SERVICES:I = 0x0

.field static final REQUEST_USER_AUTHORIZATION:I = 0x3

.field static final TAG:Ljava/lang/String; = "YoutubeSampleActivity"


# instance fields
.field private final MY_PERMISSIONS_REQUEST_READ_CONTACTS:I

.field Youtube_scope:Ljava/lang/String;

.field accountName:Ljava/lang/String;

.field credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field descText:Landroid/widget/EditText;

.field description:Ljava/lang/String;

.field privateBtn:Landroid/widget/Button;

.field projKey:Ljava/lang/String;

.field projName:Ljava/lang/String;

.field projNameText:Landroid/widget/EditText;

.field publicBtn:Landroid/widget/Button;

.field publishBtn:Landroid/widget/Button;

.field signInUser:Landroid/widget/TextView;

.field signOutBtn:Landroid/widget/TextView;

.field tag:Ljava/lang/String;

.field tagText:Landroid/widget/EditText;

.field title:Ljava/lang/String;

.field unlistedBtn:Landroid/widget/Button;

.field videoAccess:Ljava/lang/String;

.field public youTubeLoadingDialog:Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;

.field youtubeDisclaimer:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    sput-object v0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->LOGGING_LEVEL:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    .line 77
    const/16 v0, 0x47

    iput v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->MY_PERMISSIONS_REQUEST_READ_CONTACTS:I

    .line 93
    const-string/jumbo v0, "oauth2:https://www.googleapis.com/auth/youtube.upload"

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->Youtube_scope:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->checkGooglePlayServicesAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signOutFromAccount()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->publishToYoutubeBtnClicked()V

    return-void
.end method

.method private addPrivateButtonListner()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->privateBtn:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$5;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    return-void
.end method

.method private addPublicButtonListner()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->publicBtn:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$4;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-void
.end method

.method private addPublishListner()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->publishBtn:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$3;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method private addSignInListner()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signInUser:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$1;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method private addSignOutListner()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signOutBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$2;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method private addUnlistedButtonListner()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->unlistedBtn:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$6;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    return-void
.end method

.method private checkGooglePlayServicesAvailable()Z
    .locals 2

    .prologue
    .line 373
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 374
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->showGooglePlayServicesAvailabilityErrorDialog(I)V

    .line 376
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getSavedUserName()V
    .locals 3

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->checkGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "accountName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->setUserAccountName()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->pickUserAccount()V

    goto :goto_0
.end method

.method private publishToYoutubeBtnClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 217
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->checkGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->projNameText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->title:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->descText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->description:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->tagText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->tag:Ljava/lang/String;

    .line 224
    const-string/jumbo v0, "YoutubeSampleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0531

    .line 228
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0530

    .line 229
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 234
    :cond_2
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0533

    .line 235
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0532

    .line 236
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_0

    .line 240
    :cond_3
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->Youtube_scope:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 241
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->credential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 242
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youTubeLoadingDialog:Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;->show()V

    .line 243
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youTubeLoadingDialog:Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;->setCancelable(Z)V

    .line 244
    invoke-static {p0}, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->run(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V

    goto :goto_0
.end method

.method private setUserAccountName()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signInUser:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signInUser:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 277
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signInUser:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0539

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signOutBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    return-void
.end method

.method private signOutFromAccount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iput-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signOutBtn:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signInUser:Landroid/widget/TextView;

    const v1, 0x7f0a053f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "accountName"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    return-void
.end method


# virtual methods
.method public final closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->onBackPressed()V

    .line 406
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 283
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    if-ne p2, v3, :cond_0

    .line 286
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    const-string/jumbo v1, "accountName"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->setUserAccountName()V

    .line 296
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 298
    if-ne p2, v3, :cond_2

    .line 299
    invoke-static {p0}, Lcom/adobe/premiereclip/sharing/YouTubeGetTokenAsync;->run(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;)V

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youTubeLoadingDialog:Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;->dismiss()V

    .line 303
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youTubeLoadingDialog:Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;->dismiss()V

    .line 304
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0529

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0543

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 305
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_0
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 410
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 411
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->overridePendingTransition(II)V

    .line 412
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->setContentView(I)V

    .line 100
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 102
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "project_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->projKey:Ljava/lang/String;

    .line 104
    const-string/jumbo v1, "project_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->projName:Ljava/lang/String;

    .line 106
    const v0, 0x7f120196

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->publicBtn:Landroid/widget/Button;

    .line 107
    const v0, 0x7f120197

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->privateBtn:Landroid/widget/Button;

    .line 108
    const v0, 0x7f120198

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->unlistedBtn:Landroid/widget/Button;

    .line 109
    const v0, 0x7f120178

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signInUser:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f12014f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->publishBtn:Landroid/widget/Button;

    .line 111
    const v0, 0x7f12017b

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->signOutBtn:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f120194

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->projNameText:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f120177

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->descText:Landroid/widget/EditText;

    .line 114
    const v0, 0x7f120195

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->tagText:Landroid/widget/EditText;

    .line 115
    const v0, 0x7f120199

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youtubeDisclaimer:Landroid/widget/TextView;

    .line 117
    new-instance v0, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youTubeLoadingDialog:Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;

    .line 118
    const-string/jumbo v0, "public"

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->videoAccess:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->projNameText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->projName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youtubeDisclaimer:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a052a

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<a href=\"http://m.youtube.com/terms\">http://m.youtube.com/terms</a> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youtubeDisclaimer:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 126
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getSavedUserName()V

    .line 128
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->addPrivateButtonListner()V

    .line 129
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->addPublicButtonListner()V

    .line 130
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->addUnlistedButtonListner()V

    .line 131
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->addSignInListner()V

    .line 132
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->addPublishListner()V

    .line 133
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->addSignOutListner()V

    .line 134
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 145
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 146
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    .line 416
    packed-switch p1, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 419
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 420
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->publishToYoutubeBtnClicked()V

    goto :goto_0

    .line 422
    :cond_1
    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0461

    .line 424
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03d9

    .line 425
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 427
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 139
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 140
    return-void
.end method

.method protected pickUserAccount()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 268
    new-array v2, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "com.google"

    aput-object v4, v2, v1

    move-object v1, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    .line 269
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 271
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 272
    return-void
.end method

.method protected publishVideoToYouTube()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youTubeLoadingDialog:Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;->dismiss()V

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    const-string/jumbo v1, "youtube_upload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    const-string/jumbo v1, "account_name"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v1, "video_access"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->videoAccess:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v1, "tag"

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 263
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->onBackPressed()V

    .line 265
    :cond_0
    return-void
.end method

.method showGenericError()V
    .locals 4

    .prologue
    .line 399
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youTubeLoadingDialog:Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;->dismiss()V

    .line 400
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a052b

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a052c

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 401
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 402
    return-void
.end method

.method showGooglePlayServicesAvailabilityErrorDialog(I)V
    .locals 1

    .prologue
    .line 382
    new-instance v0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity$7;-><init>(Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;I)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method showNetworkError()V
    .locals 4

    .prologue
    .line 393
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->youTubeLoadingDialog:Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/YouTubeLoadingDialog;->dismiss()V

    .line 394
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a052e

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a052f

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/sharing/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 395
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 396
    return-void
.end method
