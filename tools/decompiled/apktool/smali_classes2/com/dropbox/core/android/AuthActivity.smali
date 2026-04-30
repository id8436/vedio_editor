.class public Lcom/dropbox/core/android/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"


# static fields
.field public static final ACTION_AUTHENTICATE_V1:Ljava/lang/String; = "com.dropbox.android.AUTHENTICATE_V1"

.field public static final ACTION_AUTHENTICATE_V2:Ljava/lang/String; = "com.dropbox.android.AUTHENTICATE_V2"

.field public static final AUTH_PATH_CONNECT:Ljava/lang/String; = "/connect"

.field public static final AUTH_VERSION:I = 0x1

.field private static final DEFAULT_WEB_HOST:Ljava/lang/String; = "www.dropbox.com"

.field public static final EXTRA_ACCESS_SECRET:Ljava/lang/String; = "ACCESS_SECRET"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "ACCESS_TOKEN"

.field public static final EXTRA_ALREADY_AUTHED_UIDS:Ljava/lang/String; = "ALREADY_AUTHED_UIDS"

.field public static final EXTRA_AUTH_STATE:Ljava/lang/String; = "AUTH_STATE"

.field public static final EXTRA_CALLING_CLASS:Ljava/lang/String; = "CALLING_CLASS"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "CALLING_PACKAGE"

.field public static final EXTRA_CONSUMER_KEY:Ljava/lang/String; = "CONSUMER_KEY"

.field public static final EXTRA_CONSUMER_SIG:Ljava/lang/String; = "CONSUMER_SIG"

.field public static final EXTRA_DESIRED_UID:Ljava/lang/String; = "DESIRED_UID"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "SESSION_ID"

.field public static final EXTRA_UID:Ljava/lang/String; = "UID"

.field private static final SIS_KEY_AUTH_STATE_NONCE:Ljava/lang/String; = "SIS_KEY_AUTH_STATE_NONCE"

.field private static final TAG:Ljava/lang/String;

.field public static result:Landroid/content/Intent;

.field private static sAlreadyAuthedUids:[Ljava/lang/String;

.field private static sApiType:Ljava/lang/String;

.field private static sAppKey:Ljava/lang/String;

.field private static sDesiredUid:Ljava/lang/String;

.field private static sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

.field private static final sSecurityProviderLock:Ljava/lang/Object;

.field private static sSessionId:Ljava/lang/String;

.field private static sWebHost:Ljava/lang/String;


# instance fields
.field private mActivityDispatchHandlerPosted:Z

.field private mAlreadyAuthedUids:[Ljava/lang/String;

.field private mApiType:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mAuthStateNonce:Ljava/lang/String;

.field private mDesiredUid:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;

.field private mWebHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/dropbox/core/android/AuthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->TAG:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/dropbox/core/android/AuthActivity$1;

    invoke-direct {v0}, Lcom/dropbox/core/android/AuthActivity$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 159
    const-string/jumbo v0, "www.dropbox.com"

    sput-object v0, Lcom/dropbox/core/android/AuthActivity;->sWebHost:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/android/AuthActivity;->mActivityDispatchHandlerPosted:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/dropbox/core/android/AuthActivity;->startWebAuth(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    return-object p1
.end method

.method private authFinished(Landroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 536
    sput-object p1, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 537
    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    .line 538
    invoke-static {v0, v0, v0}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/dropbox/core/android/AuthActivity;->finish()V

    .line 540
    return-void
.end method

.method public static checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 277
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "db-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/connect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 282
    invoke-virtual {v4, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 284
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "URI scheme in your app\'s manifest is not set up correctly. You should have a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/dropbox/core/android/AuthActivity;

    .line 287
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with the scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_3

    .line 290
    if-eqz p2, :cond_2

    .line 291
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    const-string/jumbo v2, "Security alert"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 293
    const-string/jumbo v2, "Another app on your phone may be trying to pose as the app you are currently using. The malicious app can\'t access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 298
    const-string/jumbo v2, "OK"

    new-instance v3, Lcom/dropbox/core/android/AuthActivity$2;

    invoke-direct {v3}, Lcom/dropbox/core/android/AuthActivity$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 330
    :goto_0
    return v0

    .line 306
    :cond_2
    sget-object v1, Lcom/dropbox/core/android/AuthActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "There are multiple apps registered for the AuthActivity URI scheme ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ").  Another app may be trying to  impersonate this app, so authentication will be disabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 316
    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_4

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 318
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "There must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/dropbox/core/android/AuthActivity;

    .line 319
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " within your app\'s package registered for your URI scheme ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "). However, it appears that an activity in a different package is registered for that scheme instead. If you have multiple apps that all want to use the same accesstoken pair, designate one of them to do authentication and have the other apps launch it and then retrieve the token pair from it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v1

    .line 330
    goto :goto_0
.end method

.method private createStateNonce()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v1, 0x0

    .line 565
    .line 566
    new-array v2, v7, [B

    .line 567
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    const-string/jumbo v0, "oauth2:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 570
    :goto_0
    if-ge v0, v7, :cond_0

    .line 571
    const-string/jumbo v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, v2, v0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getOfficialAuthIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.dropbox.android.AUTHENTICATE_V2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    const-string/jumbo v1, "com.dropbox.android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    return-object v0
.end method

.method private static getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getSecurityProvider()Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Lcom/dropbox/core/android/AuthActivity$SecurityProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method

.method private static getSecurityProvider()Lcom/dropbox/core/android/AuthActivity$SecurityProvider;
    .locals 2

    .prologue
    .line 352
    sget-object v1, Lcom/dropbox/core/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    monitor-exit v1

    return-object v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 232
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/android/AuthActivity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 257
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'appKey\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/core/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/android/AuthActivity;->setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method static setAuthParams(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->sAppKey:Ljava/lang/String;

    .line 212
    sput-object p1, Lcom/dropbox/core/android/AuthActivity;->sDesiredUid:Ljava/lang/String;

    .line 213
    if-eqz p2, :cond_0

    :goto_0
    sput-object p2, Lcom/dropbox/core/android/AuthActivity;->sAlreadyAuthedUids:[Ljava/lang/String;

    .line 214
    sput-object p3, Lcom/dropbox/core/android/AuthActivity;->sSessionId:Ljava/lang/String;

    .line 215
    if-eqz p4, :cond_1

    :goto_1
    sput-object p4, Lcom/dropbox/core/android/AuthActivity;->sWebHost:Ljava/lang/String;

    .line 216
    sput-object p5, Lcom/dropbox/core/android/AuthActivity;->sApiType:Ljava/lang/String;

    .line 217
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    new-array p2, v0, [Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_1
    const-string/jumbo p4, "www.dropbox.com"

    goto :goto_1
.end method

.method public static setSecurityProvider(Lcom/dropbox/core/android/AuthActivity$SecurityProvider;)V
    .locals 2

    .prologue
    .line 346
    sget-object v1, Lcom/dropbox/core/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    sput-object p0, Lcom/dropbox/core/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/core/android/AuthActivity$SecurityProvider;

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startWebAuth(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 543
    const-string/jumbo v1, "1/connect"

    .line 544
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 545
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    aget-object v0, v0, v5

    .line 552
    :goto_0
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "k"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "n"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v0, 0x4

    const-string/jumbo v4, "api"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lcom/dropbox/core/android/AuthActivity;->mApiType:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v4, "state"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    aput-object p1, v3, v0

    .line 558
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/core/android/AuthActivity;->mWebHost:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3}, Lcom/dropbox/core/DbxRequestUtil;->buildUrlWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 561
    invoke-virtual {p0, v1}, Lcom/dropbox/core/android/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 562
    return-void

    .line 550
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 367
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sAppKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    .line 368
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sWebHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mWebHost:Ljava/lang/String;

    .line 369
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sApiType:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mApiType:Ljava/lang/String;

    .line 370
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sDesiredUid:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mDesiredUid:Ljava/lang/String;

    .line 371
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sAlreadyAuthedUids:[Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    .line 372
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->sSessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mSessionId:Ljava/lang/String;

    .line 374
    if-nez p1, :cond_0

    .line 375
    sput-object v1, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 376
    iput-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    .line 381
    :goto_0
    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcom/dropbox/core/android/AuthActivity;->setTheme(I)V

    .line 383
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 384
    return-void

    .line 378
    :cond_0
    const-string/jumbo v0, "SIS_KEY_AUTH_STATE_NONCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 481
    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 482
    invoke-direct {p0, v0}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    .line 533
    :goto_0
    return-void

    .line 488
    :cond_0
    const-string/jumbo v1, "ACCESS_TOKEN"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    const-string/jumbo v1, "ACCESS_TOKEN"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 491
    const-string/jumbo v1, "ACCESS_SECRET"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    const-string/jumbo v1, "UID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    const-string/jumbo v1, "AUTH_STATE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    :goto_1
    if-eqz v4, :cond_3

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    const-string/jumbo v5, ""

    .line 512
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_3

    const-string/jumbo v5, ""

    .line 513
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    const-string/jumbo v5, ""

    .line 514
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 517
    iget-object v5, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 518
    invoke-direct {p0, v0}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 497
    if-eqz v4, :cond_4

    .line 498
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 499
    const-string/jumbo v2, "/connect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 501
    :try_start_0
    const-string/jumbo v1, "oauth_token"

    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 502
    :try_start_1
    const-string/jumbo v1, "oauth_token_secret"

    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 503
    :try_start_2
    const-string/jumbo v1, "uid"

    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 504
    :try_start_3
    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v6

    .line 505
    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_2
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 523
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 524
    const-string/jumbo v1, "ACCESS_TOKEN"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string/jumbo v1, "ACCESS_SECRET"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string/jumbo v1, "UID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    :cond_3
    invoke-direct {p0, v0}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 505
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_2

    :cond_4
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 407
    invoke-virtual {p0}, Lcom/dropbox/core/android/AuthActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 417
    :cond_1
    invoke-direct {p0, v1}, Lcom/dropbox/core/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    goto :goto_0

    .line 421
    :cond_2
    sput-object v1, Lcom/dropbox/core/android/AuthActivity;->result:Landroid/content/Intent;

    .line 423
    iget-boolean v0, p0, Lcom/dropbox/core/android/AuthActivity;->mActivityDispatchHandlerPosted:Z

    if-eqz v0, :cond_3

    .line 424
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume called again before Handler run"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :cond_3
    invoke-direct {p0}, Lcom/dropbox/core/android/AuthActivity;->createStateNonce()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->getOfficialAuthIntent()Landroid/content/Intent;

    move-result-object v1

    .line 435
    const-string/jumbo v2, "CONSUMER_KEY"

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string/jumbo v2, "CONSUMER_SIG"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string/jumbo v2, "DESIRED_UID"

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->mDesiredUid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string/jumbo v2, "ALREADY_AUTHED_UIDS"

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->mAlreadyAuthedUids:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string/jumbo v2, "SESSION_ID"

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string/jumbo v2, "CALLING_PACKAGE"

    invoke-virtual {p0}, Lcom/dropbox/core/android/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string/jumbo v2, "CALLING_CLASS"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string/jumbo v2, "AUTH_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/dropbox/core/android/AuthActivity$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/dropbox/core/android/AuthActivity$3;-><init>(Lcom/dropbox/core/android/AuthActivity;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/android/AuthActivity;->mActivityDispatchHandlerPosted:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 389
    const-string/jumbo v0, "SIS_KEY_AUTH_STATE_NONCE"

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity;->mAuthStateNonce:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method
