.class public final Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;
.super Ljava/lang/Object;
.source "AdobeUXAuthManager.java"


# static fields
.field private static sharedInstance:Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;


# instance fields
.field private authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->sharedInstance:Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    .line 55
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    .line 56
    return-void
.end method

.method public static getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->sharedInstance:Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->sharedInstance:Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->sharedInstance:Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    return-object v0
.end method


# virtual methods
.method public getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public login(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->login(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 84
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->logout()V

    .line 92
    return-void
.end method

.method public openContinuableAuthenticationEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->authManagerRestricted:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->openContinuableAuthenticationEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 124
    return-void
.end method
