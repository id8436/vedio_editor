.class public Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;
.super Ljava/lang/Object;
.source "AdobeAuthSessionHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private _authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

.field _continuableClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;

.field _handler:Landroid/os/Handler;

.field _loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

.field _logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

.field _statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

.field private _storedData:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    .line 162
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    .line 163
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_storedData:Landroid/content/Intent;

    .line 164
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    .line 165
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    .line 166
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_continuableClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;

    .line 167
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    .line 179
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    .line 181
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    .line 216
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    .line 251
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$3;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$3;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_continuableClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;

    .line 265
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;)V

    .line 275
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    .line 276
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getCurrentAuthSessionLauncher()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getRequestCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 383
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_storedData:Landroid/content/Intent;

    .line 385
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V

    .line 342
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V

    .line 343
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_continuableClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterContinuableClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;)V

    .line 344
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 345
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 294
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->registerLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V

    .line 295
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->registerLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V

    .line 296
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_continuableClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->registerContinuableClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;)V

    .line 298
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->hasValidAccessToken()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->canRefreshAccessToken()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->hasValidAccessToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Has got valid access token(inside AdobeAuthSessionHelper)"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;->onSuccess(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;)V

    .line 334
    :cond_1
    :goto_1
    return-void

    .line 303
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Has refresh access token(inside AdobeAuthSessionHelper)"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getContinuableJumpUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getContinuableError()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_1

    .line 312
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_continuableClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;->detectedContinueableAuthenticationEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_1

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_storedData:Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 317
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_storedData:Landroid/content/Intent;

    const-string/jumbo v1, "AdobeAuthErrorCode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_storedData:Landroid/content/Intent;

    .line 319
    if-eq v0, v2, :cond_5

    .line 321
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->fromInt(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    .line 322
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_1

    .line 326
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_authManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;->onSuccess(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;)V

    goto :goto_1

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;->onSuccess()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method
