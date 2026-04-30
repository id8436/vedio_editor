.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

.field final synthetic val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 2

    .prologue
    .line 838
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-ne v0, v1, :cond_0

    .line 839
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "cancelled"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackErrorCode(Ljava/lang/String;)V

    .line 840
    const-string/jumbo v0, "Signup Cancel"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackRegStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 851
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$500(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;ZLcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 853
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackErrorCode(Ljava/lang/String;)V

    .line 844
    const-string/jumbo v0, "Signup Failure"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackRegStep(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInfoNeeded(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSInfoNeeded;)V
    .locals 2

    .prologue
    .line 856
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 858
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 827
    const-string/jumbo v0, "Signup Success"

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackRegStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackErrorCode(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 831
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    const-string/jumbo v1, "ims"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setIDPFlow(Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$300(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Z)V

    .line 834
    return-void
.end method
