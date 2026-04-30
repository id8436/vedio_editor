.class public Lcom/adobe/creativesdk/foundation/internal/common/AdobeCSDKFoundationInternal;
.super Ljava/lang/Object;
.source "AdobeCSDKFoundationInternal.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static initializeCSDKFoundation(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->initializeCSDKFoundation(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setEnvironment(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V

    .line 38
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->startContinuableEventHandler()V

    .line 39
    return-void
.end method
