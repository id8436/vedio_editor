.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;
.super Ljava/lang/Object;
.source "AdobeAuthIdentityManagementService.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

.field final synthetic val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

.field final synthetic val$signoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;)V
    .locals 0

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;->val$signoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 3

    .prologue
    .line 1191
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 1194
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;->val$signoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;->onSuccess()V

    .line 1195
    return-void

    .line 1191
    :cond_0
    const-string/jumbo v0, "Network Error"

    goto :goto_0
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 1185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$9;->val$signoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;->onSuccess()V

    .line 1186
    return-void
.end method
