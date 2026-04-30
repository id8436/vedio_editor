.class Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;
.super Ljava/lang/Object;
.source "AdobeAuthService.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;


# instance fields
.field private final callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;

    .line 55
    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LoginClient;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;

    invoke-direct {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLoginCallback;->onSuccess(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthServiceUserProfile;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
