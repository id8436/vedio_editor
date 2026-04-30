.class Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity$1;
.super Ljava/lang/Object;
.source "AdobeTOUHandlerActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$IAdobeAuthStatusCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;->AdobeAuthContinuableEvent:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionHelper$AdobeAuthStatus;

    if-ne v0, p1, :cond_1

    .line 18
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UPDATED_TOU:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-ne v0, v1, :cond_1

    .line 21
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/base/AdobeTOUHandlerActivity;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withActivity(Landroid/app/Activity;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->withContinuableErrorCode(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher$Builder;->build()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->openContinuableAuthenticationEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 25
    :cond_1
    return-void
.end method
