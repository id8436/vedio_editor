.class Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;
.super Ljava/lang/Object;
.source "AdobeAuthSessionHelper.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2$2;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLogoutAttemptFailed:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    invoke-interface {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;->call(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2$1;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$2;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLoggedOut:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;->call(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0
.end method
