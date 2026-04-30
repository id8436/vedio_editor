.class Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdobeAuthSignInActivity.java"


# instance fields
.field private _authClientResultHandler:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

.field accessDenied:Ljava/lang/String;

.field authorizationCode:Ljava/lang/String;

.field deviceToken:Ljava/lang/String;

.field error:Ljava/lang/String;

.field invalidScope:Ljava/lang/String;

.field private showPreUDPError:Z

.field signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 87
    const-string/jumbo v0, "code"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->authorizationCode:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "device_token"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->deviceToken:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "error"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->error:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "access_denied#"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->accessDenied:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "invalid_scope"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->invalidScope:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->showPreUDPError:Z

    .line 97
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    .line 98
    return-void
.end method

.method private doesMatchWithRedirectURI(Ljava/lang/String;)Z
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 162
    .line 164
    const-string/jumbo v4, "www.adobe.com"

    .line 165
    const-string/jumbo v5, "adobe.com"

    .line 166
    const-string/jumbo v6, "fake.domain.adobe.com"

    .line 167
    const-string/jumbo v7, "complete"

    .line 169
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getRedirectURI()Ljava/lang/String;

    move-result-object v2

    .line 173
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 175
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 177
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 179
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v11

    .line 181
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v3, v1

    .line 183
    :goto_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->hasPrivateCloudScope()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isAdobeApp()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isFirstPartyApp()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    .line 186
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 188
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->showPreUDPError:Z

    .line 206
    :cond_1
    :goto_2
    return v0

    :cond_2
    move v3, v0

    .line 181
    goto :goto_0

    :cond_3
    move v2, v0

    .line 184
    goto :goto_1

    .line 191
    :cond_4
    if-eqz v11, :cond_1

    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    .line 192
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 193
    :cond_5
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    move v0, v1

    .line 195
    goto :goto_2

    .line 200
    :catch_0
    move-exception v1

    .line 202
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "doesMatchWithRedirectURI failure"

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleOverrideUrlCommon(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 210
    .line 211
    new-instance v1, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v1, p1}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    move-result-object v4

    move v1, v0

    move v2, v0

    .line 214
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 215
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    .line 217
    iget-object v5, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->authorizationCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 218
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->doesMatchWithRedirectURI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->_authClientResultHandler:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    iget-object v0, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->handleAuthCodeReceived(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->showSpinnerAsTokenReceived()V

    move v2, v3

    .line 214
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 224
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->showPreUDPError:Z

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    sget v6, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_id_pre_UDP_client_error:I

    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->handleError(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->handleError()V

    goto :goto_1

    .line 232
    :cond_3
    iget-object v5, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->deviceToken:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 233
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->doesMatchWithRedirectURI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 235
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->_authClientResultHandler:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    iget-object v0, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->handleDeviceTokenReceived(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->showSpinnerAsTokenReceived()V

    move v2, v3

    .line 237
    goto :goto_1

    .line 240
    :cond_4
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->showPreUDPError:Z

    if-eqz v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    sget v6, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_id_pre_UDP_client_error:I

    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->handleError(Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->handleError()V

    goto :goto_1

    .line 248
    :cond_6
    iget-object v5, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->error:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->accessDenied:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 249
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->_authClientResultHandler:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    new-instance v5, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v6, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v5, v6}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->handleResultFromIMS(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_1

    .line 250
    :cond_7
    iget-object v5, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->error:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->invalidScope:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->handleError()V

    goto/16 :goto_1

    .line 256
    :cond_8
    return v2
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Authentication"

    const-string/jumbo v2, "onPageFinished"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->pageLoaded()V

    .line 104
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 149
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Authentication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceivedError:Webpage Error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with webpage error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "net::ERR_CACHE_MISS"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    .line 154
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->_authClientResultHandler:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->handleResultFromIMS(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->handleError()V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    iput-boolean v7, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->_proxyRequired:Z

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/auth/R$layout;->adobe_csdk_ux_auth_dialog_proxy_credentials:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 112
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_proxy_userName:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 113
    sget v1, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_proxy_passWord:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 114
    sget v2, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_proxy_warningMsg:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 116
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_warning_msg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    aput-object p4, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/adobe/creativesdk/foundation/auth/R$style;->AdobeCSDKProxyAlertDialog:I

    invoke-direct {v2, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 119
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 121
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->signInView:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/adobe/creativesdk/foundation/auth/R$layout;->adobe_csdk_ux_auth_dialog_proxy_title:I

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 122
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 125
    sget v3, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_cancelLogIn:I

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$1;

    invoke-direct {v5, p0, v4, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;Landroid/app/AlertDialog;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    sget v3, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_logIn:I

    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;

    invoke-direct {v4, p0, p2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;Landroid/webkit/HttpAuthHandler;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 144
    return-void
.end method

.method public setAuthResultHandler(Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->_authClientResultHandler:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    .line 292
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 261
    .line 266
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthWebViewClient;->handleOverrideUrlCommon(Ljava/lang/String;)Z

    move-result v0

    .line 267
    return v0
.end method
