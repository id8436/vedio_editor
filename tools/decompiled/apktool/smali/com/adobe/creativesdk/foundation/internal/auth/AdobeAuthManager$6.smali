.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$ICSDKAdobeIdAuthTokenResultHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

.field final synthetic val$authSSOInitCallback:Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;->val$authSSOInitCallback:Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAuthenticatorTokenResult(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;)V
    .locals 5

    .prologue
    .line 1146
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    if-nez v0, :cond_1

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;->val$authSSOInitCallback:Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;->complete()V

    .line 1164
    :goto_0
    return-void

    .line 1151
    :cond_1
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->isSharedDeviceTokenExpired(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->removeCurrentSharedAdobeIDFromAccountManager(Landroid/content/Context;)V

    .line 1154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;->val$authSSOInitCallback:Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;->complete()V

    goto :goto_0

    .line 1158
    :cond_2
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceToken:Ljava/lang/String;

    .line 1159
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->adobeId:Ljava/lang/String;

    .line 1160
    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceExpirationTime:Ljava/util/Date;

    .line 1161
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$800(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 1162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;->val$authSSOInitCallback:Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;->complete()V

    goto :goto_0
.end method
