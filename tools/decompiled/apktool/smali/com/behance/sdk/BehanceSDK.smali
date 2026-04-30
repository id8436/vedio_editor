.class public Lcom/behance/sdk/BehanceSDK;
.super Ljava/lang/Object;
.source "BehanceSDK.java"


# static fields
.field private static final INSTANCE:Lcom/behance/sdk/BehanceSDK;

.field private static final INVALID_PROJECT_DESCRIPTION_MESSAGE:Ljava/lang/String; = "Behance project description cannot be more than 65535characters in length"

.field private static final INVALID_PROJECT_TITLE_MESSAGE:Ljava/lang/String; = "Behance project title cannot be more than 55 characters in length"

.field private static behanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

.field private static behanceTheme:Z

.field private static fileProvideAuthority:Ljava/lang/String;


# instance fields
.field private credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

.field private environment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

.field private universalHeader:Lcom/behance/sdk/network/BehanceNameValuePair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/behance/sdk/BehanceSDK;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDK;-><init>()V

    sput-object v0, Lcom/behance/sdk/BehanceSDK;->INSTANCE:Lcom/behance/sdk/BehanceSDK;

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/behance/sdk/BehanceSDK;->behanceTheme:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static getInstance()Lcom/behance/sdk/BehanceSDK;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/behance/sdk/BehanceSDK;->INSTANCE:Lcom/behance/sdk/BehanceSDK;

    return-object v0
.end method

.method private initSocialAccountManager(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 473
    invoke-static {}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getInstance()Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    move-result-object v2

    .line 474
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->isFacebookShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getFacebookClientId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getFacebookClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 475
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v2, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getFacebookClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 479
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v2, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->removeAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z

    move-object v0, v1

    .line 483
    :cond_0
    if-nez v0, :cond_1

    .line 484
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;-><init>()V

    .line 485
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountType(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;)V

    .line 486
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getFacebookClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountClientId(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v2, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->addAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    .line 491
    :cond_1
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->isTwitterShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 492
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerSecretKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 494
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v2, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_3

    .line 496
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 499
    :cond_2
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v2, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->removeAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z

    move-object v0, v1

    .line 503
    :cond_3
    if-nez v0, :cond_4

    .line 504
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;-><init>()V

    .line 505
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountType(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;)V

    .line 506
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountClientId(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountClientSecret(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v2, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->addAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    .line 511
    :cond_4
    return-void
.end method

.method private initializeFileUtils(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 182
    :try_start_0
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKFileUtils;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/behance/sdk/exception/BehanceSDKFileUtilsInitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initializeForPublishProjectWorkflow(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 421
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v2

    .line 422
    invoke-static {}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getInstance()Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    move-result-object v3

    .line 423
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->isFacebookShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getFacebookClientId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getFacebookClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 424
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v3, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getFacebookClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 428
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v3, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->removeAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z

    move-object v0, v1

    .line 432
    :cond_0
    if-nez v0, :cond_1

    .line 433
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;-><init>()V

    .line 434
    sget-object v4, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountType(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;)V

    .line 435
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getFacebookClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountClientId(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v3, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->addAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    .line 442
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->isTwitterShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 443
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerSecretKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 445
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v3, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v5

    .line 449
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerSecretKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 450
    :cond_2
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v3, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->removeAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z

    move-object v0, v1

    .line 454
    :cond_3
    if-nez v0, :cond_4

    .line 455
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;-><init>()V

    .line 456
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountType(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;)V

    .line 457
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountClientId(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getTwitterConsumerSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountClientSecret(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v3, v0, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->addAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    .line 466
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-virtual {v2, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setUserCredentials(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V

    .line 467
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 468
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setPublishListener(Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)V

    .line 469
    :cond_5
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;->getNotificationHandlerActivityClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setNotificationHandlerActivityClass(Ljava/lang/Class;)V

    .line 470
    return-void

    .line 439
    :cond_6
    invoke-virtual {v2, v6}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setHideFacebookSharing(Z)V

    goto/16 :goto_0

    .line 463
    :cond_7
    invoke-virtual {v2, v6}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setHideTwitterSharing(Z)V

    goto :goto_1
.end method

.method private setBehanceSDKCustomResourcesOptions(Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;)V
    .locals 0

    .prologue
    .line 139
    sput-object p1, Lcom/behance/sdk/BehanceSDK;->behanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    .line 140
    return-void
.end method

.method private setBehanceTheme(Z)V
    .locals 0

    .prologue
    .line 126
    sput-boolean p1, Lcom/behance/sdk/BehanceSDK;->behanceTheme:Z

    .line 127
    return-void
.end method

.method private setEnvironment(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDK;->environment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    .line 675
    return-void
.end method

.method private validateIfUserIsEntitledForBehanceWorkflow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserAuthenticatedWithAdobe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;

    const-string/jumbo v1, "No logged in user found."

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserEntitledToUseBehance()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;

    const-string/jumbo v1, "User is not entitled to use Behance services"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    return-void
.end method


# virtual methods
.method public addImageToProject(Ljava/lang/String;Ljava/io/File;Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;

    const-string/jumbo v1, "Project ID cannot be null or empty."

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    :cond_1
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;

    const-string/jumbo v1, "Image file cannot be null or not existing file."

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_2
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;-><init>()V

    .line 391
    iget-object v1, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v1}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->setClientId(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->setProjectId(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->setImage(Ljava/io/File;)V

    .line 395
    new-instance v1, Lcom/behance/sdk/asynctasks/BehanceSDKAddProjectModuleAsyncTask;

    invoke-direct {v1, p3}, Lcom/behance/sdk/asynctasks/BehanceSDKAddProjectModuleAsyncTask;-><init>(Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;)V

    .line 396
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKAddProjectModuleAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 397
    return-void
.end method

.method public cancelActivePublishProject(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    new-instance v1, Lcom/behance/sdk/services/serviceconnections/BSDKCancelPublishProjectServiceConnection;

    invoke-direct {v1, p2}, Lcom/behance/sdk/services/serviceconnections/BSDKCancelPublishProjectServiceConnection;-><init>(Ljava/lang/String;)V

    .line 404
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 405
    return-void
.end method

.method public createProjectDraft(Lcom/behance/sdk/BehanceSDKProjectDraftOptions;Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 339
    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->getProjectTitle()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x37

    if-le v0, v1, :cond_0

    .line 342
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;

    const-string/jumbo v1, "Behance project title cannot be more than 55 characters in length"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->getProjectDescription()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 347
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;

    const-string/jumbo v1, "Behance project description cannot be more than 65535characters in length"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    if-nez p2, :cond_2

    .line 352
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;

    const-string/jumbo v1, "Instance of IBehanceSDKCreateProjectDraftListener cannot be null."

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_2
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKCreateProjectDraftAsyncTask;

    invoke-direct {v0, p2}, Lcom/behance/sdk/asynctasks/BehanceSDKCreateProjectDraftAsyncTask;-><init>(Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;)V

    .line 356
    new-instance v1, Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;

    invoke-direct {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;-><init>()V

    .line 357
    iget-object v2, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v2}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;->setClientId(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;->setBehanceSDKProjectDraftOptions(Lcom/behance/sdk/BehanceSDKProjectDraftOptions;)V

    .line 359
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKCreateProjectDraftAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 360
    return-void
.end method

.method public displayPublishProjectSuccessView(Landroid/content/Context;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->getProgressState()Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    if-ne v0, v1, :cond_0

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/ui/activities/BehanceSDKPublishResultsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    const-string/jumbo v1, "INTENT_STRING_EXTRA_WORK_URL"

    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->getProjectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string/jumbo v1, "INTENT_STRING_EXTRA_IMAGE_URL"

    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->getProjectCoverImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 416
    :cond_0
    return-void
.end method

.method public getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/behance/sdk/BehanceSDK;->behanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;-><init>()V

    .line 144
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/behance/sdk/BehanceSDK;->behanceSDKCustomResourcesOptions:Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    goto :goto_0
.end method

.method public getBehanceUserProfile(Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 608
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;-><init>()V

    .line 609
    iget-object v1, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v1}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getUserAdobeAccountId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 610
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Adobe account id not provided"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;->onEditProfileFailure(Ljava/lang/Exception;)V

    .line 637
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v1}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getUserAdobeAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;->setUserId(Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v1}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;->setClientId(Ljava/lang/String;)V

    .line 614
    new-instance v1, Lcom/behance/sdk/BehanceSDK$3;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/BehanceSDK$3;-><init>(Lcom/behance/sdk/BehanceSDK;Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;)V

    .line 634
    new-instance v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;

    invoke-direct {v2, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;)V

    .line 635
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v0}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK;->environment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-nez v0, :cond_0

    .line 669
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentProductionUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    .line 670
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK;->environment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    goto :goto_0
.end method

.method public getFileProviderAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/behance/sdk/BehanceSDK;->fileProvideAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectFeedFragment(Landroid/content/Context;Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;)Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 262
    invoke-virtual {p0, p1}, Lcom/behance/sdk/BehanceSDK;->initializeProjectViewWF(Landroid/content/Context;)V

    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    const-string/jumbo v1, "DISCOVER_PROJECTS_KEY_SELECTED_FILTERS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 265
    const-string/jumbo v1, "PROJECT_FEED_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;

    invoke-direct {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;-><init>()V

    .line 267
    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 268
    return-object v1
.end method

.method public getProjectFeedFragment(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;I)Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 273
    invoke-virtual {p0, p1}, Lcom/behance/sdk/BehanceSDK;->initializeProjectViewWF(Landroid/content/Context;)V

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    const-string/jumbo v1, "PROJECT_FEED_GALLERY_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 276
    const-string/jumbo v1, "PROJECT_FEED_GALLERY_ID"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string/jumbo v1, "PROJECT_FEED_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;

    invoke-direct {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;-><init>()V

    .line 279
    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 280
    return-object v1
.end method

.method public getUniversalHeader()Lcom/behance/sdk/network/BehanceNameValuePair;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK;->universalHeader:Lcom/behance/sdk/network/BehanceNameValuePair;

    return-object v0
.end method

.method public initialize(Lcom/behance/sdk/IBehanceSDKUserCredentials;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    .line 152
    invoke-static {p2}, Lcom/facebook/w;->a(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method public initialize(Lcom/behance/sdk/IBehanceSDKUserCredentials;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    .line 157
    invoke-direct {p0, p3}, Lcom/behance/sdk/BehanceSDK;->setEnvironment(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V

    .line 158
    invoke-static {p2}, Lcom/facebook/w;->a(Landroid/content/Context;)V

    .line 159
    return-void
.end method

.method public initialize(Lcom/behance/sdk/IBehanceSDKUserCredentials;Landroid/content/Context;Lcom/behance/sdk/network/BehanceNameValuePair;)V
    .locals 0

    .prologue
    .line 162
    iput-object p3, p0, Lcom/behance/sdk/BehanceSDK;->universalHeader:Lcom/behance/sdk/network/BehanceNameValuePair;

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/BehanceSDK;->initialize(Lcom/behance/sdk/IBehanceSDKUserCredentials;Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public initializeProjectViewWF(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/behance/sdk/BehanceSDK;->initializeFileUtils(Landroid/content/Context;)V

    .line 173
    invoke-static {p1}, Lcom/facebook/drawee/a/a/c;->a(Landroid/content/Context;)V

    .line 174
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/i/a/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->getImageLoaderConfig(Landroid/content/Context;)Lcom/i/a/b/j;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/i/a/b/g;->a(Lcom/i/a/b/j;)V

    .line 178
    :cond_0
    return-void
.end method

.method public launchAddProjectWorkFlow(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/BehanceSDK;->initializeForPublishProjectWorkflow(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;)V

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/ui/activities/BehanceSDKCreateProjectWFActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    const-string/jumbo v1, "Publish UX Start"

    const-string/jumbo v2, "Behance-Project"

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackSharingAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

.method public launchAddProjectWorkFlow(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 239
    new-instance v0, Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;-><init>()V

    .line 240
    invoke-virtual {v0, p2}, Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;->setNotificationHandlerActivityClass(Ljava/lang/Class;)V

    .line 241
    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;->setFacebookShareEnabled(Z)V

    .line 242
    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;->setTwitterShareEnabled(Z)V

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/behance/sdk/BehanceSDK;->launchAddProjectWorkFlow(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;)V

    .line 244
    return-void
.end method

.method public launchEditProfileWorkFlow(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKEditProfileOptions;Lcom/behance/sdk/IBehanceSDKEditProfileListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 582
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v0}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getUserAdobeAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 583
    invoke-interface {p3}, Lcom/behance/sdk/IBehanceSDKEditProfileListener;->onEditProfileFailure()V

    .line 595
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->setUserCredentials(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V

    .line 587
    invoke-virtual {v0, p3}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->setEditProfileListener(Lcom/behance/sdk/IBehanceSDKEditProfileListener;)V

    .line 588
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    if-eqz p2, :cond_1

    .line 590
    const-string/jumbo v1, "INTENT_EXTRA_BOOLEAN_ENABLE_ALTERNATE_IMAGE_SELECTION_SOURCES"

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKEditProfileOptions;->isEnableAlternateImageSelectionSources()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 592
    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 593
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public launchEditProfileWorkFlow(Landroid/content/Context;Lcom/behance/sdk/IBehanceSDKEditProfileListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/behance/sdk/BehanceSDK;->launchEditProfileWorkFlow(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKEditProfileOptions;Lcom/behance/sdk/IBehanceSDKEditProfileListener;)V

    .line 577
    return-void
.end method

.method public launchProjectDetailsActivity(Landroid/content/Context;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .prologue
    .line 211
    if-eqz p2, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Lcom/behance/sdk/BehanceSDK;->initializeProjectViewWF(Landroid/content/Context;)V

    .line 213
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    const-string/jumbo v1, "ARG_PROJECT_ID"

    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 220
    :cond_0
    return-void
.end method

.method public launchProjectDetailsActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .prologue
    .line 199
    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/behance/sdk/BehanceSDK;->initializeProjectViewWF(Landroid/content/Context;)V

    .line 201
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    const-string/jumbo v1, "ARG_PROJECT_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    :cond_0
    return-void
.end method

.method public launchProjectEditor(Landroid/content/Context;Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    if-eqz p2, :cond_0

    .line 231
    const-string/jumbo v1, "INTENT_EXTRA_PARAMS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 232
    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method public launchPublishProjectView(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKPublishProjectOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;,
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/BehanceSDK;->initializeForPublishProjectWorkflow(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;)V

    .line 288
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectImageModules()Ljava/util/List;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 292
    sget-object v3, Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;->VALID:Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/BehanceSDK;->validateImageForProject(Lcom/behance/sdk/project/modules/ImageModule;)Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/ImageModule;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 298
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;-><init>(Ljava/util/List;)V

    throw v0

    .line 301
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List of images cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_3
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectTitle()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x37

    if-le v0, v1, :cond_4

    .line 306
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;

    const-string/jumbo v1, "Behance project title cannot be more than 55 characters in length"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_4
    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectDescription()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_5

    .line 311
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;

    const-string/jumbo v1, "Behance project description cannot be more than 65535characters in length"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    const-string/jumbo v2, "INTENT_SERIALIZABLE_EXTRA_PROJECT_IMAGE_MODULES"

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectImageModules()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 318
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_TITLE"

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_DESC"

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_TAGS"

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string/jumbo v2, "INTENT_SERIALIZABLE_EXTRA_PROJECT_CREATIVE_FIELDS"

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getCreativeFieldDTOs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 322
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_CONTAINS_ADULT_CONTENT"

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->isProjectContainsAdultContent()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_PROJECT_COPYRIGHT_SETTINGS"

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectCopyrightSettings()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 324
    const-string/jumbo v0, "INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED"

    invoke-virtual {p2}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->isCCAssetBrowserDisabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    const-string/jumbo v0, "Publish UX Start"

    const-string/jumbo v2, "Behance-Project"

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackSharingAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 330
    return-void
.end method

.method public loadCreativeFields(Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 517
    new-instance v0, Lcom/behance/sdk/BehanceSDK$1;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/BehanceSDK$1;-><init>(Lcom/behance/sdk/BehanceSDK;Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;)V

    .line 528
    new-instance v1, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;

    invoke-direct {v1, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;-><init>(Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;)V

    .line 529
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->setUserCredentials(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V

    .line 530
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 531
    return-void
.end method

.method public publishProject(Ljava/lang/String;Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;

    const-string/jumbo v1, "Project ID cannot be null or empty."

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKPublishProjectAsyncTask;

    invoke-direct {v0, p2}, Lcom/behance/sdk/asynctasks/BehanceSDKPublishProjectAsyncTask;-><init>(Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)V

    .line 372
    new-instance v1, Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;

    invoke-direct {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;-><init>()V

    .line 373
    iget-object v2, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v2}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;->setClientId(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;->setProjectId(Ljava/lang/String;)V

    .line 375
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKPublishProjectAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 376
    return-void
.end method

.method public searchProjects(Lcom/behance/sdk/BehanceSDKSearchProjectOptions;Lcom/behance/sdk/IBehanceSDKSearchProjectListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 644
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;-><init>()V

    .line 645
    iget-object v1, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v1}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->setClientId(Ljava/lang/String;)V

    .line 646
    if-eqz p1, :cond_0

    .line 647
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->setSearchString(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->getPageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->setPageNumber(I)V

    .line 649
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->setFieldId(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->setCountry(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->setState(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->setCity(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->getTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->setTags(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->getTimeSpan()Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->setTimeSpan(Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;)V

    .line 655
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->getSortOption()Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->setSortOption(Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;)V

    .line 657
    :cond_0
    new-instance v1, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;

    invoke-direct {v1, p2}, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;-><init>(Lcom/behance/sdk/IBehanceSDKSearchProjectListener;)V

    .line 658
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 661
    return-void
.end method

.method public setBehanceSDKThemeResources(Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/behance/sdk/BehanceSDK;->setBehanceSDKCustomResourcesOptions(Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;)V

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/BehanceSDK;->setBehanceTheme(Z)V

    .line 169
    return-void
.end method

.method public setFileProvideAuthority(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    sput-object p1, Lcom/behance/sdk/BehanceSDK;->fileProvideAuthority:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public updateBehanceProfile(Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDK;->validateIfUserIsEntitledForBehanceWorkflow()V

    .line 538
    if-nez p1, :cond_0

    .line 539
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;

    const-string/jumbo v1, "Profile options object cannot be null."

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;-><init>()V

    .line 543
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setFirstName(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setLastName(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setCountry(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setState(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setCity(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setCompany(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->getOccupation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setOccupation(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->getWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setWebsite(Ljava/lang/String;)V

    .line 551
    new-instance v1, Lcom/behance/sdk/project/modules/ImageModule;

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->getImage()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/behance/sdk/project/modules/ImageModule;-><init>(Ljava/io/File;)V

    .line 552
    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setImage(Lcom/behance/sdk/project/modules/ImageModule;)V

    .line 554
    iget-object v1, p0, Lcom/behance/sdk/BehanceSDK;->credentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v1}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setClientId(Ljava/lang/String;)V

    .line 557
    new-instance v1, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;

    new-instance v2, Lcom/behance/sdk/BehanceSDK$2;

    invoke-direct {v2, p0, p2}, Lcom/behance/sdk/BehanceSDK$2;-><init>(Lcom/behance/sdk/BehanceSDK;Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;)V

    invoke-direct {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;)V

    .line 571
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 572
    return-void
.end method

.method public useBehanceTheme()Z
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/behance/sdk/BehanceSDK;->behanceTheme:Z

    return v0
.end method

.method public validateImageForProject(Lcom/behance/sdk/project/modules/ImageModule;)Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;
    .locals 1

    .prologue
    .line 602
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKUtils;->validateImageForProject(Lcom/behance/sdk/project/modules/ImageModule;)Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    move-result-object v0

    return-object v0
.end method

.method public validateImageForProject(Ljava/io/File;)Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;
    .locals 1

    .prologue
    .line 598
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKUtils;->validateImageForProject(Ljava/io/File;)Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    move-result-object v0

    return-object v0
.end method
