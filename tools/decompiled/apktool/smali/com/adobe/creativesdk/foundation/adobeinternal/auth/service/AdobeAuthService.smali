.class public Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;
.super Landroid/app/Service;
.source "AdobeAuthService.java"


# instance fields
.field private authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

.field private loginClient:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

.field private logoutClient:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;

.field private final mBinder:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 179
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->mBinder:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->loginClient:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->loginClient:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->logoutClient:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;

    return-object v0
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->logoutClient:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->mBinder:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    .line 35
    return-void
.end method
