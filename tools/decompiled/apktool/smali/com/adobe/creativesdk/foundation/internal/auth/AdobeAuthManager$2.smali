.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

.field final synthetic val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

.field final synthetic val$sessionLauncher:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;

.field final synthetic val$socialProvider:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$sessionLauncher:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$socialProvider:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    .prologue
    .line 543
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 544
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 516
    if-eqz p1, :cond_1

    .line 517
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    .line 518
    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_SOCIAL_LOGIN_RECOVERABLE_USER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-ne v0, v1, :cond_0

    .line 520
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    sget v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->AUTH_SESSION_SOCIAL_TYPE_SIGN_IN:I

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$400(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;I)V

    .line 536
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackErrorCode(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 524
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v0, v3, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$500(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;ZLcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackErrorCode(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    const-string/jumbo v1, "error_description"

    const-string/jumbo v2, "Invalid Server Response"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/util/HashMap;)V

    .line 534
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v0, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$500(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;ZLcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0
.end method

.method public onInfoNeeded(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSInfoNeeded;)V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$sessionLauncher:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;->getLauncherContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$sessionLauncher:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;->getLauncherActivity()Landroid/content/Context;

    move-result-object v0

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$socialProvider:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setIDPFlow(Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->isAccountManagerHasSharedAdobeIdAccount(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$200(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackErrorCode(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 512
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$300(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Z)V

    .line 513
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;->val$sessionLauncher:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;->getLauncherContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method
