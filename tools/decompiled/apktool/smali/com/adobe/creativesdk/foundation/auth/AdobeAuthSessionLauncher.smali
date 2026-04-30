.class public Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;
.super Ljava/lang/Object;
.source "AdobeAuthSessionLauncher.java"


# instance fields
.field private continuableErrorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

.field private defaultIntentFlags:I

.field private launcherActivity:Landroid/app/Activity;

.field private launcherContext:Landroid/content/Context;

.field private postLoginWorkCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

.field private redirectURI:Ljava/lang/String;

.field private requestCode:I

.field private scopesList:[Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->launcherActivity:Landroid/app/Activity;

    .line 24
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->launcherContext:Landroid/content/Context;

    .line 25
    const/16 v0, 0x7d2

    iput v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->requestCode:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->defaultIntentFlags:I

    .line 27
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->scopesList:[Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->continuableErrorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->defaultIntentFlags:I

    return p1
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->requestCode:I

    return p1
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->launcherActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$302(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->launcherContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$402(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->scopesList:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->continuableErrorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    return-object p1
.end method

.method static synthetic access$602(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->redirectURI:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->postLoginWorkCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    return-object p1
.end method


# virtual methods
.method public getContinuableErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->continuableErrorCode:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    return-object v0
.end method

.method public getIntentFlags()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->defaultIntentFlags:I

    return v0
.end method

.method public getLauncherActivity()Landroid/content/Context;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->launcherActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getLauncherContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->launcherContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPostLoginWorkCallback()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->postLoginWorkCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    return-object v0
.end method

.method public getRedirectURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->redirectURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->requestCode:I

    return v0
.end method

.method public getScopesList()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->scopesList:[Ljava/lang/String;

    return-object v0
.end method
