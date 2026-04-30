.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;
.super Ljava/lang/Object;
.source "AdobeAuthSignInActivity.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;)V
    .locals 0

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;Z)V
    .locals 0

    .prologue
    .line 1207
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;->handleAccountManagerTokenResult(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;Z)V

    return-void
.end method

.method private handleAccountManagerTokenResult(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;Z)V
    .locals 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;)Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;

    .line 1221
    iget-boolean v1, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->isRequestCancelled:Z

    if-eqz v1, :cond_0

    .line 1222
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->setAccountManagerRequestCancelled()V

    .line 1235
    :goto_0
    return-void

    .line 1225
    :cond_0
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 1227
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->isSharedDeviceTokenExpired(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1229
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;->removeCurrentSharedAccount()V

    .line 1230
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    .line 1234
    :cond_1
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$SharedAccountRequestResultData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->handleSharedTokenRequestResult(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;)V

    goto :goto_0
.end method

.method private removeCurrentSharedAccount()V
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->removeCurrentSharedAdobeIDFromAccountManager(Landroid/content/Context;)V

    .line 1239
    return-void
.end method


# virtual methods
.method getAuthenticatorOptions()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1210
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSharedAdobeIdAccount()Z
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->isAccountManagerHasSharedAdobeIdAccount(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public tryGettingSharedTokenFromAccountManager()V
    .locals 4

    .prologue
    .line 1276
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;->getAuthenticatorOptions()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor$1;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment$SharedAdobeIdTokenAccessor;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getSharedAdobeIdTokenFromAccountManager(Landroid/app/Activity;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$ICSDKAdobeIdAuthTokenResultHandler;)V

    .line 1283
    return-void
.end method
