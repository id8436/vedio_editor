.class Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;
.super Ljava/lang/Object;
.source "AdobeAuthSessionHelper.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1$2;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLoginAttemptFailed:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    invoke-interface {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;->call(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1$1;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthLoggedIn:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;->call(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0
.end method
