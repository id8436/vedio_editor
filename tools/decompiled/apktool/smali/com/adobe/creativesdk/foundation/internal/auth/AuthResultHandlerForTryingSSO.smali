.class Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;
.super Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;
.source "AdobeAuthSignInActivity.java"


# static fields
.field private static final T:Ljava/lang/String;


# instance fields
.field private _forceReInitiateSignInDueToDeviceTokenImsFailure:Z

.field private _gotDeviceTokenFromSharedAccount:Z

.field private _ssoData:Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 431
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 436
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;-><init>()V

    .line 434
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_forceReInitiateSignInDueToDeviceTokenImsFailure:Z

    .line 437
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_gotDeviceTokenFromSharedAccount:Z

    .line 438
    return-void
.end method

.method private performCommonTokenHandling(Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_forceReInitiateSignInDueToDeviceTokenImsFailure:Z

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceToken:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->handleDeviceTokenReceived(Ljava/lang/String;)V

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->mAuthActivity:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->noSharedAccountContinueNormalSignIn()V

    goto :goto_0
.end method


# virtual methods
.method protected handleImsAccountResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 478
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->T:Ljava/lang/String;

    const-string/jumbo v2, "handle IMS result"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_gotDeviceTokenFromSharedAccount:Z

    if-nez v0, :cond_0

    .line 481
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 482
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;-><init>()V

    .line 483
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->adobeId:Ljava/lang/String;

    .line 484
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceToken:Ljava/lang/String;

    .line 485
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceTokenExpirationTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceExpirationTime:Ljava/util/Date;

    .line 486
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceId:Ljava/lang/String;

    .line 487
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->T:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "adding account explicity : id:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->adobeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->addNewAccountToAccountManager(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;)V

    .line 490
    :cond_0
    return-void
.end method

.method protected handleResultFromIMS(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 450
    .line 451
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_ssoData:Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_ssoData:Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_OFFLINE:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-eq v2, v3, :cond_0

    .line 454
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->mAuthActivity:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    if-nez v2, :cond_1

    .line 455
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->isLastActivityClosedDuetoManualClose()Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_forceReInitiateSignInDueToDeviceTokenImsFailure:Z

    .line 458
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_ssoData:Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->setQueuedResultData(Ljava/lang/Object;)V

    .line 473
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 468
    :cond_1
    if-eqz v0, :cond_2

    .line 469
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_gotDeviceTokenFromSharedAccount:Z

    .line 470
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->mAuthActivity:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->noSharedAccountContinueNormalSignIn()V

    goto :goto_0

    .line 472
    :cond_2
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;->handleResultFromIMS(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0
.end method

.method public handleSharedTokenRequestResult(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;)V
    .locals 3

    .prologue
    .line 494
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_gotDeviceTokenFromSharedAccount:Z

    .line 498
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;-><init>()V

    .line 499
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    .line 500
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->_ssoData:Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;

    .line 502
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->mAuthActivity:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    if-nez v1, :cond_1

    .line 504
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->setQueuedResultData(Ljava/lang/Object;)V

    .line 513
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 509
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    .line 510
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;->tokenDetails:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceID(Ljava/lang/String;)V

    .line 512
    :cond_2
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->performCommonTokenHandling(Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;)V

    goto :goto_0
.end method

.method protected performProcessQueuedResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 517
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;

    .line 518
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->performCommonTokenHandling(Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;)V

    .line 519
    return-void
.end method

.method public setAccountManagerRequestCancelled()V
    .locals 2

    .prologue
    .line 522
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;-><init>()V

    .line 523
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;->isRequesUserCancelled:Z

    .line 525
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->mAuthActivity:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    if-nez v1, :cond_0

    .line 526
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->setQueuedResultData(Ljava/lang/Object;)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;->performCommonTokenHandling(Lcom/adobe/creativesdk/foundation/internal/auth/TrySSOQueuedData;)V

    goto :goto_0
.end method
