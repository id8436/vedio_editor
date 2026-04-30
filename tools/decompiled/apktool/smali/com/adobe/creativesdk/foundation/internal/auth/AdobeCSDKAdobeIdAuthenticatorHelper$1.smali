.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$1;
.super Ljava/lang/Object;
.source "AdobeCSDKAdobeIdAuthenticatorHelper.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$ICSDKAdobeIdAuthTokenResultHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$1;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAuthenticatorTokenResult(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;)V
    .locals 3

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$1;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onError(Ljava/lang/Object;)V

    .line 387
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->requestError:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$1;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->requestError:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$1;->val$callback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
