.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;
.super Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;
.source "AdobeAuthSignInActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final T:Ljava/lang/String;

.field public static final UXAUTHMANAGER_TRY_ADOBEID_SHAREDTOKEN:Ljava/lang/String; = "uxauth_trysharedtoken"

.field private static _activityClosedDueToManualClose:Z


# instance fields
.field private _signInFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

.field private postAuthWorkCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

.field signInFragmentTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 536
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->T:Ljava/lang/String;

    .line 537
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->_activityClosedDueToManualClose:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;-><init>()V

    .line 540
    const-string/jumbo v0, "SignInfragment"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->signInFragmentTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->postAuthWorkCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 534
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->_activityClosedDueToManualClose:Z

    return p0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->prepareAndSendResult(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    return-void
.end method

.method public static addNewAccountToAccountManager(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;)V
    .locals 4

    .prologue
    .line 563
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->adobeId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 565
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 566
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->addNewAccountDirectlyToAccountManager(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;ZLcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->T:Ljava/lang/String;

    const-string/jumbo v2, "Add account NUll - check this"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkAccountPermission()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 761
    const-string/jumbo v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v2

    invoke-static {p0, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 767
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->launchAuthSignInFragment()V

    goto :goto_0
.end method

.method private createResultHandler()Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;
    .locals 1

    .prologue
    .line 770
    .line 771
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->shouldTrySharedToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForTryingSSO;-><init>()V

    .line 786
    :goto_0
    return-object v0

    .line 774
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandlerForSingleClient;-><init>()V

    goto :goto_0
.end method

.method private doPostAuthWork(Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->postAuthWorkCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    if-eqz v0, :cond_0

    .line 601
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 623
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 631
    :goto_0
    return-void

    .line 626
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->setResult(ILandroid/content/Intent;)V

    .line 627
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->sendResultBack(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 628
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->finish()V

    goto :goto_0
.end method

.method public static isLastActivityClosedDuetoManualClose()Z
    .locals 1

    .prologue
    .line 546
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->_activityClosedDueToManualClose:Z

    return v0
.end method

.method private launchAuthSignInFragment()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 700
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 702
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->signInFragmentTag:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    .line 704
    if-nez v0, :cond_2

    .line 705
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;-><init>()V

    .line 706
    iput-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->_signInFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    .line 707
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->createResultHandler()Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    move-result-object v0

    .line 708
    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->setAuthSingInActivity(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)V

    .line 709
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->setSignInResultHandler(Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;)V

    .line 712
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 714
    sget v3, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_creativesdk_foundation_auth_fragment_container:I

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->signInFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 719
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->SIGN_IN_UI_TYPE:Ljava/lang/String;

    sget v5, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->AUTH_SESSION_TYPE_SIGN_IN:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 720
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->setUIType(I)V

    .line 721
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->shouldTrySharedToken()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->AUTH_SESSION_TYPE_SIGN_IN:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->trySignInViaSharedAdobeIdAuthToken(Z)V

    .line 749
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 721
    goto :goto_0

    .line 725
    :cond_2
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->_signInFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    .line 726
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->getSignInResultHandler()Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    move-result-object v3

    .line 727
    if-nez v3, :cond_4

    .line 732
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->createResultHandler()Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    move-result-object v3

    .line 733
    invoke-virtual {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->setAuthSingInActivity(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)V

    .line 734
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->setSignInResultHandler(Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;)V

    .line 736
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->SIGN_IN_UI_TYPE:Ljava/lang/String;

    sget v5, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->AUTH_SESSION_TYPE_SIGN_IN:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 737
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->setUIType(I)V

    .line 738
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->shouldTrySharedToken()Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->AUTH_SESSION_TYPE_SIGN_IN:I

    if-ne v3, v4, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->trySignInViaSharedAdobeIdAuthToken(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 740
    :cond_4
    invoke-virtual {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->setAuthSingInActivity(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)V

    .line 743
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->hasAnyQueuedResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->processQueuedResult()V

    goto :goto_1
.end method

.method private prepareAndSendResult(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 577
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 578
    if-eqz p1, :cond_1

    .line 579
    const-string/jumbo v1, "AdobeAuthErrorCode"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-ne v1, v2, :cond_0

    .line 581
    invoke-virtual {p0, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->setResult(ILandroid/content/Intent;)V

    .line 585
    :goto_0
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->sendResultBack(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 586
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->finish()V

    .line 593
    :goto_1
    return-void

    .line 583
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 589
    :cond_1
    const-string/jumbo v1, "AdobeAuthErrorCode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    invoke-direct {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->doPostAuthWork(Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_1
.end method

.method static sendResultBack(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 3

    .prologue
    .line 550
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getCurrentSignInClient()Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_0

    .line 552
    if-eqz p0, :cond_1

    .line 553
    invoke-interface {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    .line 556
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shouldTrySharedToken()Z
    .locals 3

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uxauth_trysharedtoken"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method handleResult(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->prepareAndSendResult(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 574
    return-void
.end method

.method public noSharedAccountContinueNormalSignIn()V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->_signInFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->trySignInViaSharedAdobeIdAuthToken(Z)V

    .line 837
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->_signInFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;)V

    .line 838
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x1020002

    const/4 v3, 0x0

    .line 637
    sput-boolean v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->_activityClosedDueToManualClose:Z

    .line 638
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInstanceCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->finish()V

    .line 642
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 644
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getPostLoginWorkCallback()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->postAuthWorkCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    .line 646
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 648
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 650
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$layout;->adobe_csdk_ux_auth_activity_container_view:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->setContentView(I)V

    .line 652
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 653
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 656
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_actionbar_toolbar:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 663
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/auth/R$dimen;->abc_action_bar_content_inset_material:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 664
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 665
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 668
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 678
    :cond_1
    invoke-virtual {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_auth_sign_in_close:I

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->getTextView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 694
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->launchAuthSignInFragment()V

    .line 696
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 827
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onDestroy()V

    .line 828
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->_signInFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->_signInFragment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->getSignInResultHandler()Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AuthResultHandler;->setAuthSingInActivity(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;)V

    .line 833
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 808
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 809
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->signInFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;

    .line 811
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->shouldHandleBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity$AdobeAuthSignInFragment;->handleBackPressed()V

    .line 813
    const/4 v0, 0x1

    .line 818
    :goto_0
    return v0

    .line 815
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->prepareAndSendResult(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 818
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 796
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 797
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 798
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->prepareAndSendResult(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 799
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->onBackPressed()V

    .line 801
    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;->launchAuthSignInFragment()V

    .line 757
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 791
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 792
    return-void
.end method
