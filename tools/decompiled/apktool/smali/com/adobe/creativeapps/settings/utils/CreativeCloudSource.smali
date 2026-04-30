.class public Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;
.super Ljava/lang/Object;
.source "CreativeCloudSource.java"


# static fields
.field private static instance:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;


# instance fields
.field private mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

.field private mInitialized:Z

.field private mLoginCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;

.field private mLogoutCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

.field private mStatusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->instance:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mInitialized:Z

    .line 27
    iput-object v2, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    .line 29
    iput-object v2, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mLoginCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;

    .line 30
    iput-object v2, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    .line 31
    new-instance v0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$1;-><init>(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;)V

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mStatusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    .line 59
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mStatusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;)V

    iput-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    .line 60
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mAuthSessionHelper:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mInitialized:Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mLoginCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mLoginCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLoginCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;)Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    return-object p1
.end method

.method public static getInstance()Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->instance:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    invoke-direct {v0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;-><init>()V

    sput-object v0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->instance:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    .line 73
    :cond_0
    sget-object v0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->instance:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    return-object v0
.end method

.method private initializationCheck()Z
    .locals 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mInitialized:Z

    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v0, "CreativeCloudSource"

    const-string/jumbo v1, "CCSource is not initialized yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mInitialized:Z

    return v0
.end method


# virtual methods
.method public final getCCStorageInfo(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudStorageInfoCallback;)V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 98
    new-instance v1, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$2;-><init>(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudStorageInfoCallback;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getQuotaInformationOnCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;Landroid/os/Handler;)V

    .line 112
    return-void
.end method

.method public final isLoggedIn()Z
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->initializationCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->isAuthenticated()Z

    move-result v0

    goto :goto_0
.end method

.method public final logout(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->initializationCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    .line 82
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->logout()V

    .line 84
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    invoke-interface {v0, v1}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;->didLogout(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 85
    iput-object v1, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;->mLogoutCallback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudLogoutCallback;

    goto :goto_0
.end method
