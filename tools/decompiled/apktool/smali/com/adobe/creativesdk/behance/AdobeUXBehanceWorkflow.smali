.class public Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;
.super Ljava/lang/Object;
.source "AdobeUXBehanceWorkflow.java"


# static fields
.field private static final CONTEXT_CANNOT_BE_NULL:Ljava/lang/String; = "Context cannot be null."

.field private static final REQUEST_CODE_STORAGE_ADD_PROJECT:I = 0x1

.field private static final REQUIRES_READ_PERMISSION:Ljava/lang/String; = "Requires Manifest.permission.READ_EXTERNAL_STORAGE permission"

.field private static sharedInstance:Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;


# instance fields
.field protected mAdobeCSDKUserDetails:Lcom/behance/sdk/IBehanceSDKUserCredentials;

.field protected mBehanceSDK:Lcom/behance/sdk/BehanceSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->sharedInstance:Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    .line 111
    new-instance v0, Lcom/adobe/creativesdk/behance/AdobeBehanceUserDetails;

    invoke-direct {v0}, Lcom/adobe/creativesdk/behance/AdobeBehanceUserDetails;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mAdobeCSDKUserDetails:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    .line 112
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    .line 113
    return-void
.end method

.method public static addImageToProject(Ljava/lang/String;Ljava/io/File;Lcom/adobe/creativesdk/behance/IAdobeBehanceADDProjectModuleListener;Landroid/content/Context;)V
    .locals 2
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
    .line 536
    if-nez p3, :cond_0

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p0, p1, p2}, Lcom/behance/sdk/BehanceSDK;->addImageToProject(Ljava/lang/String;Ljava/io/File;Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;)V

    .line 540
    return-void
.end method

.method public static cancelActivePublishProject(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ID of the publish request cannot be empty or null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p1, p0}, Lcom/behance/sdk/BehanceSDK;->cancelActivePublishProject(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private static checkPermission(Landroid/content/Context;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-static {p1, p0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getPermissionFromRequestCode(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 90
    if-eqz v4, :cond_2

    array-length v0, v4

    if-lez v0, :cond_2

    .line 91
    array-length v5, v4

    move v3, v2

    move v0, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 92
    if-eqz v0, :cond_0

    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 91
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 92
    goto :goto_1

    :cond_1
    move v1, v0

    .line 95
    :cond_2
    return v1
.end method

.method public static createProjectDraft(Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;Lcom/adobe/creativesdk/behance/IAdobeBehanceCreateProjectDraftListener;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 465
    if-nez p2, :cond_0

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    if-nez p1, :cond_1

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "IAdobeBehanceCreateProjectDraftListener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    const/4 v0, 0x0

    .line 474
    if-eqz p0, :cond_2

    .line 475
    new-instance v0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;-><init>()V

    .line 476
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->getProjectTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->setProjectTitle(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->getProjectDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->setProjectDescription(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->getProjectTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->setProjectTags(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->getProjectTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->setProjectTitle(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->getProjectCopyrightSettings()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->setProjectCopyrightSettings(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 481
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->isProjectContainsAdultContent()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->setProjectContainsAdultContent(Z)V

    .line 482
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->getProjectCreativeFields()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->setCreativeFields(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->getProjectCoverImage()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->setCoverImage(Ljava/io/File;)V

    .line 485
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v1, v0, p1}, Lcom/behance/sdk/BehanceSDK;->createProjectDraft(Lcom/behance/sdk/BehanceSDKProjectDraftOptions;Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;)V

    .line 487
    return-void
.end method

.method public static customizePublishNotifications(Lcom/adobe/creativesdk/behance/AdobeBehanceCustomizationOptions;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    if-nez p0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AdobeBehanceCustomizationOptions cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceCustomizationOptions;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDK;->setBehanceSDKThemeResources(Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;)V

    .line 166
    return-void
.end method

.method public static displayPublishProjectSuccessView(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    if-nez p0, :cond_1

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "BehanceSDKPublishProjectStatusDTO cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p1, p0}, Lcom/behance/sdk/BehanceSDK;->displayPublishProjectSuccessView(Landroid/content/Context;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 358
    return-void
.end method

.method public static getBehanceUserProfile(Lcom/adobe/creativesdk/behance/IAdobeBehanceSDKGetUserProfileListener;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .prologue
    .line 435
    if-nez p0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "IAdobeBehanceSDKGetUserProfileListener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    if-nez p1, :cond_1

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/BehanceSDK;->getBehanceUserProfile(Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;)V

    .line 443
    return-void
.end method

.method public static getCreativeFields(Lcom/adobe/creativesdk/behance/IAdobeBehanceGetCreativeFieldsListener;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 631
    if-nez p1, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/BehanceSDK;->loadCreativeFields(Lcom/behance/sdk/IBehanceSDKGetCreativeFieldsListener;)V

    .line 635
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->sharedInstance:Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    invoke-direct {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->sharedInstance:Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    .line 126
    sget-object v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->sharedInstance:Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->initializeBehanceSDK(Landroid/content/Context;)V

    .line 128
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->sharedInstance:Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    return-object v0
.end method

.method private static getPermissionFromRequestCode(ILandroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    packed-switch p0, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 102
    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    .line 70
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 71
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 72
    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    .line 73
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 74
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    const/4 v0, 0x1

    .line 82
    :cond_0
    :goto_1
    return v0

    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private initializeBehanceSDK(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    iget-object v1, p0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mAdobeCSDKUserDetails:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/behance/sdk/BehanceSDK;->initialize(Lcom/behance/sdk/IBehanceSDKUserCredentials;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V

    .line 119
    return-void
.end method

.method public static launchAddProject(Lcom/adobe/creativesdk/behance/AdobeBehanceAddProjectWorkflowOptions;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/adobe/creativesdk/behance/BehanceSDKSecurityException;
        }
    .end annotation

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    if-nez p0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AdobeBehanceAddProjectWorkflowOptions cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->checkPermission(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    new-instance v0, Lcom/adobe/creativesdk/behance/BehanceSDKSecurityException;

    const-string/jumbo v1, "Requires Manifest.permission.READ_EXTERNAL_STORAGE permission"

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/behance/BehanceSDKSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceAddProjectWorkflowOptions;->getAddProjectWorkflowOptions()Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/behance/sdk/BehanceSDK;->launchAddProjectWorkFlow(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKAddProjectWorkflowOptions;)V

    .line 235
    return-void
.end method

.method public static launchAddProject(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/adobe/creativesdk/behance/BehanceSDKSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->checkPermission(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lcom/adobe/creativesdk/behance/BehanceSDKSecurityException;

    const-string/jumbo v1, "Requires Manifest.permission.READ_EXTERNAL_STORAGE permission"

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/behance/BehanceSDKSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p1, p0}, Lcom/behance/sdk/BehanceSDK;->launchAddProjectWorkFlow(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    return-void
.end method

.method public static launchBehanceProjectEditor(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Landroid/content/Context;)V
    .locals 2
    .param p0    # Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    if-nez p0, :cond_1

    .line 652
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/behance/sdk/BehanceSDK;->launchProjectEditor(Landroid/content/Context;Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)V

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p1, p0}, Lcom/behance/sdk/BehanceSDK;->launchProjectEditor(Landroid/content/Context;Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)V

    goto :goto_0
.end method

.method public static launchEditProfile(Lcom/adobe/creativesdk/behance/IAdobeBehanceSDKEditProfileListener;Lcom/adobe/creativesdk/behance/AdobeBehanceEditProfileOptions;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .prologue
    .line 409
    if-nez p2, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    if-nez p1, :cond_1

    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AdobeBehanceEditProfileOptions cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/behance/AdobeBehanceEditProfileOptions;->getBehanceSDKEditProfileOptions()Lcom/behance/sdk/BehanceSDKEditProfileOptions;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p0}, Lcom/behance/sdk/BehanceSDK;->launchEditProfileWorkFlow(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKEditProfileOptions;Lcom/behance/sdk/IBehanceSDKEditProfileListener;)V

    .line 416
    return-void
.end method

.method public static launchProjectViewerActivity(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    if-nez p0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "BehanceSDKPublishProjectStatusDTO cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p1, p0}, Lcom/behance/sdk/BehanceSDK;->launchProjectDetailsActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public static launchPublishProject(Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/behance/AdobeBehancePublishInvalidImageException;,
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    if-nez p0, :cond_1

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AdobeBehanceSDKPublishProjectOptions cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->getPublishProjectWorkflowOptions()Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/behance/sdk/BehanceSDK;->launchPublishProjectView(Landroid/content/Context;Lcom/behance/sdk/BehanceSDKPublishProjectOptions;)V
    :try_end_0
    .catch Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Lcom/adobe/creativesdk/behance/AdobeBehancePublishInvalidImageException;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/behance/AdobeBehancePublishInvalidImageException;-><init>(Lcom/behance/sdk/exception/BehanceSDKInvalidImagesException;)V

    throw v1
.end method

.method public static publishProject(Ljava/lang/String;Lcom/adobe/creativesdk/behance/IAdobeBehanceProjectPublishListener;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    if-nez p2, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p0, p1}, Lcom/behance/sdk/BehanceSDK;->publishProject(Ljava/lang/String;Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)V

    .line 513
    return-void
.end method

.method public static searchProjects(Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;Lcom/adobe/creativesdk/behance/IAdobeBehanceSearchProjectListener;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;
        }
    .end annotation

    .prologue
    .line 560
    if-nez p1, :cond_0

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "IAdobeBehanceSearchProjectListener instance cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    if-nez p2, :cond_1

    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_1
    new-instance v0, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;-><init>()V

    .line 568
    if-eqz p0, :cond_2

    .line 569
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->setSearchString(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->getPageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->setPageNumber(I)V

    .line 571
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->getField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->setField(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->setCountry(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->setState(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->setCity(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->getTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->setTags(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->getTimeSpan()Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->setTimeSpan(Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;)V

    .line 577
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSearchProjectOptions;->getSortOption()Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKSearchProjectOptions;->setSortOption(Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;)V

    .line 579
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v1, v0, p1}, Lcom/behance/sdk/BehanceSDK;->searchProjects(Lcom/behance/sdk/BehanceSDKSearchProjectOptions;Lcom/behance/sdk/IBehanceSDKSearchProjectListener;)V

    .line 581
    return-void
.end method

.method public static setFileProviderAuthority(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    if-nez p0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fileProvider authority cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/BehanceSDK;->setFileProvideAuthority(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static updateBehanceProfile(Lcom/adobe/creativesdk/behance/AdobeBehanceUpdateProfileOptions;Lcom/adobe/creativesdk/behance/IAdobeBehanceUpdateProfileListener;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotEntitledException;,
            Lcom/behance/sdk/exception/BehanceSDKInvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 601
    if-nez p0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AdobeBehanceUpdateProfileOptions cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_0
    if-nez p2, :cond_1

    .line 605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_1
    new-instance v0, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;-><init>()V

    .line 608
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceUpdateProfileOptions;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->setFirstName(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceUpdateProfileOptions;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->setLastName(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceUpdateProfileOptions;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->setCountry(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceUpdateProfileOptions;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->setState(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceUpdateProfileOptions;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->setCity(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceUpdateProfileOptions;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->setCompany(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceUpdateProfileOptions;->getOccupation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->setOccupation(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceUpdateProfileOptions;->getWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->setWebsite(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceUpdateProfileOptions;->getImage()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;->setImage(Ljava/io/File;)V

    .line 618
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v1, v0, p1}, Lcom/behance/sdk/BehanceSDK;->updateBehanceProfile(Lcom/behance/sdk/BehanceSDKUpdateProfileOptions;Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;)V

    .line 619
    return-void
.end method

.method public static validateImageForProject(Ljava/io/File;Landroid/content/Context;)Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;
    .locals 2

    .prologue
    .line 382
    if-nez p0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "File cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    if-nez p1, :cond_1

    .line 387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->getInstance(Landroid/content/Context;)Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/behance/AdobeUXBehanceWorkflow;->mBehanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/BehanceSDK;->validateImageForProject(Ljava/io/File;)Lcom/behance/sdk/util/BehanceSDKPublishImageValidationResult;

    move-result-object v0

    return-object v0
.end method
