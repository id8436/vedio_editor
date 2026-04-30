.class Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;
.super Ljava/lang/Object;
.source "AdobeAuthService.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;


# instance fields
.field private final callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;

    .line 123
    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->unregisterLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/AdobeAuthService$LogoutClient;->callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/service/IAdobeAuthLogoutCallback;->onSuccess()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
