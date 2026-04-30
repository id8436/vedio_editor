.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;
.super Ljava/lang/Object;
.source "AdobeAuthIdentityManagementService.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthTokenCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

.field final synthetic val$callbackClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

.field final synthetic val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$callbackClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private retry()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceToken(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$callbackClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->signIn(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    .line 641
    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x190

    .line 645
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inside getAccessTokenWithDeviceToken(), authTokenHandler onError() callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 650
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->access$300(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lorg/json/JSONObject;

    move-result-object v0

    .line 652
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    if-eqz v0, :cond_1

    .line 654
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->access$400(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lorg/json/JSONObject;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    move-result-object v1

    .line 656
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    const-string/jumbo v3, "jump"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setContiuableEventJumpURL(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setContiuableEventErrorCode(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$callbackClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 668
    :goto_1
    return-void

    .line 647
    :cond_0
    const-string/jumbo v0, "Network Error"

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_3

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setContiuableEventJumpURL(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->retry()V

    goto :goto_1

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setContiuableEventJumpURL(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->access$500(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$callbackClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_1
.end method

.method public onInvalidClientId()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "Invalid Client Id"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 681
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$callbackClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_CLIENT_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 682
    return-void
.end method

.method public onInvalidClientSecret()V
    .locals 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "Invalid Client Secret"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 688
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$callbackClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_CLIENT_SECRET_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 689
    return-void
.end method

.method public onInvalidDeviceId()V
    .locals 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v2, "Invalid Device Id"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 674
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$callbackClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 675
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 5

    .prologue
    .line 580
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AuthIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inside getAccessTokenWithDeviceToken(), authTokenHandler onSuccess() callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setContiuableEventJumpURL(Ljava/lang/String;)V

    .line 590
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;-><init>(Ljava/lang/String;)V

    .line 591
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    const-string/jumbo v2, "access_token"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 594
    if-eqz v2, :cond_0

    .line 595
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->parseResponse(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeJSONObject;Z)V

    .line 596
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->access$600(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceToken(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->access$600(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->access$700(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->access$200(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 636
    :goto_1
    return-void

    .line 627
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->retry()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    :try_start_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$callbackClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lorg/json/JSONException;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    .line 631
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$3;->val$etsAuthEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 634
    throw v0
.end method
