.class Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;
.super Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;
.source "AdobeAuthSignInActivity.java"


# static fields
.field private static final T:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 398
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;->T:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAuthCodeReceived(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 407
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;->T:Ljava/lang/String;

    const-string/jumbo v2, "received Auth Code check"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;->createImsClientCommon()Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->signInWithAuthCode(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    .line 410
    return-void
.end method

.method public handleDeviceTokenReceived(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 414
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;->T:Ljava/lang/String;

    const-string/jumbo v2, "received Device Token check"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 416
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;->createImsClientCommon()Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->signInWithDeviceToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    .line 417
    return-void
.end method

.method protected performProcessQueuedResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method
