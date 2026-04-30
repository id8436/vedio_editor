.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

.field final synthetic val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

.field final synthetic val$interactionMode:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;

.field final synthetic val$sendExternal:Z


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;ZLcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    iput-boolean p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$sendExternal:Z

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$interactionMode:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    .prologue
    .line 1241
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 1242
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 3

    .prologue
    .line 1203
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-eq v0, v1, :cond_0

    .line 1204
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UPDATED_TOU:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-ne v0, v1, :cond_1

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$600(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 1220
    :goto_0
    return-void

    .line 1208
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-ne v0, v1, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "cancelled"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackErrorCode(Ljava/lang/String;)V

    .line 1215
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 1217
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$sendExternal:Z

    invoke-static {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$500(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;ZLcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackErrorCode(Ljava/lang/String;)V

    .line 1212
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Authentication"

    const-string/jumbo v2, "Login Error"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onInfoNeeded(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSInfoNeeded;)V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$interactionMode:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;->AdobeAuthInteractionInteractive:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;

    if-ne v0, v1, :cond_2

    .line 1224
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSInfoNeeded;->AdobeAuthIMSInfoNeededUsernameAndPassword:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSInfoNeeded;

    if-ne p1, v0, :cond_1

    .line 1226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getGrantType()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeDevice:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1227
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 1238
    :goto_0
    return-void

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    sget v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->AUTH_SESSION_TYPE_SIGN_IN:I

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$400(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;I)V

    goto :goto_0

    .line 1233
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_INTERACTION_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0

    .line 1236
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_INTERACTION_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1188
    const-string/jumbo v0, "Valid Authentication Token"

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAuthStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackErrorCode(Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 1192
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$sendExternal:Z

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    const-string/jumbo v1, "ims"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setIDPFlow(Ljava/lang/String;)V

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;->val$sendExternal:Z

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->access$300(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Z)V

    .line 1196
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Authentication"

    const-string/jumbo v2, "Successfully logged in"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    return-void
.end method
