.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeGetProvidersCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;

.field final synthetic val$provider:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;->val$provider:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;->onFailure(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 435
    return-void
.end method

.method public onInvalidClientId()V
    .locals 2

    .prologue
    .line 439
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    .line 440
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;->onFailure(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 441
    return-void
.end method

.method public onInvalidDeviceId()V
    .locals 2

    .prologue
    .line 445
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    .line 446
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;->onFailure(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 447
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;->val$provider:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isSocialLoginEnabled(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;->onSuccess(Z)V

    .line 430
    return-void
.end method
