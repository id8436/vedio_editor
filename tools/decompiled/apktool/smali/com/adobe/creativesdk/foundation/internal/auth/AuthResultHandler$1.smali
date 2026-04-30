.class Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler$1;
.super Ljava/lang/Object;
.source "AdobeAuthSignInActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->handleResultFromIMS(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 368
    return-void
.end method

.method public onInfoNeeded(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSInfoNeeded;)V
    .locals 2

    .prologue
    .line 372
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    .line 373
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->handleResultFromIMS(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 374
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 353
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSocialProviderToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSocialProvider()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setSocialProviderToken(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    invoke-static {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setIDPFlow(Ljava/lang/String;)V

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->handleImsAccountResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->handleResultFromIMS(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 363
    return-void

    .line 360
    :cond_0
    const-string/jumbo v1, "ims"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setIDPFlow(Ljava/lang/String;)V

    goto :goto_0
.end method
