.class Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$3;
.super Ljava/lang/Object;
.source "AdobeAuthSessionHelper.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$3;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detectedContinueableAuthenticationEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$3;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$3;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$3$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$3$1;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$3;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$3;->this$0:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper;->_statusCallback:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthContinuableEvent:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    invoke-interface {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;->call(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0
.end method
