.class Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;
.source "AdobeAuthService.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserProfile()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;)V

    return-object v0
.end method

.method public isUserAuthenticated()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public login(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V
    .locals 5

    .prologue
    .line 236
    iget v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->requestCode:I

    .line 237
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    .line 239
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withContext(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withRequestCode(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->build()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    move-result-object v1

    .line 244
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-direct {v2, v3, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$102(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->registerLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V

    .line 254
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->login(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 255
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logout(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;)V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-direct {v1, v2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;)V

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$202(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;

    .line 274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->registerLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V

    .line 275
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->logout()V

    .line 277
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public openContinuationAuthEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V
    .locals 5

    .prologue
    .line 288
    iget v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->requestCode:I

    .line 289
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    .line 291
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withContext(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withRequestCode(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withContinuableErrorCode(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->build()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    move-result-object v1

    .line 296
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-direct {v2, v3, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$102(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    .line 305
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->registerLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V

    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->openContinuableAuthenticationEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 307
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public signUp(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V
    .locals 5

    .prologue
    .line 208
    iget v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthLoginParams;->requestCode:I

    .line 209
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    .line 211
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withContext(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withRequestCode(I)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->build()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    move-result-object v1

    .line 216
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-direct {v2, v3, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$102(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->registerLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V

    .line 226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->promptForSignUp(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 227
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
